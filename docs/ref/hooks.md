# Hooks

The Hooks module provides hooks similar to React.js for state and effect management.

## Hooks.useState(initialValue)

Creates a new reactive state variable.

```lua
local count = Vuxel.Hooks.useState(0)
```

## Hooks.useEffect(state, callback)

Executes the callback whenever the given state changes.

```lua
Vuxel.Hooks.useEffect(count, function(newCount)
    print("Count changed to", newCount)
end)
```