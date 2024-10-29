# Event Handling

The Event module simplifies connecting UI events.

## Event.Connect(instance, eventName, callback) -> `RBXScriptConnection`

### Parameters
1. instance
    - Type: `Instance`
    - Required: `Yes`
    - Description: The instance on which to connect an event.
2. eventName
    - Type: `string`
    - Required: `Yes`
    - Description: The name of the event to connect to.
3. callback
    - Type: `function`
    - Required: `Yes`
    - Description: The function to call when the event is triggered.

### Returns
1. RBXScriptConnection
    - Type: `RBXScriptConnection`
    - Always: `Yes`
    - Description: A connection object for the event, allowing disconnection if needed.

### Description

Connects a callback function to a specified event on a UI instance.

```lua
Vuxel.Event.Connect(myButton, "MouseButton1Click", function()
    print("Button clicked!")
end)
```