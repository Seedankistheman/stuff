

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local _1 = Instance.new("ImageButton")
local wow = Instance.new("ImageLabel")

--Properties:

ScreenGui.Parent = game.CoreGui

_1.Name = "1"
_1.Parent = ScreenGui
_1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_1.Size = UDim2.new(0, 1366, 0, 768)
_1.Image = "http://www.roblox.com/asset/?id=5720724855"
_1.MouseButton1Down:connect(function()
	_1.Visible = false
	wow.Visible = true
	wait(1)
	wow.Visible = false
	wait(1)
	--sus
	game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = Color3.fromRGB(255,255,255)
	game.Players.LocalPlayer.PlayerGui.UI.Ui.StaminaBar.Bar.BackgroundColor3 = Color3.fromRGB(255, 0, 0)

	--talk when spawn

	game.Players.LocalPlayer:WaitForChild("StarterPlaylist")
	game.Players.LocalPlayer.StarterPlaylist["1Megalovania"]:Destroy()
	local Sound = Instance.new("Sound")
	Sound.Parent = game.Players.LocalPlayer.StarterPlaylist
	Sound.Volume = 0
	Sound.Playing = true
	Sound.Looped = true
	Sound.SoundId = "rbxassetid://" 
	Sound.Name = "huh"
	game.Players:Chat(("its a empty night outside..."))
	wait(4)
	game.Players:Chat(("Kills are stacking..."))
	wait(4)
	game.Players:Chat(("crewmates are dying..."))
	wait(4)
	game.Players:Chat(("on nights like these..."))
	wait(4)
	game.Players:Chat(("IMPOSTERS like you..."))
	wait(4)
	game.Players:Chat(("should be..."))
	wait(4)
	game.Players:Chat(("BURNING IN SPACE"))
	game.Players.LocalPlayer:WaitForChild("StarterPlaylist")
	game.Players.LocalPlayer.StarterPlaylist["huh"]:Destroy()
	local Sound = Instance.new("Sound")
	Sound.Parent = game.Players.LocalPlayer.StarterPlaylist
	Sound.Volume = 0.5
	Sound.Playing = true
	Sound.Looped = true
	Sound.SoundId = "rbxassetid://5843381708" 
	Sound.Name = "sussy"


	--skills

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "z" then game.Players.LocalPlayer:GetMouse()
			local Anim       = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://4357890370"
			local k          = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Normal",
					["HitEffect"] = "BoneHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
					["Velocity"] = Vector3.new(0, 0.0001, 0), 
					["HitTime"] = 1,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 5
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)

	mouse.KeyDown:Connect(function(k) 
		if k == "z" then game.Players.LocalPlayer:GetMouse()
			wait(0.5)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://4357902460"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Normal",
					["HitEffect"] = "BoneHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0.0001, 0), 
					["HitTime"] = 1,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 5
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)

	mouse.KeyDown:Connect(function(k) 
		if k == "z" then game.Players.LocalPlayer:GetMouse()
			wait(0.8)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://4357890370"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Normal",
					["HitEffect"] = "BoneHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0.0001, 0), 
					["HitTime"] = 1,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 5
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)

	mouse.KeyDown:Connect(function(k) 
		if k == "z" then game.Players.LocalPlayer:GetMouse()
			wait(1)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://4357902460"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Normal",
					["HitEffect"] = "BoneHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0.0001, 0), 
					["HitTime"] = 1,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Damage"] = 5
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)

	mouse.KeyDown:Connect(function(k) 
		if k == "z" then game.Players.LocalPlayer:GetMouse()
			wait(1.2)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://4357907686"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Knockback",
					["HitEffect"] = "BoneHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(100, 0, 100), 
					["HitTime"] = 1,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
					["Damage"] = 40
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)

	mouse.KeyDown:Connect(function(k) 
		if k == "z" then game.Players.LocalPlayer:GetMouse()
			local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "SpawnBone", 
					[3] = true, 
					[4] = true

				}
			local Event = game:GetService("ReplicatedStorage").Remotes.SansMoves
			Event:InvokeServer(A_1)
			wait(1.3)
			local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "SpawnBone", 
					[3] = v, 

				}
			local Event = game:GetService("ReplicatedStorage").Remotes.SansMoves
			Event:InvokeServer(A_1)
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "z" then game.Players.LocalPlayer:GetMouse()
			local CAS = game:GetService("ContextActionService")
			local FREEZE_COMMAND  = "CantAttack"
			CAS:BindActionAtPriority(
				FREEZE_COMMAND,
				function() 
					return Enum.ContextActionResult.Sink
				end,
				false,
				Enum.ContextActionPriority.High.Value,
				Enum.KeyCode.Z
			)

			wait(3)

			local CAS = game:GetService("ContextActionService")
			local FREEZE_COMMAND  = "CantAttack"
			CAS:BindActionAtPriority(
				FREEZE_COMMAND,
				function() 
					return Enum.ContextActionResult.Sink
				end,
				false,
				Enum.ContextActionPriority.High.Value,
				Enum.KeyCode.Zero
			)

		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "x" then game.Players.LocalPlayer:GetMouse()
			local A_1 = 
				{
					[1] = getrenv()._G.Pass,
					[2] = "Chatted", 
					[3] = "You are just a kind of freak huh?", 
					[4] = Color3.new(255,255,255)
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://3816275001"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(2)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 2,
					["Type"] = "Knockback",
					["HitEffect"] = "BoneHitEffect",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
					["Velocity"] = Vector3.new(0, 0, 4),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
					["Damage"] = 40
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "x" then 
			wait(0.2)
			function getlockchar()
				local char = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				return char
			end

			function getlock()
				local pos = mouse.Hit.p
				if game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value ~= nil then
					pos = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
				end
				warn(pos)
				return pos
			end
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = getlockchar().HumanoidRootPart.CFrame * CFrame.new(0,0,6)
			local target = getlockchar()
			local mouse = game.Players.LocalPlayer:GetMouse()
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "x" then game.Players.LocalPlayer:GetMouse()
			wait(0.5)
			local Anim       = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://6122095988"
			local k          = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Normal",
					["HitEffect"] = "BoneHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
					["Velocity"] = Vector3.new(0, 0.0001, 0), 
					["HitTime"] = 1,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.SpawnBone,
					["Damage"] = 10
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "x" then game.Players.LocalPlayer:GetMouse()
			wait(0.6)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(2)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Normal",
					["HitEffect"] = "BoneHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0.0001, 0), 
					["HitTime"] = 1,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.SpawnBone,
					["Damage"] = 10
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "x" then game.Players.LocalPlayer:GetMouse()
			wait(0.7)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(2)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Normal",
					["HitEffect"] = "BoneHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0.0001, 0), 
					["HitTime"] = 1,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.SpawnBone,
					["Damage"] = 10
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "x" then game.Players.LocalPlayer:GetMouse()
			wait(0.8)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(2)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Normal",
					["HitEffect"] = "BoneHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0.0001, 0), 
					["HitTime"] = 1,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.SpawnBone,
					["Damage"] = 10
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "x" then game.Players.LocalPlayer:GetMouse()
			wait(0.9)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(2)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Normal",
					["HitEffect"] = "BoneHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0.0001, 0), 
					["HitTime"] = 1,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.SpawnBone,
					["Damage"] = 10
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "x" then game.Players.LocalPlayer:GetMouse()
			wait(1)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(2)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Normal",
					["HitEffect"] = "BoneHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0.0001, 0), 
					["HitTime"] = 1,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.SpawnBone,
					["Damage"] = 10
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "x" then game.Players.LocalPlayer:GetMouse()
			wait(1.1)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(2)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Normal",
					["HitEffect"] = "BoneHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0.0001, 0), 
					["HitTime"] = 1,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.SpawnBone,
					["Damage"] = 10
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "x" then game.Players.LocalPlayer:GetMouse()
			wait(1.2)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(2)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Knockback",
					["HitEffect"] = "BoneHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(-0, 29.999994277954, -0), 
					["HitTime"] = 0.5,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
					["Damage"] = 40
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "x" then game.Players.LocalPlayer:GetMouse()
			wait(1.5)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://5776249806"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(2)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Normal",
					["HitEffect"] = "BoneHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0.0001, 0), 
					["HitTime"] = 1,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
					["Damage"] = 5
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "x" then game.Players.LocalPlayer:GetMouse()
			wait(1.6)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://5776251749"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(2)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Normal",
					["HitEffect"] = "BoneHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0.0001, 0), 
					["HitTime"] = 1,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
					["Damage"] = 5
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "x" then game.Players.LocalPlayer:GetMouse()
			wait(1.7)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://5776249806"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(2)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Normal",
					["HitEffect"] = "BoneHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0.0001, 0), 
					["HitTime"] = 1,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
					["Damage"] = 5
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "x" then game.Players.LocalPlayer:GetMouse()
			wait(1.8)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://5776251749"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(2)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Normal",
					["HitEffect"] = "BoneHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0.0001, 0), 
					["HitTime"] = 1,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
					["Damage"] = 5
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "x" then game.Players.LocalPlayer:GetMouse()
			wait(1.9)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://5776249806"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(2)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Normal",
					["HitEffect"] = "BoneHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0.0001, 0), 
					["HitTime"] = 1,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
					["Damage"] = 5
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "x" then game.Players.LocalPlayer:GetMouse()
			wait(2)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://5776251749"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(2)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Normal",
					["HitEffect"] = "BoneHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0.0001, 0), 
					["HitTime"] = 2,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
					["Damage"] = 5
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "x" then game.Players.LocalPlayer:GetMouse()
			wait(2.3)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://6154055740"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Normal",
					["HitEffect"] = "BoneHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0.0001, 0), 
					["HitTime"] = 2,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
					["Damage"] = 5
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "x" then game.Players.LocalPlayer:GetMouse()
			wait(2.4)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(2)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Normal",
					["HitEffect"] = "BoneHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0.0001, 0), 
					["HitTime"] = 2,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
					["Damage"] = 5
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "x" then game.Players.LocalPlayer:GetMouse()
			wait(2.5)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(2)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Normal",
					["HitEffect"] = "BoneHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0.0001, 0), 
					["HitTime"] = 2,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
					["Damage"] = 5
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "x" then game.Players.LocalPlayer:GetMouse()
			wait(2.6)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(2)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Knockback",
					["HitEffect"] = "BoneHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0.0001, 0), 
					["HitTime"] = 2,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
					["Damage"] = 40
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "x" then game.Players.LocalPlayer:GetMouse()
			wait(2.7)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://4300091335"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Knockback",
					["HitEffect"] = "BoneHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, -1, 0), 
					["HitTime"] = 0.5,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
					["Damage"] = 40
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "x" then game.Players.LocalPlayer:GetMouse()
			wait(3)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://6154055740"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Normal",
					["HitEffect"] = "BoneHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0.0001, 0), 
					["HitTime"] = 2,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
					["Damage"] = 5
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "x" then game.Players.LocalPlayer:GetMouse()
			wait(3.2)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(2)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Normal",
					["HitEffect"] = "BoneHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0.0001, 0), 
					["HitTime"] = 2,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
					["Damage"] = 5
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "x" then game.Players.LocalPlayer:GetMouse()
			wait(3.3)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(2)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Normal",
					["HitEffect"] = "BoneHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0.0001, 0), 
					["HitTime"] = 2,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
					["Damage"] = 5
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "x" then game.Players.LocalPlayer:GetMouse()
			wait(3.5)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(2)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Knockback",
					["HitEffect"] = "BoneHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
					["Velocity"] = Vector3.new(0, 0.0001, 0), 
					["HitTime"] = 2,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
					["Damage"] = 40
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "c" then game.Players.LocalPlayer:GetMouse()
			local A_1 = 
				{
					[1] = getrenv()._G.Pass,
					[2] = "Chatted", 
					[3] = "Impostor slash", 
					[4] = Color3.new(255,0,0)
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1)
			local Anim       = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://4800266314"
			local k          = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Knockback",
					["HitEffect"] = "KnifeHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
					["Velocity"] = Vector3.new(-0, -50, -0),
					["HitTime"] = 0.5,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
					["Damage"] = 40
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)


	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "c" then game.Players.LocalPlayer:GetMouse()
			local A_1 = 
				{
					[1] = getrenv()._G.Pass,
					[2] = "Chatted", 
					[3] = "Impostor slash", 
					[4] = Color3.new(255,0,0)
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1)
			local Anim       = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k          = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(2)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Knockback",
					["HitEffect"] = "KnifeHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
					["Velocity"] = Vector3.new(-0, -50, -0),
					["HitTime"] = 0.5,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
					["Damage"] = 40
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)


	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "c" then game.Players.LocalPlayer:GetMouse()
			local A_1 = 
				{
					[1] = getrenv()._G.Pass,
					[2] = "Chatted", 
					[3] = "Impostor slash", 
					[4] = Color3.new(255,0,0)
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1)
			local Anim       = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k          = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(2)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Knockback",
					["HitEffect"] = "KnifeHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
					["Velocity"] = Vector3.new(-0, -50, -0),
					["HitTime"] = 0.5,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
					["Damage"] = 40
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)


	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "c" then game.Players.LocalPlayer:GetMouse()
			local A_1 = 
				{
					[1] = getrenv()._G.Pass,
					[2] = "Chatted", 
					[3] = "Impostor slash", 
					[4] = Color3.new(255,0,0)
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1)
			local Anim       = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k          = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(2)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Knockback",
					["HitEffect"] = "KnifeHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
					["Velocity"] = Vector3.new(-0, -50, -0),
					["HitTime"] = 0.5,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
					["Damage"] = 40
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)


	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "c" then game.Players.LocalPlayer:GetMouse()
			local A_1 = 
				{
					[1] = getrenv()._G.Pass,
					[2] = "Chatted", 
					[3] = "Impostor slash", 
					[4] = Color3.new(255,0,0)
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1)
			local Anim       = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k          = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(2)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Knockback",
					["HitEffect"] = "KnifeHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
					["Velocity"] = Vector3.new(-0, -50, -0),
					["HitTime"] = 0.5,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
					["Damage"] = 40
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)


	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "c" then game.Players.LocalPlayer:GetMouse()
			local A_1 = 
				{
					[1] = getrenv()._G.Pass,
					[2] = "Chatted", 
					[3] = "Impostor slash", 
					[4] = Color3.new(255,0,0)
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1)
			local Anim       = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k          = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(2)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Knockback",
					["HitEffect"] = "KnifeHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
					["Velocity"] = Vector3.new(-0, -50, -0),
					["HitTime"] = 0.5,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
					["Damage"] = 40
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)


	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "c" then game.Players.LocalPlayer:GetMouse()
			local A_1 = 
				{
					[1] = getrenv()._G.Pass,
					[2] = "Chatted", 
					[3] = "Impostor slash", 
					[4] = Color3.new(255,0,0)
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1)
			local Anim       = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k          = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(2)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Knockback",
					["HitEffect"] = "KnifeHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
					["Velocity"] = Vector3.new(-0, -50, -0),
					["HitTime"] = 0.5,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
					["Damage"] = 40
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)


	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "c" then game.Players.LocalPlayer:GetMouse()
			local A_1 = 
				{
					[1] = getrenv()._G.Pass,
					[2] = "Chatted", 
					[3] = "Impostor slash", 
					[4] = Color3.new(255,0,0)
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1)
			local Anim       = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k          = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(2)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Knockback",
					["HitEffect"] = "KnifeHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
					["Velocity"] = Vector3.new(-0, -50, -0),
					["HitTime"] = 0.5,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
					["Damage"] = 40
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)


	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "c" then game.Players.LocalPlayer:GetMouse()
			local A_1 = 
				{
					[1] = getrenv()._G.Pass,
					[2] = "Chatted", 
					[3] = "Impostor slash", 
					[4] = Color3.new(255,0,0)
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1)
			local Anim       = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k          = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(2)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Knockback",
					["HitEffect"] = "KnifeHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
					["Velocity"] = Vector3.new(-0, -50, -0),
					["HitTime"] = 0.5,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
					["Damage"] = 40
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)


	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "c" then game.Players.LocalPlayer:GetMouse()
			local A_1 = 
				{
					[1] = getrenv()._G.Pass,
					[2] = "Chatted", 
					[3] = "Impostor slash", 
					[4] = Color3.new(255,0,0)
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1)
			local Anim       = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k          = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(2)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Knockback",
					["HitEffect"] = "KnifeHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
					["Velocity"] = Vector3.new(-0, -50, -0),
					["HitTime"] = 0.5,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
					["Damage"] = 40
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)


	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "c" then game.Players.LocalPlayer:GetMouse()
			local A_1 = 
				{
					[1] = getrenv()._G.Pass,
					[2] = "Chatted", 
					[3] = "Impostor slash", 
					[4] = Color3.new(255,0,0)
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1)
			local Anim       = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k          = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(2)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["Type"] = "Knockback",
					["HitEffect"] = "KnifeHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
					["Velocity"] = Vector3.new(-0, -50, -0),
					["HitTime"] = 0.5,
					["CombatInv"] = true,
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
					["Damage"] = 40
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)

	mouse.KeyDown:Connect(function(k) 
		if k == "c" then game.Players.LocalPlayer:GetMouse()
			local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "SpawnBone", 
					[3] = true, 
					[4] = true

				}
			local Event = game:GetService("ReplicatedStorage").Remotes.SansMoves
			Event:InvokeServer(A_1)
			wait(0.6)
			local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "SpawnBone", 
					[3] = v, 

				}
			local Event = game:GetService("ReplicatedStorage").Remotes.SansMoves
			Event:InvokeServer(A_1)
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "v" then game.Players.LocalPlayer:GetMouse()
			local A_1 = 
				{
					[1] = getrenv()._G.Pass,
					[2] = "Chatted", 
					[3] = "Like ya cut g", 
					[4] = Color3.new(255,255,255)
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://3816275001"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(2)
			local args = { 
				[1] = getrenv()._G.Pass,
				[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
				[3] = {
					["HitTime"] = 1,
					["Type"] = "Knockback",
					["HitEffect"] = "BoneHitEffect",
					["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
					["Velocity"] = Vector3.new(0, 0, 200),
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
					["Damage"] = 40
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)
	wait(1)
	game.CoreGui.ScreenGui:Destroy()


end)

wow.Name = "wow"
wow.Parent = ScreenGui
wow.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
wow.Size = UDim2.new(0, 1366, 0, 768)
wow.Visible = false
wow.Image = "http://www.roblox.com/asset/?id=6201774952"
wow.Visible = false