# Utility Functions

The Utility module provides various helper functions.

## Utility.CreateApp(template, screenGui) -> `ScreenGui`

::: tip
You can also use `Vuxel.CreateApp` instead!
:::

### Parameters
1. template
    - Type: `{Table-based Component} | Instance`
    - Required: `Yes`
    - Description: The component template to be rendered as the root element.
2. screenGui
    - Type: `Instance (ScreenGui) | nil`
    - Required: `No`
    - Description: Optional `ScreenGui` instance to use as the root. If not provided, a new `ScreenGui` is created.

### Returns
1. ScreenGui
    - Type: `Instance (ScreenGui)`
    - Always: `Yes`
    - Description: The root `ScreenGui` that contains the rendered component tree.

### Description

Initializes a new app with the specified root frame, if no screenGui is given it will create a new `ScreenGui` and parent it to the LocalPlayer's PlayerGui. Passed screenGui's will get an added reference as "`root`". Get it using `Vuxel.GetRef("root")`!

::: warning
It is recomended to provide an already templated ui, use `Vuxel.Template` before creating an app if providing a table-based template, if not templated, CreateApp will template it for you but will trow a warning!
:::

```lua
local rootFrame = Instance.new("Frame")
local app = Vuxel.Utility.CreateApp(rootFrame)
```

## Utility.Computed(callback, ...dependencies) -> `Computed`

::: tip
You can also use `Vuxel.Computed` instead!
:::

### Parameters
1. callback
    - Type: `function`
    - Required: `Yes`
    - Description: The function to compute the derived state value based on dependencies.
2. ...dependencies
    - Type: `State` (one or more)
    - Required: `Yes`
    - Description: One or more reactive `State` objects to serve as dependencies for the computed property.

### Returns
1. Computed
    - Type: `Computed (custom type)`
    - Always: `Yes`
    - Description: A computed state object that updates when any dependency changes.

### Description

Creates a computed property that automatically updates when its dependencies change.

```lua
local name = Vuxel.State.new("John")

local greeting = Vuxel.Utility.Computed(function()
    return "Hello, " .. name:Get()
end, name)
```