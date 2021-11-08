local userInputService = game:GetService("UserInputService")
sdis = false

local effects = game.Players.LocalPlayer.Character.Effects
local rs = game:GetService("RunService")
userInputService.InputBegan:Connect(function(input,gameProcessedEvent)
    local keyPressed = input.KeyCode
    
      if not gameProcessedEvent then
          if keyPressed == Enum.KeyCode.C then
              
         --player is typing
         
         if sdis == true then
	        sdis = false
	    elseif sdis == false then
	        sdis = true
	        while sdis == true do
	            game:GetService("ReplicatedStorage").Remotes.Events:FireServer({
[1] = getrenv()._G.Pass,
[2] = "SlashEffect",
[3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1,
[4] = Color3.fromRGB(255, 255, 255),
[5] = CFrame.Angles(0, 0, math.rad(0))})

game:GetService("ReplicatedStorage").Remotes.Events:FireServer({
[1] = getrenv()._G.Pass,
[2] = "SlashEffect",
[3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1,
[4] = Color3.fromRGB(0, 0, 0),
[5] = CFrame.Angles(0, 0, math.rad(180))})
	    local player = game.Players.LocalPlayer
local Character = player.Character
for _,b in pairs(game.workspace:GetChildren()) do

if b:FindFirstChildOfClass('Humanoid') then
if b:FindFirstChild('Torso') then
range = (Character.PrimaryPart.Position - b.PrimaryPart.Position).Magnitude
if range <15 and b.Name ~= player.Name then
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
for i,v in pairs(projectiles:GetChildren()) do
if v.Name == "KnifeSlashProjectileOrange" or "Removing" then
local detect = rs.Heartbeat:Connect(function()
    if b.Humanoid.Health == 0 or b.Name == "Hateball Defense Dummy" or b.Name == "Defense:250 Dummy" or b.Name == "HalfStaminaDummy" or b.Name == "BlockingDummy" or b.Name == "NoStaminaDummy" or b.Name == "AttackDummy" or b.Name == "DodgingDummy" or b.Name == "Defense:150 Dummy" or b.Name == "Hateball Defense Dummy" then
        v:Destroy()
        detect:disconnect()
        else
            
v.Position = b.LockOn.Position
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Hit",
        [4] = game:GetService("Players").LocalPlayer.Character.Attacks.KnifeSlashProjectileOrange,
        [5] = b.HumanoidRootPart.CFrame,
        [6] = b.HumanoidRootPart
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))


effects:FindFirstChild("CarrotHitEffect"):Destroy()

    
end

end)
end
end
end
end
end
end
wait(0.2)
end

	    end
          end
  end
end)

while true do wait()
    
effects:FindFirstChild("CarrotHitEffect"):Destroy()

end
