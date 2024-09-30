# References

The References module makes it easy to store and retrive referenses to components or ui elements.

## References.Add

```lua
Vuxel.References.Add(name, component)
```

Add a reference by a unique name.

::: tip
You can also use `Vuxel.SetRef` for more secure handling!
:::

## References.Get

```lua
Vuxel.References.Get(name)
```

Get a reference by a unique name.

::: tip
You can also use `Vuxel.GetRef` for more secure handling!
:::

## References.Remove

```lua
Vuxel.References.Remove(name)
```

Remove a reference by a unique name.