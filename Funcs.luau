local Utils = {
}

function Utils:getUsername()
    pcall(function()
        return game.Players.LocalPlayer.Username
    end)
end

function Utils:getUserId()
    pcall(function()
        return game.Players.LocalPlayer.UserId
    end)
end

function Utils:deleteCharacter()
    pcall(function()
        game.Players.LocalPlayer.Character:Destroy()
    end)
end

function Utils:deleteHumanoidRootPart()
    pcall(function()
        game.Players.LocalPlayer.Character.HumanoidRootPart:Destroy()
    end)
end

function Utils:getHealth()
    pcall(function()
        return game.Players.LocalPlayer.Character.Humanoid.Health
    end)
end

function Utils:deleteCoreGui()
    pcall(function()
        for i, v in pairs(game:GetService("CoreGui"):GetDescendants()) do
            v:Destroy()
        end
    end)
end

return Utils