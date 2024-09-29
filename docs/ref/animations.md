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