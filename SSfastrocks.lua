local userInputService = game:GetService("UserInputService")
on = true
posz = 0
posx = 0
    times = 0
    
_G.closed = true
local effects = game.Players.LocalPlayer.Character.Effects
local rs = game:GetService("RunService")

        local player = game.Players.LocalPlayer
local Character = player.Character
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Spawn",
        [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector *10 + Vector3.new(math.random(0,35),math.random(0,30),math.random(0,33))
    }
}
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
local projectiles = game.Players.LocalPlayer.Character.Attacks

_G.closed = false
for i,v in pairs(projectiles:GetChildren()) do
if v.Name == "KnifeSlashProjectileOrange" or "Removing" then
    v:WaitForChild("BodyVelocity"):Destroy()
    v:WaitForChild("ParticleEmitter"):Destroy()
    
local detect
detect = rs.Heartbeat:Connect(function()
    if _G.closed then
        detect:Disconnect()
        end
    times = times + 1
    if 
    times == 6
    then 
    times = 0
    end
    if times == 1 then
v.Position = Character.HumanoidRootPart.Position - Vector3.new(0,9,0)
elseif times == 2 then
    v.Position = Character.HumanoidRootPart.Position - Vector3.new(10,9,0)
elseif times == 3 then
    v.Position = Character.HumanoidRootPart.Position - Vector3.new(0,9,10)
elseif times == 4 then
    v.Position = Character.HumanoidRootPart.Position - Vector3.new(0,9,-10)
elseif times == 5 then
    v.Position = Character.HumanoidRootPart.Position - Vector3.new(-10,9,0)
    end
local args2 = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Hit",
        [4] = v,
        [5] = v.CFrame,
        [6] = workspace.Terrain
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args2))


end)
end
end