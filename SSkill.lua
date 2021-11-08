local player = game.Players.LocalPlayer
local rs = game:GetService("RunService")
player.Chatted:Connect(function(mag, secipient)
    if string.sub(mag,1,1) == ":" then
        print("false command")
        local splitstring = string.split(mag, " ")
        if splitstring[1] == ":kill" then
            local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Spawn",
        [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector *10 + Vector3.new(math.random(0,35),math.random(0,30),math.random(0,33))
    }
}
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
for i,v in pairs(player.Character.Attacks:GetChildren()) do
    print(v.Name)
if v.Name == "KnifeSlashProjectileOrange" or "Removing" then
local detect 
detect = rs.Heartbeat:Connect(function()
    if game.Workspace:FindFirstChild(splitstring[2]):WaitForChild("Humanoid").Health == 0 then
        v:Destroy()
        detect:disconnect()
        print(game.Workspace:FindFirstChild(splitstring[2]).Name) --should print a player only once
        else
            
v.Position = game.Workspace:FindFirstChild(splitstring[2]).LockOn.Position - Vector3.new(0,4,0)
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Hit",
        [4] = v,
        [5] = game.Workspace:FindFirstChild(splitstring[2]).HumanoidRootPart.CFrame,
        [6] = game.Workspace:FindFirstChild(splitstring[2]).HumanoidRootPart
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

    
end

end)
end
end
end
end
end)