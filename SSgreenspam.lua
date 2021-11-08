pos = -20
pos2 = 160
_G.closethanosaura = false
local detect
local rs = game:GetService("RunService")
detect = rs.Heartbeat:Connect(function()
    if 
    _G.closethanosaura 
    then
        detect:disconnect() 
    end
    
game:GetService("ReplicatedStorage").Remotes.Events:FireServer({
[1] = getrenv()._G.Pass,
[2] = "SlashEffect",
[3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing2, 
[4] = Color3.fromRGB(0, 255, 0),
[5] = CFrame.Angles(0, 0, math.rad(pos))})

game:GetService("ReplicatedStorage").Remotes.Events:FireServer({
[1] = getrenv()._G.Pass,
[2] = "SlashEffect",
[3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing2, 
[4] = Color3.fromRGB(0, 255, 0),
[5] = CFrame.Angles(0, 0, math.rad(pos2))})
end)