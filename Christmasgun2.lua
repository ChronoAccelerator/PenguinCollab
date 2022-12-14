   local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua"))()
    local CustomShop = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Shop%20Items/Source.lua"))()

    local exampleTool = game:GetObjects("rbxassetid://11581313606")[1]

    exampleTool.Parent = game.Players.LocalPlayer.Backpack

    local UIS = game:GetService("UserInputService")
    local tool = exampleTool

    local anim = Instance.new("Animation")
    anim.Name = "M249Idle"
    anim.AnimationId = "rbxassetid://3034291703"
    local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(anim)

    tool.Equipped:Connect(function()
        track.Priority = Enum.AnimationPriority.Movement
        track.Looped = true
        track:Play()
        end)


    UIS.InputBegan:Connect(function(input)
            if tool.Parent == game.Players.LocalPlayer.Character then
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    local bullet = LoadCustomInstance("rbxassetid://11581381399") --The *bullet model id*
                    local HRP = tool.BulletPart
                    local Attachment = Instance.new("Attachment", bullet)
                    local LV = Instance.new("LinearVelocity", Attachment) -- creating the linear velocity
                    LV.MaxForce = math.huge -- no need to worry about this
                    LV.VectorVelocity = HRP.CFrame.lookVector * 100 -- change 100 with how fast you want the projectile to go
                    LV.Attachment0 = Attachment --Required Attachment
                    bullet.Parent = game.Workspace
                    bullet.CFrame = tool.BulletPart.CFrame
                    tool.Handle.Fire:Play()
                    wait(1)
                    LV:Destroy()
                    wait(10)
                    bullet:Destroy()
            end   
        end
end)
    tool.Unequipped:Connect(function()
        if track then
            track:Stop()
    end
    end)
