local userInputService = game:GetService("UserInputService")
sdis = false
count = 0
local rs = game:GetService("RunService")
local done = {}
local pass = 0
local function ClearTable(tbl)
    for key in pairs(tbl) do
        tbl[key] = nil
    end
end
userInputService.InputBegan:Connect(function(input,gameProcessedEvent)
    local keyPressed = input.KeyCode
    
      if not gameProcessedEvent then
          if keyPressed == Enum.KeyCode.C then
              
         --player is typing
         
         if sdis == true then
	        sdis = false
	        print (sdis)
	        ClearTable(done)
	    elseif sdis == false then
	        sdis = true
	        print (sdis)
	        local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Spawn",
        [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector *10 + Vector3.new(math.random(0,35),math.random(0,30),math.random(0,33))
    }
}
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

	        while sdis == true do
	            
	    local player = game.Players.LocalPlayer
local Character = player.Character
for _,b in pairs(game.workspace:GetChildren()) do
for i = 1,#done do
        if b.Name ~= done[i] then
            pass = pass + 1
        end
end
if pass == #done then
if b:FindFirstChildOfClass('Humanoid')  and b.Humanoid.Health ~= 0 then
if b:FindFirstChild('Torso') then
if b.Name ~= player.Name and b.Name ~= "Hateball Defense Dummy" and b.Name ~= "Defense:250 Dummy" and b.Name ~= "HalfStaminaDummy" and b.Name ~= "BlockingDummy" and b.Name ~= "NoStaminaDummy" and b.Name ~= "AttackDummy" and b.Name ~= "DodgingDummy" and b.Name ~= "Defense:150 Dummy" and b.Name ~= "Hateball Defense Dummy"  then
		print(b)
end
local effects = game.Players.LocalPlayer.Character.Effects
local projectiles = game.Players.LocalPlayer.Character.Attacks
for i,v in pairs(projectiles:GetChildren()) do
if v.Name == "KnifeSlashProjectileOrange" or "Removing" then
local detect = rs.Heartbeat:Connect(function()
    if b.Humanoid.Health == 0 then
        v:Destroy()
        table.insert(done, b.Name)
        detect:disconnect()
        print(b) --should print a player only once
        sdis = false
        else
            
v.Position = b.LockOn.Position
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Hit",
        [4] = v,
        [5] = b.HumanoidRootPart.CFrame,
        [6] = b.HumanoidRootPart
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

    
end

end)
else
    local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Spawn",
        [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector *10 + Vector3.new(math.random(0,35),math.random(0,30),math.random(0,33))
    }
}
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

end
end
end
end
end
end
wait(0.2)
if sdis == true then
	        sdis = false
	        print (sdis)
	        ClearTable(done)
	        end
end
end
end
end
end)

game.Players.LocalPlayer.Character.Effects.ChildAdded:Connect(function(child)
    if child.Name == "CarrotHitEffect" then
        child:Destroy()
end

    end)