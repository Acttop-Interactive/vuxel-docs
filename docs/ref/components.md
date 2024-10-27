# Components

The Components module allows you to define UI elements and their properties declaratively.

## Components.New(class, props)

Creates a new UI component of the specified class and applies the given properties.

```lua
local myButton = Vuxel.Components.New("TextButton", {
    Text = "Click Me!",
    Size = UDim2.new(0, 100, 0, 50)
})
```

## Components.Template(template)

Creates a nested UI component structure from a `table-based template`.

::: tip
You can also use `Vuxel.Template` instead!
:::

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

## Components.RegisterLifecycleHook(instance, hookName, callback)

Registers a lifecycle hook (onMounted, onDestroyed, etc.) for a component.

::: tip
You can also use `Vuxel.RegisterLifecycleHook` instead!
:::

```lua
Vuxel.Components.RegisterLifecycleHook(myButton, "onMounted", function()
    print("Button mounted!")
end)
```

## Components.RemoveComponent(instance)

Removes a component and calls its onDestroyed hook.

::: tip
You can also use `Vuxel.RemoveComponent` instead!
:::

```lua
Vuxel.Components.RemoveComponent(myButton)
```