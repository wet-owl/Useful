# How to boot the library

```lua
local SoftSync = loadstring(game:HttpGet("https://raw.githubusercontent.com/02-Dcs/Test/main/Library/SoftSync.luau"))()
```

# How to create a window

```lua
local Window = SoftSync:Init({
    Name = "Name of the window",
    Title = "Title above the Subtitle",
    Subtitle = "What goes under the title"
})
```

# How to create a tab

```lua
local Tab1 = Window:CreateTab({
    Name = "Tab1"
})
```

# How to create a text label

```lua
local Label1 = Tab1:CreateLabel("Here you can put anything you want! It will automatically wrap to a new line if its too long, or you can make a new line yourself! For example, like this:\n\n2 New lines\n\n\n\n4 New lines")
```