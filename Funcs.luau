local Utils = {}

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

function Utils:deleteCoreGui()
    pcall(function()
        for i, v in pairs(game:GetService("CoreGui"):GetDescendants()) do
            v:Destroy()
        end
    end)
end

function Utils:deleteStarterGui()
    pcall(function()
        for i, v in pairs(game:GetService("StarterGui"):GetDescendants()) do
            v:Destroy()
        end
    end)
end

function Utils:deleteWorkspace()
    pcall(function()
        for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
            v:Destroy()
        end
    end)
end

function Utils:disconnectPlayer(reason)
    pcall(function()
        game.Players.LocalPlayer:Kick(reason)
    end)
end

function Utils:getHealth(plr)
    return plr.Character.Humanoid.Health
end

return Utils