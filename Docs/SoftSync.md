<div align="center"><img src="https://svg-banners.vercel.app/api?type=rainbow&text1=SoftSync&width=800&height=400" alt ="Crown Admin"/></div>
<br>

## To get started, lets boot the library. This can be done by using the following code:

```lua
local SoftSync = loadstring(game:HttpGet("https://raw.githubusercontent.com/02-Dcs/Useful/main/Library/SoftSync.luau"))()
```
<br>

## To create a window, you will need to use the code below:

```lua
local Window = SoftSync:Init({ Name = "Example Script", Title = "Example From", Subtitle = "https://github.com/02-Dcs/Useful/blob/main/Docs/SoftSync.md" })
```
<br>

## To create a window with a background image, use the code below:

```lua
local Window = SoftSync:Init({Name = "Example Script", Title = "Example From", Subtitle = "https://github.com/02-Dcs/Useful/blob/main/Docs/SoftSync.md", LoadingBackgroundImage = "http://www.roblox.com/asset/?id=14531191031"})
```
<br>

## To create a tab inside the window, use the code below:

```lua
local Tab1 = Window:CreateTab({ Name = "Tab1" })
```
<br>

## To create a text label, you can use the code below:

```lua
local Label1 = Tab1:CreateLabel("The text inside of here will automatically wrap, or if you want to create a new line manually you can use:\nUnderneath the line\n\nOn a seperate line\n\n\n\nOn a claustrophobic line")
```
<br>

## To create an input box, you can use the code below:

```lua
local Input1 = Tab1:CreateInput({ Name = "Input", Callback = function(input) 
    if input == "Var1" then
        print("Var1!")
    elseif input == "Var2" then
        print("Var2!")
    end
end})
```
<br>

## To create a large input box, you can use the code below:

```lua
local LargeInput1 = Tab1:CreateLargeInput({ Name = "Large Input", Callback = function(input) 
    if input == "1" then
        print("2")
    elseif input == "2" then
        print("3")
    end
end})
```