# Creating a Vuxel Application

## Step 1: Setting Up Vuxel in Roblox Studio

Create a new Roblox Place or open an existing project in Roblox Studio.

### Insert the Vuxel Module

Place the Vuxel module script inside `ReplicatedStorage` or a custom folder. That's it!

### Create a Script in StarterPlayerScripts

This script will serve as the entry point for your Vuxel application. Name the script `VuxelApp` or any preferred name.

## Step 2: Creating Your First Vuxel Application

In this section, we'll create a simple counter app using Vuxel.

### Step 2.1: Import the Vuxel Module

First, import the Vuxel module into your script. This module provides access to all core functionalities like components, state, and utilities.

```lua
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Vuxel = require(ReplicatedStorage.Vuxel)
```

### Step 2.2: Define the Application's Root Frame

Create a new frame that will act as the root component of your UI.

```lua
local rootFrame = Instance.new("Frame")
rootFrame.Size = UDim2.new(0, 400, 0, 300)
```

### Step 2.3: Create the Application using CreateApp

Initialize the application by passing the root frame to `Vuxel.CreateApp`.

```lua
local app = Vuxel.CreateApp(rootFrame)
```

This function wraps the root frame in a `ScreenGui` and parents it to the `PlayerGui`, making it visible in the player’s UI.

### Step 2.4: Define Reactive State

Define a state variable that will be used to track the counter value.

```lua
local counter = Vuxel.State.new(0)
```

### Step 2.5: Create a Component Template

Vuxel uses a declarative syntax for defining UI components and their children. Let’s create a simple template with a `TextLabel` to display the counter and a `TextButton` to increment it.

```lua
local template = {
    Class = "Frame",
    Size = UDim2.new(1, 0, 1, 0),
    BackgroundColor3 = Color3.fromRGB(240, 240, 240),
    Children = {
        {
            Class = "TextLabel",
            Name = "CounterLabel",
            Text = Vuxel.Utility.Computed(function()
                return "Count: " .. counter:Get()
            end, counter), -- Automatically updates when `counter` changes
            Size = UDim2.new(0, 200, 0, 50),
            Position = UDim2.new(0.5, -100, 0.3, 0),
            BackgroundColor3 = Color3.fromRGB(255, 255, 255),
            TextSize = 24
        },
        {
            Class = "TextButton",
            Name = "IncrementButton",
            Text = "Increment",
            Size = UDim2.new(0, 100, 0, 50),
            Position = UDim2.new(0.5, -50, 0.6, 0),
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
```

### Step 2.6: Create and Mount the UI Component

Use the `Template` function to instantiate the template into actual Roblox UI elements, and parent the result to the root frame.

```lua
local ui = Vuxel.Template(template)
ui.Parent = rootFrame
```

### Step 2.7: Run the Application

Click Play in Roblox Studio to see your app in action. You should see a simple UI with a counter that increments every time you click the button.

## Step 3: Understanding the Code

### Breakdown of the Example:

- **Reactive State**: `counter` is a state object created using `Vuxel.State.new`. It tracks the current counter value.
- **Computed Properties**: The text of the `TextLabel` is a `Computed` property that automatically updates when the counter changes.
- **Event Handling**: The `TextButton` has a `MouseButton1Click` event, defined using the `Events` table, which increments the counter when clicked.
- **Component Template**: Vuxel’s component templates allow you to declaratively define UI elements with a nested structure.

## Step 4: Adding Styles and Animations

You can easily extend this example by adding styles and animations using Vuxel’s built-in features.

### Example: Adding a Tween Animation on Click

Modify the `MouseButton1Click` event to include a tween animation for the button.

```lua
Events = {
    MouseButton1Click = function()
        counter:Set(counter:Get() + 1)
        Vuxel.Animation.Tween(ui.IncrementButton, {Size = UDim2.new(0, 120, 0, 60)}, 0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    end
}
```

This change animates the button’s size when clicked, giving a visual effect that makes the UI more interactive.

## Step 5: Building More Complex UIs

With this foundational knowledge, you can now build more complex applications using Vuxel. Use state, hooks, and templates to design responsive and reactive interfaces that adapt to user interactions.