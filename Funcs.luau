local bt = {}

function bt:generateFunction(func)
    return pcall(function()
        func()
    end)
end

function bt:getUsername()
    bt:generateFunction(function()
        return game.Players.LocalPlayer.Username
    end)
end

function bt:getUserId()
    bt:generateFunction(function()
        return game.Players.LocalPlayer.UserId
    end)
end

function bt:deleteCharacter()
    bt:generateFunction(function()
        game.Players.LocalPlayer.Character:Destroy()
    end)
end

function bt:deleteHumanoidRootPart()
    bt:generateFunction(function()
        game.Players.LocalPlayer.Character.HumanoidRootPart:Destroy()
    end)
end

function bt:getHealth()
    bt:generateFunction(function()
        return game.Players.LocalPlayer.Character.Humanoid.Health
    end)
end

function bt:deleteCoreGui()
    bt:generateFunction(function()
        for i, v in pairs(game:GetService("CoreGui"):GetDescendants()) do
            v:Destroy()
        end
    end)
end

return bt