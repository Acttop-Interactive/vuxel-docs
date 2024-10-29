# Hooks

The Hooks module provides hooks similar to React.js for state and effect management.

## Hooks.useState(initialValue) -> `State`

### Parameters
1. initialValue
    - Type: `any`
    - Required: `Yes`
    - Description: Initial value for the state hook.

### Returns
1. State
    - Type: `State`
    - Always: `Yes`
    - Description: A new `State` object initialized with the given value.

### Description

Creates a new reactive state variable.

```lua
local count = Vuxel.Hooks.useState(0)
```

## Hooks.useEffect(state, callback) -> `void`

### Parameters
1. state
    - Type: `State`
    - Required: `Yes`
    - Description: The `State` object to monitor for changes.
2. callback
    - Type: `function`
    - Required: `Yes`
    - Description: The function to call when `state` changes.

### Returns
1. void
    - Type: `nil`
    - Always: `Yes`
    - Description: No return value; registers a callback that triggers when the state changes.

### Description

Executes the callback whenever the given state changes.

```lua
Vuxel.Hooks.useEffect(count, function(newCount)
    print("Count changed to", newCount)
end)
```