# Event Handling

The Event module simplifies connecting UI events.

## Usage

### Event.Connect

```lua
Event.Connect(instance, eventName, callback)
```

Connects a callback function to a specified event on a UI instance.

::: tip
You can also use `Vuxel.ConnectEvent` instead!
:::


### Example

```lua
Vuxel.Event.Connect(myButton, "MouseButton1Click", function()
    print("Button clicked!")
end)
```