# Counter Application

## Introduction
This simple counter application showcases how to use reactive states `(State)` and event handling `(Event)` to create a dynamic UI component. When the button is clicked, the counter value is incremented and automatically updates the display.

## Code
```lua
local Vuxel = require(game.ReplicatedStorage.Vuxel)

-- Define reactive state
local counter = Vuxel.State.new(0)

local app = Vuxel.CreateApp(
	Vuxel.Template(
		{
			Class = "Frame",
			Size = UDim2.new(1, 0, 1, 0),
			Children = {
				{
					Class = "TextLabel",
					Name = "CounterLabel",
					Text = Vuxel.Utility.Computed(function()
						return "Count: " .. counter:Get()
					end, counter),
					Size = UDim2.new(0.6, 0, 0.4, 0),
					Position = UDim2.new(0.2, 0, 0.2, 0),
					TextSize = 24
				},
				{
					Class = "TextButton",
					Name = "IncrementButton",
					Text = "Increment",
					Size = UDim2.new(0.4, 0, 0.2, 0),
					Position = UDim2.new(0.3, 0, 0.7, 0),
					BackgroundColor3 = Color3.fromRGB(100, 200, 100),
					TextSize = 18,
					Events = {
						MouseButton1Click = function()
							counter:Set(counter:Get() + 1)
						end
					}
				}
			}
		}
	)
)

```