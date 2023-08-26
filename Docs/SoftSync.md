## To get started, lets boot the library. This can be done by using the following code:

```lua
local SoftSync = loadstring(game:HttpGet("https://raw.githubusercontent.com/02-Dcs/Test/main/Library/SoftSync.luau"))()
```
<br>
<br>

## To actually utilize the library and create a window, you will need to use the code below:

```lua
local Window = SoftSync:Init({
    Name = "Name of the window",
    Title = "Title above the Subtitle",
    Subtitle = "What goes under the title"
})
```
<br>
<br>

## Now that you've booted the library and created a window, you obviously want to display some information, so lets create a tab, a tab only needs one setting which is the Name, to create a tab you can use the code below:

```lua
local Tab1 = Window:CreateTab({
    Name = "Tab1"
})
```
<br>
<br>

## To create a text label, you can use the code below:

```lua
local Label1 = Tab1:CreateLabel("Here you can put anything you want! It will automatically wrap to a new line if its too long, or you can make a new line yourself! For example, like this:\n\n2 New lines\n\n\n\n4 New lines")
```