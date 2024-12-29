# Component Structure

Vuxel components are defined in a table-based format, where each component’s structure, properties, and behaviors are specified within a Lua table. This approach ensures a clean and modular structure, making it easier to create nested UI components and manage complex interfaces.

## Key Concepts

### Component Tables

Each component is represented as a table, with keys like `Class`, `Name`, and specific properties such as `Size`, `Text`, or `BackgroundColor3`. Nested components can be included within the `Children` key, creating a tree-like structure.

**Example**:

```lua
{
    Class = "Frame",
    Name = "MainPanel",
    Size = UDim2.new(0, 200, 0, 400),
    BackgroundColor3 = Color3.fromRGB(30, 30, 30),
    Children = {
        {
            Class = "TextLabel",
            Name = "TitleLabel",
            Text = "Welcome to the Panel",
            FontSize = Enum.FontSize.Size18,
            TextColor3 = Color3.new(1, 1, 1)
        }
    }
}
```

### Nesting Components with Children

You can nest components inside each other using the `Children` property, which accepts an array of component tables. This allows you to build complex layouts while maintaining organized code.

**Example**:

```lua
{
    Class = "Frame",
    Name = "Container",
    Children = {
        {
            Class = "TextLabel",
            Text = "Header",
        },
        {
            Class = "TextButton",
            Text = "Submit",
        }
    }
}
```

### Property and Event Handling

Each component table can contain properties specific to the component type, such as `Text` for a `TextLabel` or `BackgroundColor3` for a `Frame`. Event handling can be included in the `Events` property to allow interaction within the UI.

**Example**:

```lua
{
    Class = "TextButton",
    Text = "Click me!",
    Events = {
        MouseButton1Click = function()
            print("Button clicked!")
        end
    }
}
```

### Component Styles with `Style` and `ClassNames`

The `Style` and `ClassNames` properties allow for custom and reusable styling:

- `Style`: Applies inline, component-specific styles.
- `ClassNames`: Applies predefined classes from the `Style` module.

**Example**:

```lua
{
    Class = "TextButton",
    Name = "StyledButton",
    Style = { BackgroundColor3 = Color3.new(0.2, 0.6, 0.8) },
    ClassNames = {"PrimaryButton"}
}
```
