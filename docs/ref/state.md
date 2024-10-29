# State

The State module is used to create reactive state objects that can be bound to UI components.

## State.new(initialValue) -> `State`

### Parameters
1. initialValue
    - Type: `any`
    - Required: `Yes`
    - Description: The initial value for the state. Cannot be `nil`.

### Returns
1. State
    - Type: `State`
    - Always: `Yes`
    - Description: A new `State` object initialized with the given value.

### Description

Creates a new state object.

```lua
local state = Vuxel.State.new(0)
```

## State:Set(newValue) -> `void`

### Parameters
1. newValue
    - Type: `any`
    - Required: `Yes`
    - Description: The new value for the state. Cannot be `nil`.

### Returns
1. void
    - Type: `nil`
    - Always: `Yes`
    - Description: No return value; the state is updated internally.

### Description

Updates the state with a new value and triggers any listeners.

```lua
state:Set(5) -- State value is now 5
```

## State:Get() -> `Value`

### Parameters
- None

### Returns
1. Value
    - Type: `any`
    - Always: `Yes`
    - Description: The current value of the state.

### Description

Returns the current state value.

```lua
print(state:Get()) -- Outputs: 5
```

## State:BindTo(instance, property) -> `void`

### Parameters
1. instance
    - Type: `Instance`
    - Required: `Yes`
    - Description: The Roblox instance to bind the state to.
1. property
    - Type: `string`
    - Required: `Yes`
    - Description: The property of the instance to update based on state changes.

### Returns
1. void
    - Type: `nil`
    - Always: `Yes`
    - Description: No return value; binds the state to the specified instance property.

### Description

Binds a state to a UI property, updating the state when the property changes.

```lua
state:BindTo(myTextLabel, "Text")
```