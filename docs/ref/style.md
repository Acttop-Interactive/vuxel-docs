# Style

The Style module is used to re-create CSS way of styling UI components with scoped, global  and reusable class-based styles.

## Style.DefineGlobal(styles) -> `void`

### Parameters
1. styles
    - Type: `table`
    - Required: `Yes`
    - Description: A table defining global styles, where each key is a component name, and the value is a table of properties to apply globally to that component type.

### Returns
1. void
    - Type: `nil`
    - Always: `Yes`
    - Description: No return value; the global styles are added to the `globalStyles` table for later retrieval.

### Description

Creates and defines global style properties for all UI components of the same class.

```lua
Vuxel.Style.DefineGlobal({
    Frame = { BackgroundColor3 = Color3.fromRGB(255, 255, 255) }
})
```

## Style.DefineScope(componentName, styles) -> `void`

### Parameters
1. componentName
    - Type: `string`
    - Required: `Yes`
    - Description: The name of the component to which scoped styles will be applied.
2. styles
    - Type: `table`
    - Required: `Yes`
    - Description: A table of properties and values that will be applied as scoped styles for the specified component.

### Returns
1. void
    - Type: `nil`
    - Always: `Yes`
    - Description: No return value; scoped styles are added to the `scopedStyles` table for the specific component.

### Description

Creates and defines scoped style properties for one UI component.

```lua
Vuxel.Style.DefineScope("Button", {
    BackgroundColor3 = Color3.fromRGB(0, 170, 255),
    Size = UDim2.new(0, 200, 0, 50),
    UICorner = { CornerRadius = UDim.new(0, 10) }
})
```

## Style.DefineClass(className, properties) -> `void`

### Parameters
1. className
    - Type: `string`
    - Required: `Yes`
    - Description: The name of the reusable class-based style.
2. properties
    - Type: `table`
    - Required: `Yes`
    - Description: A table containing properties and values for the class-based style.

### Returns
1. void
    - Type: `nil`
    - Always: `Yes`
    - Description: No return value; class-based style is stored in the `classes` table. If a class with the same name already exists, a warning is displayed, and the style is overwritten.

### Description

Creates and defines a class style for later use.

```lua
Vuxel.Style.DefineClass("Primary", {
    BackgroundColor3 = Color3.fromRGB(0, 123, 255)
})
```

## Style.GetStyle(componentName, classNames) -> `appliedStyle`

### Parameters
1. componentName
    - Type: `string`
    - Required: `Yes`
    - Description: The name of the component whose style should be retrieved.
2. classNames
    - Type: `table | nil`
    - Required: `No`
    - Description: An optional array of class names to apply to the component, with class-based styles overriding global and scoped styles.

### Returns
1. appliedStyle
    - Type: `table`
    - Always: `Yes`
    - Description: A table containing the final set of properties and values applied to the component, with class-based styles taking priority, followed by scoped, and finally global styles.

### Description

Get's all the applied styles of a component.

```lua
print(Vuxel.Style.GetStyle("Button"))
```