# Utility Functions

The Utility module provides various helper functions.

## Utility.CreateApp(UIFrame, screenGui (optional))

Initializes a new app with the specified root frame, if no screenGui is given it will create a new `ScreenGui` and parent it to the LocalPlayer's PlayerGui.

::: tip
You can also use `Vuxel.CreateApp` instead!
:::

::: warning
It is recomended to provide an already templated ui, use `Vuxel.Template` before creating an app if providing a table-based template, if not templated, CreateApp will template it for you but will trow a warning!
:::

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