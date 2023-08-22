local bt = {}

function bt:getUsername()
    pcall(function()
        return game.Players.LocalPlayer.Username
    end)
end

function bt:getUserId()
    pcall(function()
        return game.Players.LocalPlayer.UserId
    end)
end

function bt:deleteCharacter()
    pcall(function()
        game.Players.LocalPlayer.Character:Destroy()
    end)
end

function bt:deleteHumanoidRootPart()
    pcall(function()
        game.Players.LocalPlayer.Character.HumanoidRootPart:Destroy()
    end)
end

function bt:getHealth()
    pcall(function()
        return game.Players.LocalPlayer.Character.Humanoid.Health
    end)
end

function bt:deleteCoreGui()
    pcall(function()
        for i, v in pairs(game:GetService("CoreGui"):GetDescendants()) do
            v:Destroy()
        end
    end)
end

return bt