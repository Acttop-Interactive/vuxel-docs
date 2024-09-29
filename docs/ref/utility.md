# Utility Functions

The Utility module provides various helper functions.

## Utility.CreateApp(UIFrame)

Initializes a new app with the specified root frame, creating a new `ScreenGui`.

```lua
local rootFrame = Instance.new("Frame")
local app = Vuxel.Utility.CreateApp(rootFrame)
```

## Utility.Computed(callback, ...)

Creates a computed property that automatically updates when its dependencies change.

::: tip
You can also use `Vuxel.Computed` instead!
:::

```lua
local name = Vuxel.State.new("John")

local greeting = Vuxel.Utility.Computed(function()
    return "Hello, " .. name:Get()
end, name)
```