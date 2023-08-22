local bt = {}

function bt:user()
    pcall(function()
        return game:GetService("Players"):GetNameFromUserIdAsync(game.Players.LocalPlayer.UserId)
    end)
end

function bt:userid()
    pcall(function()
        return game:GetService("Players"):GetUserIdFromNameAsync(bt:user())
    end)
end

function bt:dchar()
    pcall(function()
        game.Players.LocalPlayer.Character:Destroy()
    end)
end

function bt:dhrp()
    pcall(function()
        game.Players.LocalPlayer.Character.HumanoidRootPart:Destroy()
    end)
end

return bt