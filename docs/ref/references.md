# References

The References module makes it easy to store and retrive referenses to components or ui elements.

## References.Add(name, component) -> `void`

::: tip
Use `Vuxel.SetRef` for more secure handling!
:::

### Parameters
1. name
    - Type: `string`
    - Required: `Yes`
    - Description: The unique name for the reference.
2. component
    - Type: `Instance`
    - Required: `Yes`
    - Description: The component instance to store as a reference.

### Returns
1. void
    - Type: `nil`
    - Always: `Yes`
    - Description: No return value; adds the component to the references.

### Description

Add a reference by a unique name.

```lua
Vuxel.References.Add(name, component)
```

## References.Get(name) -> `Instance`

::: tip
Use `Vuxel.GetRef` for more secure handling!
:::

### Parameters
1. name
    - Type: `string`
    - Required: `Yes`
    - Description: The name of the reference to retrieve.

### Returns
1. Instance
    - Type: `Instance | nil`
    - Always: `No`
    - Description: The component instance associated with `name`, or `nil` if not found.

### Description

Get a reference by a unique name.

```lua
Vuxel.References.Get(name)
```

## References.Remove(name) -> `void`

### Parameters
1. name
    - Type: `string`
    - Required: `Yes`
    - Description: The name of the reference to remove.

### Returns
1. void
    - Type: `nil`
    - Always: `Yes`
    - Description: No return value; removes the specified reference.

### Description

Remove a reference by a unique name.

```lua
Vuxel.References.Remove(name)
```

## References.Clear() -> `void`

### Parameters
- None

### Returns
1. void
    - Type: `nil`
    - Always: `Yes`
    - Description: No return value; clears all references.

### Description

Removes all references for cleanup.

```lua
Vuxel.References.Clear()
```

## References.ListAll(printPrefix) -> `void`

### Parameters
1. printPrefix
    - Type: `string`
    - Required: `No`
    - Description: Optional prefix to print before each reference, used for debugging.

### Returns
1. void
    - Type: `nil`
    - Always: `Yes`
    - Description: No return value; prints all references with an optional prefix.

### Description

Prints all references for debug.

```lua
Vuxel.References.ListAll()
```