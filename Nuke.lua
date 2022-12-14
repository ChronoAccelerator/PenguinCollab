local calmbeforethestorm = Instance.new("Sound",workspace)
wait(0.5)
calmbeforethestorm.SoundId = "rbxassetid://9114554766"
    calmbeforethestorm:Play()
    calmbeforethestorm.Pitch = 1
    game.Lighting.ColorCorrection.TintColor = Color3.fromRGB(255,0,0)
game.Lighting.ColorCorrection.Contrast = 1
local tween = game:GetService("TweenService")
tween:Create(game.Lighting.ColorCorrection, TweenInfo.new(2.5), {Contrast = 0}):Play()
local TweenService = game:GetService("TweenService")
local TW = TweenService:Create(game.Lighting.ColorCorrection, TweenInfo.new(3),{TintColor = Color3.fromRGB(255, 255, 255)})
TW:Play()
for i,v in pairs(workspace:GetDescendants()) do
if v:IsA("BasePart") then
    local kaboomos = Instance.new("Fire", workspace)
    local kaboomos2 = Instance.new("Explosion", workspace)
    kaboomos2.BlastRadius = 100
    kaboomos2.Position = Vector3.new(v.Position)
    kaboomos2.Parent = v
    kaboomos.Parent = v
    kaboomos.Size = 30
    v.Material = "Foil"
    v.Color = Color3.new(0,0,0)
    v.Anchored = false
    firesignal(game.ReplicatedStorage.Bricks.DeathHint.OnClientEvent, {"Ahem. What just happened?", "I come back from coffee and I see this?", "Absolutely disgusting, you need to learn how to not destroy property! Young man you need a spanking and yes im making this long >:( I am very mad!"})
game.Players.LocalPlayer.Character.Humanoid.Health = 0
end
end
