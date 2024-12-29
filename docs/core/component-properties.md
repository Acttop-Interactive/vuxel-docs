# Component Properties

In Vuxel, components can be configured with various properties that define their behavior, style, and structure. These properties are the backbone of table-based component definitions, making it easy to handle events, styling, nested elements, and lifecycle hooks within a single component.

## Available Properties

### 1. `Lifecycle`

- **Purpose**: Allows components to handle setup and teardown with hooks like `onMounted` and `onDestroyed`.
- **Usage**:
  - **onMounted**: Triggered when the component is parented in the UI hierarchy.
  - **onDestroyed**: Triggered when the component is removed.
  
**Example**:

```lua
{
    Class = "Frame",
    Name = "MainPanel",
    Lifecycle = {
        onMounted = function(self)
            print("MainPanel mounted!")
        end,
        onDestroyed = function(self)
            print("MainPanel destroyed!")
        end
    }
}
```

### 2. `Events`

- **Purpose**: Define event handlers directly within a component, allowing you to bind functions to Roblox events like `MouseButton1Click`, `MouseEnter`, etc.
- **Usage**: Use `Events` as a table, where each key is the event name, and the value is the function to execute when the event fires.

**Example**:

```lua
{
    Class = "TextButton",
    Text = "Click me!",
    Events = {
        MouseButton1Click = function(self)
            print("Button clicked!")
        end
    }
}
```

### 3. `Children`

- **Purpose**: Allows you to define nested components within a parent component.
- **Usage**: Use `Children` as a table containing sub-components, each with their own properties and nested structures.

**Example**:

```lua
{
    Class = "Frame",
    Name = "MainFrame",
    Children = {
        {
            Class = "TextLabel",
            Text = "Nested Label"
        },
        {
            Class = "TextButton",
            Text = "Click Me"
        }
    }
}
```

### 4. `Style`

- **Purpose**: Apply inline styles directly to a component, enabling control over component appearance.
- **Usage**: Use the `Style` property with a table of properties that will override global and scoped styles.

**Example**:

```lua
{
    Class = "Frame",
    Name = "StyledFrame",
    Style = {
        BackgroundColor3 = Color3.new(0.5, 0.5, 0.5),
        BorderSizePixel = 2
    }
}
```

### 5. `ClassNames`

- **Purpose**: Allows the application of reusable, predefined styles via class-based styling.
- **Usage**: Define classes in `Style.DefineClass`, then apply them by adding `ClassNames` as a table of class names.

**Example**:

```lua
Vuxel.Style.DefineClass("PrimaryButton", {
    BackgroundColor3 = Color3.new(0, 0.5, 1),
    TextColor3 = Color3.new(1, 1, 1),
})

local buttonTemplate = {
    Class = "TextButton",
    Text = "Primary Action",
    ClassNames = {"PrimaryButton"}
}
```
