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
    pcall(function()
        return plr.Character.Humanoid.Health
    end)
end

function Utils:setWalkSpeed(plr, val)
    pcall(function()
        plr.Character.Humanoid.WalkSpeed = val
    end)
end

function Utils:setJumpPower(plr, val)
    pcall(function()
        plr.Character.Humanoid.JumpPower = val
    end)
end

function Utils:getWalkspeed(plr)
    pcall(function()
        return plr.Character.Humanoid.WalkSpeed
    end)
end

function Utils:destroyHumanoid(plr)
    pcall(function()
        plr.Character.Humanoid:Destroy()
    end)
end

function Utils:xray()
    pcall(function()
        for i, v in pairs(game.Workspace:GetDescendants()) do
            if v:IsA("BasePart") and not v.Parent:FindFirstChildOfClass('Humanoid') and not v.Parent.Parent:FindFirstChildOfClass('Humanoid') then
                v.LocalTransparencyModifier = 0.5
            end
        end
    end)
end

function Utils:unXray()
    pcall(function()
        for i, v in pairs(game.Workspace:GetDescendants()) do
            if v:IsA("BasePart") and not v.Parent:FindFirstChildOfClass('Humanoid') and not v.Parent.Parent:FindFirstChildOfClass('Humanoid') then
                v.LocalTransparencyModifier = 0
            end
        end
    end)
end

function Utils:antiHttpSpy()
    pcall(function()
        hookfunction(print, function(...)
            return
        end)
        hookfunction(warn, function(...)
            return
        end)
        hookfunction(error, function(...)
            return
        end)

        local oldwrite
        oldwrite = hookfunction(writefile, function(file, content)
            if(string.find(string.lower(content), 'https://')) then
                return
            end

            return oldwrite(file, content)
        end)

        game.DescendantAdded:Connect(function(c)
            if c and c:IsA('TextLabel') or c:IsA('TextButton') or c:IsA('Message') then
                if string.find(string.lower(c.Text), 'https://') then
                    c:Destroy()
                end
            end
        end)

        getgenv().rconsoletitle = nil
        getgenv().rconsoleprint = nil
        getgenv().rconsolewarn = nil
        getgenv().rconsoleinfo = nil
        getgenv().rconsolerr = nil
        getrenv().print = function(...) return end
        getrenv().warn = function(...) return end
        getrenv().error = function(...) return end
        getgenv().print = function(...) return end
        getgenv().warn = function(...) return end
        getgenv().error = function(...) return end
        local oldNamecall
        oldNamecall = hookmetamethod(game, '__namecall', newcclosure(function(self, ...)
            local method = getnamecallmethod()

            if(string.lower(method) == 'rconsoleprint') then
                return task.wait(9e9)
            end

            if(string.lower(method) == 'rconsoleinfo') then
                return task.wait(9e9)
            end

            if(string.lower(method) == 'rconsolewarn') then
                return task.wait(9e9)
            end

            if(string.lower(method) == 'rconsoleerr') then
                return task.wait(9e9)
            end

            if(string.lower(method) == 'rendernametag') then
                return
            end

            return oldNamecall(self, ...)
        end))
    end)
end

return Utils