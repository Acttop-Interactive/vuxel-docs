# A Simple Button

## Introduction
A simple button displayed on the top left corner that prints "Button clicked!" when clicked.

## Code
```lua
local Vuxel = require(game.ReplicatedStorage.Vuxel)

local app = Vuxel.CreateApp(
	Vuxel.Template(
		{
			Class = "TextButton",
			Name = "MyButton",
			Text = "Click me!",
			Size = UDim2.new(0, 100, 0, 30),
			BackgroundColor3 = Color3.new(0.2, 0.6, 0.8),
			TextColor3 = Color3.new(1, 1, 1),
			FontSize = Enum.FontSize.Size18,
			Events = {
				MouseButton1Click = function()
					print("Button clicked!")
				end
			}
		}
	)
)
```