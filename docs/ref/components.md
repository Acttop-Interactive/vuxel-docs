# Components

The Components module allows you to define UI elements and their properties declaratively.

## Components.New(class, props, self) -> `Instance`

### Parameters
1. class
    - Type: `string`
    - Required: `Yes`
    - Description: The Roblox UI class to create (e.g., `"Frame"`, `"TextLabel"`).
2. props
    - Type: `table`
    - Required: `Yes`
    - Description: A table containing properties, events, children, and lifecycle hooks for the component.
3. self
    - Type: `table`
    - Required: `No`
    - Description: Optional table to store component references (usually the parent component’s `self`).

### Returns
1. Instance
    - Type: `Instance`
    - Always: `Yes`
    - Description: The newly created Roblox UI component instance.

### Description

Creates a new UI component of the specified class and applies the given properties.

```lua
local myButton = Vuxel.Components.New("TextButton", {
    Text = "Click Me!",
    Size = UDim2.new(0, 100, 0, 50)
})
```

## Components.Template(template, parentSelf) -> `Instance`

::: tip
You can also use `Vuxel.Template` instead!
:::

### Parameters
1. template
    - Type: `table`
    - Required: `Yes`
    - Description: A table-based component template describing the UI structure and properties.
2. parentSelf
    - Type: `table`
    - Required: `No`
    - Description: Optional table from the parent component to store child component references.

### Returns
1. Instance
    - Type: `Instance`
    - Always: `Yes`
    - Description: The root instance created from the template, with all nested children.

### Description

Creates a nested UI component structure from a `table-based template`.

```lua
local template = {
    Class = "Frame",
    Size = UDim2.new(0, 200, 0, 200),
    Children = {
        {
            Class = "TextLabel",
            Text = "Hello, Vuxel!",
            Size = UDim2.new(0, 100, 0, 50)
        }
    }
}

local frame = Vuxel.Components.Template(template)
```

## Components.RegisterLifecycleHook(instance, hookName, callback) -> 'void'

::: tip
You can also use `Vuxel.RegisterLifecycleHook` instead!
:::

### Parameters
1. instance
    - Type: `Instance`
    - Required: `Yes`
    - Description: The component instance on which to register the lifecycle hook.
2. hookName
    - Type: `string`
    - Required: `Yes`
    - Description: The name of the lifecycle hook (e.g., `"onMounted"`, "`onDestroyed"`).
3. callback
    - Type: `function`
    - Required: `Yes`
    - Description: The function to call when the lifecycle hook is triggered.

### Returns
1. void
    - Type: `nil`
    - Always: `Yes`
    - Description: No return value; lifecycle hook is registered internally.

### Description

Registers a lifecycle hook (onMounted, onDestroyed, etc.) for a component.

```lua
Vuxel.Components.RegisterLifecycleHook(myButton, "onMounted", function()
    print("Button mounted!")
end)
```

## Components.RemoveComponent(instance) -> 'void'

::: tip
You can also use `Vuxel.RemoveComponent` instead!
:::

### Parameters
1. instance
    - Type: `Instance`
    - Required: `Yes`
    - Description: The component instance to remove, triggering its `"onDestroyed"` lifecycle hook if it exists.

### Returns
1. void
    - Type: `nil`
    - Always: `Yes`
    - Description: No return value; lifecycle hook is registered internally.

### Description

Removes a component and calls its onDestroyed hook.

```lua
Vuxel.Components.RemoveComponent(myButton)
```