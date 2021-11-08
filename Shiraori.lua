
--Setup
if game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value == "Frisk" then
	
else
    game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
	game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Frisk"
end
wait(1.6)
--Variables
xstun = false
phase = "1"
sdis = false
aura = true
regen = false
--White Name
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.Text = "Shiro"
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.TextColor3 = Color3.fromRGB(255,255,255)

--Level Up
local v1 = {
	[1] = getrenv()._G.Pass, 
	[2] = "Damage", 
	[3] = math.huge, 
	[4] = game.Players.LocalPlayer.Character
}
local event = game:GetService("ReplicatedStorage").Remotes.Events

event:FireServer(v1)


--Remove
wait(2)
local PLR = game.Players.LocalPlayer
local Backpack = PLR.Backpack
local GUI = PLR.PlayerGui
GUI.SavePoint:Destroy()
GUI.WeaponSelector:Destroy()
GUI.FoodItems:Destroy()
local char = game.Players.LocalPlayer.Character
spawn(function()
	repeat wait()
		for _,v in pairs(char:GetChildren()) do
			if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' or v.Name == 'Hit' or v.Name == 'Hitt' or v.Name == 'Damaged' or v.Name == 'Grounded' or v.Name == 'StayGrounded' or v.Name == 'KnockBack' or v.Name == 'Walled' then
				v:Destroy()
			end
		end
	until false
end)

char = game.Players.LocalPlayer.Character
spawn(function()
	repeat wait()
		for _,v in pairs(char:GetChildren()) do
			if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' or v.Name == 'Hit' or v.Name == 'Hitt' or v.Name == 'Damaged' or v.Name == 'Grounded' or v.Name == 'StayGrounded' or v.Name == 'KnockBack' or v.Name == 'Walled' then
				v:Destroy()
			end
		end
	until false
end)
char = game.Players.LocalPlayer.Character
spawn(function()
	repeat wait()
		for _,v in pairs(char:GetChildren()) do
			if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' or v.Name == 'Hit' or v.Name == 'Hitt' or v.Name == 'Damaged' or v.Name == 'Grounded' or v.Name == 'StayGrounded' or v.Name == 'KnockBack' or v.Name == 'Walled' then
				v:Destroy()
			end
		end
	until false
end)
char = game.Players.LocalPlayer.Character
spawn(function()
	repeat wait()
		for _,v in pairs(char:GetChildren()) do
			if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' or v.Name == 'Hit' or v.Name == 'Hitt' or v.Name == 'Damaged' or v.Name == 'Grounded' or v.Name == 'StayGrounded' or v.Name == 'KnockBack' or v.Name == 'Walled' then
				v:Destroy()
			end
		end
	until false
end)

--Sound
local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.Character.Head
Sound.Volume = 5
Sound.Playing = false
Sound.Looped = false
Sound.SoundId = "rbxassetid://6564956178"
Sound.Name = "Voice"
Sound.PlaybackSpeed = 1.5
wait(0.5)
game.Players.LocalPlayer.Character.Head.Voice:Destroy()

--Music
local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("CharaPlaylist"))
music.Volume = 2
music.SoundId = "rbxassetid://2279971133" -- Sound ID
music.Looped = true
music:Play()
game.Players.LocalPlayer.CharaPlaylist["1A"]:Destroy()
--customlmb
local anim4 = game.Players.LocalPlayer.Backpack.Main.FriskMoves.ModuleScript.Animations.BasicCombat.Light1:clone()
local anim5 = game.Players.LocalPlayer.Backpack.Main.FriskMoves.ModuleScript.Animations.BasicCombat.Light1:clone()
local anim6 = game.Players.LocalPlayer.Backpack.Main.FriskMoves.ModuleScript.Animations.BasicCombat.Light1:clone()
anim4.Name = "Light4"
anim5.Name = "Light5"
anim6.Name = "Light6"
anim4.Parent = game.Players.LocalPlayer.Backpack.Main.FriskMoves.ModuleScript.Animations.BasicCombat
anim5.Parent = game.Players.LocalPlayer.Backpack.Main.FriskMoves.ModuleScript.Animations.BasicCombat
anim6.Parent = game.Players.LocalPlayer.Backpack.Main.FriskMoves.ModuleScript.Animations.BasicCombat
game.Players.LocalPlayer.Backpack.Main.FriskMoves.ModuleScript.Animations.BasicCombat.Light1.AnimationId = "rbxassetid://4800624938"
game.Players.LocalPlayer.Backpack.Main.FriskMoves.ModuleScript.Animations.BasicCombat.Light2.AnimationId = "rbxassetid://4800163313"
game.Players.LocalPlayer.Backpack.Main.FriskMoves.ModuleScript.Animations.BasicCombat.Light3.AnimationId = "rbxassetid://4800436094"
game.Players.LocalPlayer.Backpack.Main.FriskMoves.ModuleScript.Animations.BasicCombat.Light4.AnimationId = "rbxassetid://5776251749"
game.Players.LocalPlayer.Backpack.Main.FriskMoves.ModuleScript.Animations.BasicCombat.Light5.AnimationId = "rbxassetid://4800630930"
game.Players.LocalPlayer.Backpack.Main.FriskMoves.ModuleScript.Animations.BasicCombat.Light6.AnimationId = "rbxassetid://4801002022"
--Talk
function talk(text,color)
	if dead == true then return end
	local A_1 = 
		{
			[1] = getrenv()._G.Pass, 
			[2] = "Chatted", 
			[3] = text, 
			[4] = color
		}
	local Event = game:GetService("ReplicatedStorage").Remotes.Events
	Event:FireServer(A_1)
end
wait(2)
game.Players.LocalPlayer.PlayerGui.UI.Ui.ChallengeInfo.Accept.Text = "A god does not fear death"
game.Players.LocalPlayer.PlayerGui.UI.Ui.ChallengeInfo.Decline.Text = "Give up..."
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack:Destroy()
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Defense:Destroy()
game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar:Destroy()
game.Players.LocalPlayer.PlayerGui.UI.Ui.StaminaBar:Destroy()
game.Players.LocalPlayer.PlayerGui.UI.Ui.ExpBar.Bar:Destroy()
game.Players.LocalPlayer.PlayerGui.UI.Ui.ExpBar.TextLabel:Destroy()
game.Players.LocalPlayer.PlayerGui.UI.Ui.ExpBar.LvText:Destroy()
game.Players.LocalPlayer.PlayerGui.UI.Ui.ExpBar.Lv:Destroy()
game.Players.LocalPlayer.PlayerGui.UI.Ui.UpdateLog:Destroy()
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.StaminaBar:Destroy()
--Custom Moves
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k)
	if k == "2" then
			if phase == "3" then
				local Anim = Instance.new("Animation")
				Anim.AnimationId = "rbxassetid://129423131"
				local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
				k:Play()
				k:AdjustSpeed(1)
				local SFX = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("CharaPlaylist"))
				SFX.Volume = 1.5
				SFX.SoundId = "rbxassetid://260433721" -- Sound ID
				SFX.Looped = false
				SFX:Play()
				talk([[[System Message]
<Skill: "Evil Eye of Static" has been used.>]],Color3.fromRGB(255,255,255))			
				local args = {
        				    [1] = getrenv()._G.Pass,
        				    [2] = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
       				     [3] = {
       				         ["Type"] = "Knockback",
       				         ["HitEffect"] = "HeavyHitEffect",
        				        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
          				      ["HitTime"] = 0.2,
           				     ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BassDrop,
          				      ["Damage"] = 40
         				   }
       				 }
				game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
				wait(3)
				talk([[[System Message]
<Skill: "Evil Eye of Static" has paralized the enemy till the end of time.>]],Color3.fromRGB(255,255,255))
			end
		end
end)

mouse.KeyDown:Connect(function(k)
	if k == "4" then
			if phase == "3" then
				local Anim = Instance.new("Animation")
				Anim.AnimationId = "rbxassetid://129423131"
				local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
				k:Play()
				k:AdjustSpeed(1)
				local SFX = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("CharaPlaylist"))
				SFX.Volume = 1.5
				SFX.SoundId = "rbxassetid://260433721" -- Sound ID
				SFX.Looped = false
				SFX:Play()
				talk([[[System Message]
<Skill: "Remove Haram" has been used.>]],Color3.fromRGB(255,255,255))
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 2.5,
						["Type"] = "Knockback", 
						["HitEffect"] = "BoneHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.VaccumSoundEffect,
						["Velocity"] = Vector3.new(0, 1, 0),
						["CombatInv"] = true,
						["Damage"] = 0
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value			
				local A_3 = 
					{
						["HitTime"] = 2.5,
						["Type"] = "Knockback", 
						["HitEffect"] = "BoneHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.VaccumSoundEffect,
						["Velocity"] = Vector3.new(0, 10, 0),
						["CombatInv"] = true,
						["Damage"] = 35
					}
					local Event = game:GetService("ReplicatedStorage").Remotes.Damage
					
					wait(3)
					talk([[[System Message]
<Skill Detection: "Remove Haram" has detected enemy is haram.>]],Color3.fromRGB(255,255,255))
					Event:InvokeServer(A_1, A_2, A_3)
					Event:InvokeServer(A_1, A_2, A_3)
					Event:InvokeServer(A_1, A_2, A_3)
					Event:InvokeServer(A_1, A_2, A_3)
					Event:InvokeServer(A_1, A_2, A_3)
					Event:InvokeServer(A_1, A_2, A_3)
					Event:InvokeServer(A_1, A_2, A_3)
					Event:InvokeServer(A_1, A_2, A_3)
					Event:InvokeServer(A_1, A_2, A_3)
					Event:InvokeServer(A_1, A_2, A_3)
				wait(3)
				talk([[[System Message]
<Skill: "Remove Haram" has halal the enemy.>]],Color3.fromRGB(255,255,255))
			end
		end
end)

mouse.KeyDown:Connect(function(k)
	if k == "1" then
			if phase == "2" then
				talk([[[System Message]
<Skill: "Annihilating Evil Eye" has been used.>]],Color3.fromRGB(255,255,255))
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 2.5,
						["Type"] = "Knockback", 
						["HitEffect"] = "BoneHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.VaccumSoundEffect,
						["Velocity"] = Vector3.new(0, 1, 0),
						["CombatInv"] = true,
						["Damage"] = 20
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				wait(0.2)
				Event:InvokeServer(A_1, A_2, A_3)
				wait(0.2)
				Event:InvokeServer(A_1, A_2, A_3)
			elseif phase == "3" then
				talk([[[System Message]
<Skill: "Evil Eye of Extinction" has been used.>]],Color3.fromRGB(255,255,255))
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 2.5,
						["Type"] = "Knockback", 
						["HitEffect"] = "BoneHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.VaccumSoundEffect,
						["Velocity"] = Vector3.new(0, 5, 0),
						["CombatInv"] = true,
						["Damage"] = 35
					}
					local A_4 = 
					{
						["HitTime"] = 2.5,
						["Type"] = "Knockback", 
						["HitEffect"] = "BoneHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.VaccumSoundEffect,
						["Velocity"] = Vector3.new(0, -5, 0),
						["CombatInv"] = true,
						["Damage"] = 35
					}
					local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				repeat
					Event:InvokeServer(A_1, A_2, A_3)
					wait(0.1)
					Event:InvokeServer(A_1, A_2, A_4)
					wait(0.1)
				until game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value == nil
			end
	end
end)

mouse.KeyDown:Connect(function(k)
	if k == "3" then
		talk([[[System Message]
<Skill: "Barrier" has been used.>]],Color3.fromRGB(255,255,255))
		local A_1 = 
				{
					[1] = getrenv()._G.Pass,
					[2] = "EquipWeapon", 
					[3] = "RoseShield"
				}
			game:GetService("ReplicatedStorage").Remotes.FriskMoves:InvokeServer(A_1)

			local A_1 = 
				{
					[1] = getrenv()._G.Pass,
					[2] = "Blocking", 
					[3] = true
				}
			game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(A_1)
	end
end)

mouse.KeyDown:Connect(function(k)
	if k == "t" then
	    if phase == "3" then
	    if aura == true then
		talk([[[System Message]
<Skill: "Aura" has been disabled.>]],Color3.fromRGB(255,255,255))
aura = false
elseif aura == false then
    talk([[[System Message]
<Skill: "Aura" has been enabled.>]],Color3.fromRGB(255,255,255))
aura = true
end
end
end
end)

mouse.KeyDown:Connect(function(k)
	if k == "6" then
		talk([[[System Message]
<Skill: "Warped Evil Eye" has been self used.>]],Color3.fromRGB(255,255,255))
		local A_1 = getrenv()._G.Pass
local A_2 = game.Players.LocalPlayer.Character
local A_3 = 
	{
		["HitTime"] = 2.5,
		["Type"] = "Knockback", 
		["HitEffect"] = "BoneHitEffect",
		["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
		["Sound"] = game:GetService("ReplicatedStorage").Sounds.VaccumSoundEffect,
		["Velocity"] = Vector3.new(0, 1, 0),
		["CombatInv"] = true,
		["Damage"] = 20
	}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
	end
end)

mouse.KeyDown:Connect(function(k)
	if k == "5" then
	    if sdis == true then
	        sdis = false
	        talk([[[System Message]
<Skill: "Social Distancing" has been disabled.>]],Color3.fromRGB(255,255,255))
	    elseif sdis == false then
	        sdis = true
	        talk([[[System Message]
<Skill: "Social Distancing" has been enabled.>]],Color3.fromRGB(255,255,255))
	        while sdis == true do
	            game:GetService("ReplicatedStorage").Remotes.Events:FireServer({
[1] = getrenv()._G.Pass,
[2] = "SlashEffect",
[3] = game:GetService("Players").LocalPlayer.Backpack.Main.FriskMoves.ModuleScript.Animations.Slash.Swing1,
[4] = Color3.fromRGB(255, 255, 255),
[5] = CFrame.Angles(0, 0, math.rad(0))})

game:GetService("ReplicatedStorage").Remotes.Events:FireServer({
[1] = getrenv()._G.Pass,
[2] = "SlashEffect",
[3] = game:GetService("Players").LocalPlayer.Backpack.Main.FriskMoves.ModuleScript.Animations.Slash.Swing1,
[4] = Color3.fromRGB(0, 0, 0),
[5] = CFrame.Angles(0, 0, math.rad(180))})
	    local player = game.Players.LocalPlayer
local char = player.Character
for _,b in pairs(game.workspace:GetChildren()) do

if b:FindFirstChildOfClass('Humanoid') then
if b:FindFirstChild('Torso') then
range = (char.PrimaryPart.Position - b.PrimaryPart.Position).Magnitude
if range <15 and b.Name ~= player.Name then
		
		local A_1 = getrenv()._G.Pass
local A_2 = b
local A_3 = 
	{
		["HitTime"] = 2.5,
		["Type"] = "Knockback", 
		["HitEffect"] = "BoneHitEffect",
		["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
		["Sound"] = game:GetService("ReplicatedStorage").Sounds.VaccumSoundEffect,
		["Velocity"] = Vector3.new(0, 0.1, 0),
		["CombatInv"] = true,
		["Damage"] = 35
	}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
end
end
end
end
wait(0.2)
end

	    end
end
end)

mouse.KeyDown:Connect(function(k)
	if k == "y" then
	    if regen == true then
		talk([[[System Message]
<Skill: "Regeneration" has been disabled.>]],Color3.fromRGB(255,255,255))
char.StainedApron:Destroy()
regen = false
elseif regen == false then
    regen = true
    talk([[[System Message]
<Skill: "Regeneration" has been enabled.>]],Color3.fromRGB(255,255,255))
clone = true
game:GetService("RunService").RenderStepped:Connect(function()
    if clone == true then
    repeat wait()
            local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "EquipArmor", 
                [3] = "StainedApron"
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.FriskMoves
            Event:InvokeServer(A_1)
    until clone == false
end
end)
wait(5)
    clone = false
    char.StainedApron.Union:Destroy()

end
end
end)



--Phases
mouse.KeyDown:Connect(function(k)
	if k == "p" then
		if phase == "1" then
		    phase = "2"
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://4900761581"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			music:Stop()
			music.SoundId = "rbxassetid://1185688293" -- Sound ID
			music:Play()
			talk("...",Color3.fromRGB(255,255,255))
			wait(3)
			talk([[[System Message]
<Skill: "Regeneration" has been used.>]],Color3.fromRGB(255,255,255))
			game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.Text = "Shiro..."
			clone = true
			game:GetService("RunService").RenderStepped:Connect(function()
				if clone == true then
					repeat wait()
						local A_1 = 
							{
								[1] = getrenv()._G.Pass, 
								[2] = "EquipArmor", 
								[3] = "StainedApron"
							}
						local Event = game:GetService("ReplicatedStorage").Remotes.FriskMoves
						Event:InvokeServer(A_1)
					until clone == false

				end
			end)
			wait(2)
			clone = false
			wait(2)
			char.StainedApron:Destroy()
			
		elseif phase == "2" then
		    phase = "3"
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://4900761581"
			
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(0.6)
			music:Stop()
			music.SoundId = "rbxassetid://422954483" -- Sound ID
			music:Play()
			talk([[[System Message]
<Skill: "Hacking the System" has been used.>]],Color3.fromRGB(0, 234, 255))
			wait(3)
			talk([[[System Message]
<Skill: "Barrier" has been changed to passive.>]],Color3.fromRGB(0, 234, 255))
			local A_1 = 
				{
					[1] = getrenv()._G.Pass,
					[2] = "EquipWeapon", 
					[3] = "RoseShield"
				}
			game:GetService("ReplicatedStorage").Remotes.FriskMoves:InvokeServer(A_1)

			local A_1 = 
				{
					[1] = getrenv()._G.Pass,
					[2] = "Blocking", 
					[3] = true
				}
			game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(A_1)
			wait(3)
			talk([[[System Message]
<Skill: "Regeneration" has been changed to passive.>]],Color3.fromRGB(0, 234, 255))
regen = true
			clone = true
game:GetService("RunService").RenderStepped:Connect(function()
    if clone == true then
    repeat wait()
            local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "EquipArmor", 
                [3] = "StainedApron"
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.FriskMoves
            Event:InvokeServer(A_1)
    until clone == false
end
end)
wait(5)
    clone = false
    char.StainedApron.Union:Destroy()
			
			talk([[[System Message]
<Skill: "Annihilating Evil Eye" has evolved into "Evil Eye of Extinction".>]],Color3.fromRGB(0, 234, 255))
			wait(3)
			talk([[[System Message]
<Skill: "Evil Eye of Static" has been acquired.>]],Color3.fromRGB(0, 234, 255))
wait(3)

			talk([[[System Message]
<Detection: User has been detected as halal.>]],Color3.fromRGB(0, 234, 255))
			game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.Text = "Shiraori"
			
		end
	end
end)
pos = 0
pos2 = 180
while true do wait(0.1)
    if phase == "3" then
        if sdis == false then
            if aura == true then

game:GetService("ReplicatedStorage").Remotes.Events:FireServer({
[1] = getrenv()._G.Pass,
[2] = "SlashEffect",
[3] = game:GetService("Players").LocalPlayer.Backpack.Main.FriskMoves.ModuleScript.Animations.Slash.Swing1,
[4] = Color3.fromRGB(255, 255, 255),
[5] = CFrame.Angles(0, 0, math.rad(pos))})
pos = pos + 2

game:GetService("ReplicatedStorage").Remotes.Events:FireServer({
[1] = getrenv()._G.Pass,
[2] = "SlashEffect",
[3] = game:GetService("Players").LocalPlayer.Backpack.Main.FriskMoves.ModuleScript.Animations.Slash.Swing1,
[4] = Color3.fromRGB(0, 0, 0),
[5] = CFrame.Angles(0, 0, math.rad(pos2))})
pos2 = pos2 - 2
end
end
end
end

while regen == true do wait(0.1)
        char = game.Players.LocalPlayer.Character
        char.StainedApron:ClearAllChildren()
        
game:GetService("ReplicatedStorage").Remotes.Events:FireServer({
[1] = getrenv()._G.Pass,
[2] = "SlashEffect",
[3] = game:GetService("Players").LocalPlayer.Backpack.Main.FriskMoves.ModuleScript.Animations.Slash.Swing1,
[4] = Color3.fromRGB(0, 255, 0),
[5] = CFrame.Angles(0, 0, math.rad(90))})

game:GetService("ReplicatedStorage").Remotes.Events:FireServer({
[1] = getrenv()._G.Pass,
[2] = "SlashEffect",
[3] = game:GetService("Players").LocalPlayer.Backpack.Main.FriskMoves.ModuleScript.Animations.Slash.Swing1,
[4] = Color3.fromRGB(0, 255, 0),
[5] = CFrame.Angles(0, 0, math.rad(45))})

game:GetService("ReplicatedStorage").Remotes.Events:FireServer({
[1] = getrenv()._G.Pass,
[2] = "SlashEffect",
[3] = game:GetService("Players").LocalPlayer.Backpack.Main.FriskMoves.ModuleScript.Animations.Slash.Swing1,
[4] = Color3.fromRGB(0, 255, 0),
[5] = CFrame.Angles(0, 0, math.rad(135))})
end