# Animations

The Animation module provides tween-based animation utilities for UI elements.

## Animation.Tween(instance, properties, duration, easingStyle, easingDirection) -> `Tween`

### Parameters
1. instance
    - Type: `instance`
    - Required: `Yes`
    - Description: The UI element to animate.
2. properties
    - Type: `table`
    - Required: `Yes`
    - Description: A table of property values to animate towards.
3. duration
    - Type: `number`
    - Required: `No`
    - Description: Duration of the animation in seconds. Defaults to `0.5`.
4. easingStyle
    - Type: `Enum.EasingStyle`
    - Required: `No`
    - Description: Style of the animation easing. Defaults to `num.EasingStyle.Quad`.
5. easingDirection
    - Type: `Enum.EasingDirection`
    - Required: `No`
    - Description: Direction of the easing. Defaults to `num.EasingDirection.Out`.

### Returns
1. Tween
    - Type: `Tween`
    - Always: `Yes`
    - Description: The created `Tween` object that is actively playing.

### Description

Creates and plays a tween animation on the specified UI element.

```lua
Vuxel.Animation.Tween(myButton, { Position = UDim2.new(0, 200, 0, 200) }, 1)
```

## Animation.Sequence(instance, sequenceTable) -> `void`

### Parameters
1. instance
    - Type: `instance`
    - Required: `Yes`
    - Description: The UI element to animate.
2. sequenceTable
    - Type: `table`
    - Required: `Yes`
    - Description: A table containing a series of animation steps, each with `Duration`, `asingStyle`, `EasingDirection`, and `Properties`.

### Returns
1. void
    - Type: `nil`
    - Always: `Yes`
    - Description: No return value; each tween in the sequence is played sequentially.

### Description

Creates and plays a tween animation sequence on the specified UI element.

```lua
Vuxel.Animation.Sequence(myButton, {
	{
		Properties = { Size = UDim2.new(0, 250, 0, 100) },
		Duration = 0.1,
		EasingStyle = Enum.EasingStyle.Quad,
		EasingDirection = Enum.EasingDirection.Out
	},
	{
		Properties = { Size = UDim2.new(0, 200, 0, 50) },
		Duration = 0.1,
		EasingStyle = Enum.EasingStyle.Quad,
		EasingDirection = Enum.EasingDirection.Out
	}
})
```

## Animation.TweenGradient(gradient, fromSequence, toSequence, duration, easingStyle) -> `Tween`

### Parameters
1. instance
    - Type: `gradient`
    - Required: `Yes`
    - Description: The UIgradient element to animate.
2. fromSequence
    - Type: `ColorSequence`
    - Required: `Yes`
    - Description: A ColorSequence to animate from.
3. toSequence
    - Type: `ColorSequence`
    - Required: `Yes`
    - Description: A ColorSequence to animate to.
4. duration
    - Type: `number`
    - Required: `No`
    - Description: Duration of the animation in seconds. Defaults to `0.5`.
5. easingStyle
    - Type: `Enum.EasingStyle`
    - Required: `No`
    - Description: Style of the animation easing. Defaults to `num.EasingStyle.Quad`.

### Returns
1. Tween
    - Type: `Tween`
    - Always: `Yes`
    - Description: The created `Tween` object that is actively playing.

### Description

Creates and plays a tween animation on the specified UI element.

```lua
Vuxel.Animation.Tween(myButton, { Position = UDim2.new(0, 200, 0, 200) }, 1)
```
