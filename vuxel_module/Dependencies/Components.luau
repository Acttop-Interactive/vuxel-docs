local Components = {}
local State = require(script.Parent.State)
local Utility = require(script.Parent.Utility)
local References = require(script.Parent.References)

local lifecycleRegistry = setmetatable({}, { __mode = "k" }) -- Weak table to store lifecycle hooks

-- Helper function to apply properties and bindings to instances
local function applyProps(instance, props, self)
	for prop, value in pairs(props) do
		if prop ~= "Class" and prop ~= "Children" and prop ~= "Events" and prop ~= "Name" then
			if typeof(value) == "table" and (getmetatable(value) == State or value.__computed) then
				-- Automatically bind to the state or computed state and update when the value changes
				value.Changed.Event:Connect(function(newValue)
					instance[prop] = newValue
				end)
				instance[prop] = value:Get() -- Assign the initial value
			else
				instance[prop] = value -- Directly assign normal properties
			end
		end
	end
end

-- Function to register a lifecycle hook on a component
local function RegisterLifecycleHook(instance, hookName, callback)
	if not lifecycleRegistry[instance] then
		lifecycleRegistry[instance] = {}
	end
	lifecycleRegistry[instance][hookName] = callback
end

-- Function to call a specific lifecycle hook
local function CallLifecycleHook(instance, hookName, self)
	local lifecycle = lifecycleRegistry[instance]
	if lifecycle and lifecycle[hookName] then
		lifecycle[hookName](self) -- Pass `self` to the lifecycle hook
	end
end

-- Function to remove a component and call its destruction hook
local function RemoveComponent(instance)
	CallLifecycleHook(instance, "onDestroyed")
	instance:Destroy()
	lifecycleRegistry[instance] = nil -- Clean up the weak table reference
end

-- Function to create a new UI component
function Components.New(class, props, self)
	local instance = Instance.new(class)
	applyProps(instance, props, self)

	-- Defer the `onMounted` call until after the component is parented
	instance.AncestryChanged:Connect(function(_, parent)
		if parent then
			CallLifecycleHook(instance, "onMounted", self)
		end
	end)

	return instance
end

-- Modified `Template` function to include `self` scoping
function Components.Template(template, parentSelf)
	-- Create a new `self` table to hold references to child components
	local self = parentSelf or {}

	-- Create the main component
	local className = template.Class or "Frame"  -- Default to "Frame" if no class is specified
	local instance = Components.New(className, template, self)

	-- Store the instance in `self` using its name (if provided)
	if template.Name then
		self[template.Name] = instance
		References.Add(template.Name, instance)
	end

	-- Recursively create and store children components in `self`
	if template.Children then
		for _, childTemplate in ipairs(template.Children) do
			local childInstance = Components.Template(childTemplate, self)
			childInstance.Parent = instance
		end
	end

	-- Apply event handlers if specified and pass `self` as an argument
	if template.Events then
		for event, handler in pairs(template.Events) do
			if instance[event] then
				instance[event]:Connect(function()
					handler(self) -- Pass the `self` table to the event handler
				end)
			end
		end
	end

	-- Register lifecycle hooks with `self` reference
	if template.Lifecycle then
		for hookName, callback in pairs(template.Lifecycle) do
			RegisterLifecycleHook(instance, hookName, function()
				callback(self)
			end)
		end
	end

	return instance
end

-- Expose lifecycle management and component removal functions
Components.RegisterLifecycleHook = RegisterLifecycleHook
Components.RemoveComponent = RemoveComponent

return Components
