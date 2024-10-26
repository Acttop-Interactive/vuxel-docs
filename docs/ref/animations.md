# Animations

The Animation module provides tween-based animation utilities for UI elements.

## Animation.Tween

```lua
Animation.Tween(instance, properties, duration, easingStyle, easingDirection)
```

Creates and plays a tween animation on the specified UI element.

### Parameters

- **instance**: The UI element to animate.
- **properties**: A table of property values to animate.
- **duration**: (Optional) The duration of the animation in seconds.
- **easingStyle**: (Optional) The easing style (default: `Enum.EasingStyle.Quad`).
- **easingDirection**: (Optional) The easing direction (default: `Enum.EasingDirection.Out`).

### Example

```lua
Vuxel.Animation.Tween(myButton, { Position = UDim2.new(0, 200, 0, 200) }, 1)
```

## Animation.Sequence

```lua
Animation.Sequence(instance, tweenTable)
```

Creates and plays a tween animation sequence on the specified UI element.

### Parameters

- **instance**: The UI element to animate.
- **tweenTable**: A table of Animation Tweens

### Example

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