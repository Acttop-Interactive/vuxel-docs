# State

The State module is used to create reactive state objects that can be bound to UI components.

## State.new(initialValue)
Creates a new state object.

```lua
local state = Vuxel.State.new(0)
```

## State:Set(newValue)
Updates the state with a new value and triggers any listeners.

```lua
state:Set(5) -- State value is now 5
```

## State:Get()
Returns the current state value.

```lua
print(state:Get()) -- Outputs: 5
```

## State:BindTo(instance, property)
Binds a state to a UI property, updating the state when the property changes.

```lua
state:BindTo(myTextLabel, "Text")
```