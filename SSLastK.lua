game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Chara"
wait(1)
game.Players.LocalPlayer.Character.Head.HealthBar:Destroy()
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Walk.AnimationId = "rbxassetid://7005162082"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Idle.AnimationId = "rbxassetid://7005139602"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Run.AnimationId = "rbxassetid://7005205711"
game.Players.LocalPlayer.Character["FullHateMode"]:Destroy()
game.Players.LocalPlayer.Character["HateMode"]:Destroy()
game.Players.LocalPlayer.Character["Karma"]:Destroy()
game.Players.LocalPlayer.Character["RealKnife"]:Destroy()
game.Players.LocalPlayer.Character["HeartLocket"]:Destroy()
game.Players.LocalPlayer.Character["HateArm"]:Destroy()
--[[Credits:
King Dream#9746 - Script Maker
rudma#4187 - Big Help
Catgod - VERY PRO AND COOL PERSON YES
TheUnknownElite - Big Pro and Nice person
Mister - My cool friend
]]
bravspam = game:GetService("UserInputService").InputBegan:connect(function(key,gp)
    if key.KeyCode == Enum.KeyCode.E and not gp then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,30,0)
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
wait(0.1)
local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4562533193"
        local k2 = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k2:Play()

wait(1.8)
k2:AdjustSpeed(0)
for i = 0,2 do
wait(0.5)
spawn(function()
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Spawn",
        [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector *10 + Vector3.new(math.random(0,35),math.random(0,30),math.random(0,33))
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
end)

wait(0.2)
spawn(function()

local projectiles = game.Players.LocalPlayer.Character.Attacks
for i,v in pairs(projectiles:GetChildren()) do
if v.Name == "KnifeSlashProjectileOrange" or "Removing" then

for i,p in pairs(game.Players:GetPlayers()) do
if p ~= game.Players.LocalPlayer then
wait(0.2)
spawn(function()
v.Position = game.Workspace[tostring(p.Name)].LockOn.Position
end)

spawn(function()
for i = 0,500 do
wait()
spawn(function()
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Hit",
        [4] = game:GetService("Players").LocalPlayer.Character.Attacks.KnifeSlashProjectileOrange,
        [5] = game.Workspace[tostring(p)].HumanoidRootPart.CFrame,
        [6] = workspace[tostring(p)].HumanoidRootPart
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))


end)
end
end)


end
end
end
end
end)
end

game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
k2:Stop()
end
end)

local sitstart = Instance.new("Animation")
sitstart.AnimationId = "rbxassetid://6821079045"
local sitstartplay = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):LoadAnimation(sitstart)

local sitloop = Instance.new("Animation")
sitloop.AnimationId = "rbxassetid://6821100086"
local sitloopplay = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):LoadAnimation(sitloop)

local sitend = Instance.new("Animation")
sitend.AnimationId = "rbxassetid://6821115515"
local sitendplay = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):LoadAnimation(sitend)

local sitting = false
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "q" then
if sitting == false then
        sitting = true
        sitstartplay:Play()
        wait(1)
        sitloopplay:Play()
        elseif sitting == true then
            sitting = false
            sitloopplay:Stop()
            sitendplay:Play()
end
end
end)
-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local R = Instance.new("TextBox")
local G = Instance.new("TextBox")
local B = Instance.new("TextBox")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.0545454547, 0, 0.698940992, 0)
Frame.Size = UDim2.new(0, 257, 0, 130)

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BorderSizePixel = 3
TextBox.Position = UDim2.new(0.107989125, 0, 0.610773623, 0)
TextBox.Size = UDim2.new(0, 200, 0, 50)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.PlaceholderText = "Put text in here"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

R.Name = "R"
R.Parent = Frame
R.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
R.Position = UDim2.new(0.105058365, 0, 0.100000001, 0)
R.Size = UDim2.new(0, 60, 0, 50)
R.Font = Enum.Font.SourceSans
R.Text = "255"
R.TextColor3 = Color3.fromRGB(0, 0, 0)
R.TextScaled = true
R.TextSize = 14.000
R.TextWrapped = true

G.Name = "G"
G.Parent = Frame
G.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
G.Position = UDim2.new(0.38132295, 0, 0.100000001, 0)
G.Size = UDim2.new(0, 60, 0, 50)
G.Font = Enum.Font.SourceSans
G.Text = "255"
G.TextColor3 = Color3.fromRGB(0, 0, 0)
G.TextScaled = true
G.TextSize = 14.000
G.TextWrapped = true

B.Name = "B"
B.Parent = Frame
B.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
B.Position = UDim2.new(0.649805427, 0, 0.100000001, 0)
B.Size = UDim2.new(0, 60, 0, 50)
B.Font = Enum.Font.SourceSans
B.Text = "255"
B.TextColor3 = Color3.fromRGB(0, 0, 0)
B.TextScaled = true
B.TextSize = 14.000
B.TextWrapped = true

-- Scripts:
local player = game.Players.LocalPlayer
			local mouse = player:GetMouse()

			local Player = game.Players.LocalPlayer
			local Char = Player.Character
			local Humanoid = Char.Humanoid
			local UIS = game:GetService("UserInputService")

			UIS.InputBegan:Connect(function(Input, IsTyping)
				if IsTyping then return end
				if Input.KeyCode == Enum.KeyCode.M then
					local A_1 = 
						{
							[1] = getrenv()._G.Pass,
							[2] = "Chatted", 
							[3] = "[The Fallen King]: Heh.. Survive this", 
							[4] = Color3.new(1,0,0)
						}
					local Event = game:GetService("ReplicatedStorage").Remotes.Events
					Event:FireServer(A_1)
					local A_1 = getrenv()._G.Pass
					local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
					local A_3 = 
						{
							["HitTime"] = 1, 
							["Type"] = "Knockback", 
							["HitEffect"] = "HeavyHitEffect", 
							["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
							["Velocity"] = Vector3.new(100, 0, 1), 
							["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
							["Damage"] = 15
						}
					local Event = game:GetService("ReplicatedStorage").Remotes.Damage
					Event:InvokeServer(A_1, A_2, A_3)
				end
			end)
			UIS.InputBegan:Connect(function(Input, IsTyping)
				if IsTyping then return end
				if Input.KeyCode == Enum.KeyCode.M then
					local A_1 = getrenv()._G.Pass
					local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
					local A_3 = 
						{
							["HitTime"] = 1, 
							["Type"] = "Knockback", 
							["HitEffect"] = "HeavyHitEffect", 
							["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
							["Velocity"] = Vector3.new(100, 0, 1), 
							["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
							["Damage"] = 10
						}
					local Event = game:GetService("ReplicatedStorage").Remotes.Damage
					Event:InvokeServer(A_1, A_2, A_3)
				end
			end)
			UIS.InputBegan:Connect(function(Input, IsTyping)
				if IsTyping then return end
				if Input.KeyCode == Enum.KeyCode.M then
					local A_1 = getrenv()._G.Pass
					local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
					local A_3 = 
						{
							["HitTime"] = 1, 
							["Type"] = "Knockback", 
							["HitEffect"] = "HeavyHitEffect", 
							["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
							["Velocity"] = Vector3.new(100, 0, 1), 
							["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
							["Damage"] = 10
						}
					local Event = game:GetService("ReplicatedStorage").Remotes.Damage
					Event:InvokeServer(A_1, A_2, A_3)
				end
			end)
			UIS.InputBegan:Connect(function(Input, IsTyping)
				if IsTyping then return end
				if Input.KeyCode == Enum.KeyCode.M then
					local A_1 = getrenv()._G.Pass
					local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
					local A_3 = 
						{
							["HitTime"] = 1, 
							["Type"] = "Knockback", 
							["HitEffect"] = "HeavyHitEffect", 
							["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
							["Velocity"] = Vector3.new(100, 0, 1), 
							["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
							["Damage"] = 10
						}
					local Event = game:GetService("ReplicatedStorage").Remotes.Damage
					Event:InvokeServer(A_1, A_2, A_3)
				end
			end)
			UIS.InputBegan:Connect(function(Input, IsTyping)
				if IsTyping then return end
				if Input.KeyCode == Enum.KeyCode.M then
					local A_1 = getrenv()._G.Pass
					local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
					local A_3 = 
						{
							["HitTime"] = 1, 
							["Type"] = "Knockback", 
							["HitEffect"] = "HeavyHitEffect", 
							["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
							["Velocity"] = Vector3.new(100, 0, 1), 
							["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
							["Damage"] = 10
						}
					local Event = game:GetService("ReplicatedStorage").Remotes.Damage
					Event:InvokeServer(A_1, A_2, A_3)
				end
			end)
			UIS.InputBegan:Connect(function(Input, IsTyping)
				if IsTyping then return end
				if Input.KeyCode == Enum.KeyCode.M then
					local A_1 = getrenv()._G.Pass
					local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
					local A_3 = 
						{
							["HitTime"] = 1, 
							["Type"] = "Knockback", 
							["HitEffect"] = "HeavyHitEffect", 
							["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
							["Velocity"] = Vector3.new(100, 0, 1), 
							["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
							["Damage"] = 10
						}
					local Event = game:GetService("ReplicatedStorage").Remotes.Damage
					Event:InvokeServer(A_1, A_2, A_3)
				end
			end)
			UIS.InputBegan:Connect(function(Input, IsTyping)
				if IsTyping then return end
				if Input.KeyCode == Enum.KeyCode.M then
					local A_1 = getrenv()._G.Pass
					local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
					local A_3 = 
						{
							["HitTime"] = 1, 
							["Type"] = "Knockback", 
							["HitEffect"] = "HeavyHitEffect", 
							["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
							["Velocity"] = Vector3.new(100, 0, 1), 
							["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
							["Damage"] = 10
						}
					local Event = game:GetService("ReplicatedStorage").Remotes.Damage
					Event:InvokeServer(A_1, A_2, A_3)
				end
			end)

			local anim3 = Instance.new("Animation")
			anim3.AnimationId = "rbxassetid://5776260400"

			UIS.InputBegan:Connect(function(Input, IsTyping)
				if IsTyping then return end
				if Input.KeyCode == Enum.KeyCode.M then
					local playAnim = humanoid:LoadAnimation(anim3)
					playAnim:Play()
					wait(1.2)
					playAnim:Stop()
				end
			end)

local function WHMOLZV_fake_script() -- TextBox.LocalScript 
    local script = Instance.new('LocalScript', TextBox)

    local UIS = game:GetService("UserInputService")
    UIS.InputBegan:Connect(function(input, IsTyping)
        if IsTyping then return end
        if input.KeyCode == Enum.KeyCode.P then
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "Chatted", 
                [3] = script.Parent.Text,
                [4] = Color3.fromRGB(tonumber(script.Parent.Parent.R.Text), tonumber(script.Parent.Parent.G.Text), tonumber(script.Parent.parent.B.Text))
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
            Event:FireServer(A_1)
            
        end
    end)
end
coroutine.wrap(WHMOLZV_fake_script)()

			local mouse = game.Players.LocalPlayer:GetMouse()
			mouse.KeyDown:Connect(function(k) 
				if k == "h" then 
					local A_1 = 
						{
							[1] = getrenv()._G.Pass,
							[2] = "Chatted", 
							[3] = "[The Fallen King]: Stop trying..", 
							[4] = Color3.new(1,0,0)
						}
					local Event = game:GetService("ReplicatedStorage").Remotes.Events
					Event:FireServer(A_1)
					local Anim = Instance.new("Animation")
					Anim.AnimationId = "rbxassetid://4800254068"
					local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
					k:Play()
					k:AdjustSpeed(0.4)
					local args = {
						[1] = getrenv()._G.Pass,
						[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
						[3] = {
							["HitTime"] = 2,
							["Type"] = "Normal",
							["HitEffect"] = "HeavyHitEffect",
							["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
							["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
							["Velocity"] = Vector3.new(0, 0, -1),
							["Sound"] = game:GetService("ReplicatedStorage").Sounds.HateExplosion,
							["Damage"] = 10
						}
					}

					game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
					wait(1)
					k:Stop()
				end
			end)

			local mouse = game.Players.LocalPlayer:GetMouse()
			mouse.KeyDown:Connect(function(k) 
				if k == "h" then 
					local Anim = Instance.new("Animation")
					Anim.AnimationId = "rbxassetid://4800254068"
					local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
					k:Play()
					k:AdjustSpeed(0.4)
					local args = {
						[1] = getrenv()._G.Pass,
						[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
						[3] = {
							["HitTime"] = 2,
							["Type"] = "Normal",
							["HitEffect"] = "HeavyHitEffect",
							["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
							["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
							["Velocity"] = Vector3.new(0, 0, -1),
							["Sound"] = game:GetService("ReplicatedStorage").Sounds.HateExplosion,
							["Damage"] = 10
						}
					}

					game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
					wait(1)
					k:Stop()
				end
			end)

			local mouse = game.Players.LocalPlayer:GetMouse()
			mouse.KeyDown:Connect(function(k) 
				if k == "h" then 
					local Anim = Instance.new("Animation")
					Anim.AnimationId = "rbxassetid://4800254068"
					local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
					k:Play()
					k:AdjustSpeed(0.4)
					local args = {
						[1] = getrenv()._G.Pass,
						[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
						[3] = {
							["HitTime"] = 2,
							["Type"] = "Normal",
							["HitEffect"] = "HeavyHitEffect",
							["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
							["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
							["Velocity"] = Vector3.new(0, 0, -1),
							["Sound"] = game:GetService("ReplicatedStorage").Sounds.HateExplosion,
							["Damage"] = 10
						}
					}

					game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
					wait(1)
					k:Stop()
				end
			end)

			local mouse = game.Players.LocalPlayer:GetMouse()
			mouse.KeyDown:Connect(function(k) 
				if k == "h" then 
					local Anim = Instance.new("Animation")
					Anim.AnimationId = "rbxassetid://4800254068"
					local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
					k:Play()
					k:AdjustSpeed(0.4)
					local args = {
						[1] = getrenv()._G.Pass,
						[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
						[3] = {
							["HitTime"] = 2,
							["Type"] = "Normal",
							["HitEffect"] = "HeavyHitEffect",
							["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
							["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
							["Velocity"] = Vector3.new(0, 0, -1),
							["Sound"] = game:GetService("ReplicatedStorage").Sounds.HateExplosion,
							["Damage"] = 10
						}
					}

					game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
					wait(1)
					k:Stop()
				end
			end)

			local mouse = game.Players.LocalPlayer:GetMouse()
			mouse.KeyDown:Connect(function(k) 
				if k == "h" then 
					local Anim = Instance.new("Animation")
					Anim.AnimationId = "rbxassetid://4800254068"
					local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
					k:Play()
					k:AdjustSpeed(0.4)
					local args = {
						[1] = getrenv()._G.Pass,
						[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
						[3] = {
							["HitTime"] = 2,
							["Type"] = "Normal",
							["HitEffect"] = "HeavyHitEffect",
							["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
							["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
							["Velocity"] = Vector3.new(0, 0, -1),
							["Sound"] = game:GetService("ReplicatedStorage").Sounds.HateExplosion,
							["Damage"] = 10
						}
					}

					game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
					wait(1)
					k:Stop()
				end
			end)

			local mouse = game.Players.LocalPlayer:GetMouse()
			mouse.KeyDown:Connect(function(k) 
				if k == "h" then 
					local Anim = Instance.new("Animation")
					Anim.AnimationId = "rbxassetid://4800254068"
					local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
					k:Play()
					k:AdjustSpeed(0.4)
					local args = {
						[1] = getrenv()._G.Pass,
						[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
						[3] = {
							["HitTime"] = 2,
							["Type"] = "Normal",
							["HitEffect"] = "HeavyHitEffect",
							["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
							["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
							["Velocity"] = Vector3.new(0, 0, -1),
							["Sound"] = game:GetService("ReplicatedStorage").Sounds.HateExplosion,
							["Damage"] = 10
						}
					}

					game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
					wait(1)
					k:Stop()
				end
			end)

			local mouse = game.Players.LocalPlayer:GetMouse()
			mouse.KeyDown:Connect(function(k) 
				if k == "h" then 
					local Anim = Instance.new("Animation")
					Anim.AnimationId = "rbxassetid://4800254068"
					local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
					k:Play()
					k:AdjustSpeed(0.4)
					local args = {
						[1] = getrenv()._G.Pass,
						[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
						[3] = {
							["HitTime"] = 2,
							["Type"] = "Normal",
							["HitEffect"] = "HeavyHitEffect",
							["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
							["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
							["Velocity"] = Vector3.new(0, 0, -1),
							["Sound"] = game:GetService("ReplicatedStorage").Sounds.HateExplosion,
							["Damage"] = 10
						}
					}

					game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
					wait(1)
					k:Stop()
				end
			end)

			local mouse = game.Players.LocalPlayer:GetMouse()
			mouse.KeyDown:Connect(function(k) 
				if k == "h" then 
					local Anim = Instance.new("Animation")
					Anim.AnimationId = "rbxassetid://4800254068"
					local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
					k:Play()
					k:AdjustSpeed(0.4)
					local args = {
						[1] = getrenv()._G.Pass,
						[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
						[3] = {
							["HitTime"] = 2,
							["Type"] = "Normal",
							["HitEffect"] = "HeavyHitEffect",
							["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
							["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
							["Velocity"] = Vector3.new(0, 0, -1),
							["Sound"] = game:GetService("ReplicatedStorage").Sounds.HateExplosion,
							["Damage"] = 10
						}
					}

					game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
					wait(1)
					k:Stop()
				end
			end)

			local mouse = game.Players.LocalPlayer:GetMouse()
			mouse.KeyDown:Connect(function(k) 
				if k == "h" then 
					local Anim = Instance.new("Animation")
					Anim.AnimationId = "rbxassetid://4800254068"
					local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
					k:Play()
					k:AdjustSpeed(0.4)
					local args = {
						[1] = getrenv()._G.Pass,
						[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
						[3] = {
							["HitTime"] = 2,
							["Type"] = "Normal",
							["HitEffect"] = "HeavyHitEffect",
							["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
							["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
							["Velocity"] = Vector3.new(0, 0, -1),
							["Sound"] = game:GetService("ReplicatedStorage").Sounds.HateExplosion,
							["Damage"] = 10
						}
					}

					game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
					wait(1)
					k:Stop()
				end
			end)

			local mouse = game.Players.LocalPlayer:GetMouse()
			mouse.KeyDown:Connect(function(k) 
				if k == "h" then 
					local Anim = Instance.new("Animation")
					Anim.AnimationId = "rbxassetid://4800254068"
					local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
					k:Play()
					k:AdjustSpeed(0.4)
					local args = {
						[1] = getrenv()._G.Pass,
						[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
						[3] = {
							["HitTime"] = 2,
							["Type"] = "Normal",
							["HitEffect"] = "HeavyHitEffect",
							["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
							["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
							["Velocity"] = Vector3.new(0, 0, -1),
							["Sound"] = game:GetService("ReplicatedStorage").Sounds.HateExplosion,
							["Damage"] = 10
						}
					}

					game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
					wait(1)
					k:Stop()
				end
			end)

			local mouse = game.Players.LocalPlayer:GetMouse()
			mouse.KeyDown:Connect(function(k) 
				if k == "h" then 
					local Anim = Instance.new("Animation")
					Anim.AnimationId = "rbxassetid://4800254068"
					local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
					k:Play()
					k:AdjustSpeed(0.4)
					local args = {
						[1] = getrenv()._G.Pass,
						[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
						[3] = {
							["HitTime"] = 2,
							["Type"] = "Normal",
							["HitEffect"] = "HeavyHitEffect",
							["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
							["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
							["Velocity"] = Vector3.new(0, 0, -1),
							["Sound"] = game:GetService("ReplicatedStorage").Sounds.HateExplosion,
							["Damage"] = 10
						}
					}

					game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
					wait(1)
					k:Stop()
				end
			end)

local cooldown = true
game:GetService("UserInputService").InputBegan:Connect(function(input, IsTyping)
    if IsTyping then return end
    if input.KeyCode == Enum.KeyCode.T then
        if not cooldown then return end
        cooldown = false
        -- Hibox
function hitbox()
    local part = Instance.new("Part",workspace)
    part.Anchored = false
    part.CanCollide = false
    part.Massless = true
    part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-5)
    part.Size = Vector3.new(5,5,5)
    part.Transparency = 0.5
    
    local weld = Instance.new("WeldConstraint",part)
    weld.Part0 = part
    weld.Part1 = game.Players.LocalPlayer.Character.HumanoidRootPart
    
    local enabled = true
    local touched = part.Touched:Connect(function(hit)
        if hit.Parent:FindFirstChild("Humanoid") and hit.Parent ~= game.Players.LocalPlayer.Character then
            if not enabled then return end
            enabled = false
            local number = math.random(1,4)
            
            if number == 1 then
                
                local args = {
    [1] = getrenv()._G.Pass,
    [2] = hit.Parent,
    [3] = {
        ["HitTime"] = 0.2,
        ["Type"] = "Normal",
        ["HitEffect"] = "KnifeHitEffect",
        ["VictimCFrame"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-5),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1,
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Damage"] = 5
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))

                
            elseif number == 2 then
                
                              local args = {
    [1] = getrenv()._G.Pass,
    [2] = hit.Parent,
    [3] = {
        ["HitTime"] = 0.2,
        ["Type"] = "Normal",
        ["HitEffect"] = "KnifeHitEffect",
        ["VictimCFrame"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-5),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2,
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1,
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Damage"] = 5
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
                
            elseif number == 3 then
                
                              local args = {
    [1] = getrenv()._G.Pass,
    [2] = hit.Parent,
    [3] = {
        ["HitTime"] = 0.2,
        ["Type"] = "Normal",
        ["HitEffect"] = "KnifeHitEffect",
        ["VictimCFrame"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-5),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1,
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Damage"] = 5
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
                
            elseif number == 4 then
                
                local args = {
    [1] = getrenv()._G.Pass,
    [2] = hit.Parent,
    [3] = {
        ["HitTime"] = 0.2,
        ["Type"] = "Normal",
        ["HitEffect"] = "KnifeHitEffect",
        ["VictimCFrame"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-5),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1,
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Damage"] = 5
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))

            end
            
            
            
wait(1)
enabled = true

end
    end)
    
    game:GetService("Debris"):AddItem(part, 0.1)
    
end


-- Effects
function TripleEffects()
    local character = game.Players.LocalPlayer.PlayerData.CurrentCharacter.Value.."Moves"
    
    local number = math.random(1,5)
    
    local light1 = Instance.new("Animation")
    light1.AnimationId = "rbxassetid://5079313442"
    
    local light2 = Instance.new("Animation")
    light2.AnimationId = "rbxassetid://5079319635"
    
    local light3 = Instance.new("Animation")
    light3.AnimationId = "rbxassetid://5079321974"
    
    local light4 = Instance.new("Animation")
    light4.AnimationId = "rbxassetid://5079324160"
    
    local light5 = Instance.new("Animation")
    light5.AnimationId = "rbxassetid://5079333382"
    
    if number == 1 then
        print("1")
        game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(light1):Play()
    elseif number == 2 then
        print("2")
        game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(light2):Play()
    elseif number == 3 then
        print("3")
        game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(light3):Play()
    elseif number == 4 then
        print("4")
        game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(light4):Play()
    elseif number == 5 then
        print("5")
        game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(light5):Play()
    end
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main:FindFirstChild(character).ModuleScript.Animations.Slash.Swing1,
        [4] = Color3.new(1,0,0),
        [5] = CFrame.new(Vector3.new(-2.5,-2.5,-2.5), Vector3.new(0,0,0))
    }
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main:FindFirstChild(character).ModuleScript.Animations.Slash.Swing1,
        [4] = Color3.new(1,0,0),
        [5] = CFrame.new(Vector3.new(2.5,2.5,2.5), Vector3.new(0,0,0))
    }
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main:FindFirstChild(character).ModuleScript.Animations.Slash.Swing1,
        [4] = Color3.new(1,0,0),
        [5] = CFrame.new(Vector3.new(0,0,-4.5), Vector3.new(0,0,0))
    }
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))



    
end


-- Make it all happen
for i = 1, 10 do
    wait(0.2)
    TripleEffects()
    hitbox()
end
wait(1)
cooldown = true
    end
end)

local enabled2 = true
game:GetService("UserInputService").InputBegan:Connect(function(input, IsTyping)
    if IsTyping then return end
    if input.KeyCode == Enum.KeyCode.B then
        if not enabled2 then return end
        enabled2 = false
        function slamanim()
    local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://4063930148"
local anim = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)

anim:Play()
anim:AdjustSpeed(1.5)
end

function hitbox()
    local part = Instance.new("Part",game.Workspace)
    part.Anchored = false
    part.CanCollide = false
    part.Massless = true
    part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-2.5)
    part.Size = Vector3.new(5,7.5,5)
    part.Transparency = 0.5
    
    local weld = Instance.new("WeldConstraint",part)
    weld.Part0 = part  
    weld.Part1 = game.Players.LocalPlayer.Character.HumanoidRootPart
    
    local cooldown = true
    local touched = part.Touched:Connect(function(hit)
        if hit.Parent:FindFirstChild("Humanoid") and hit.Parent ~= game.Players.LocalPlayer.Character then
            if not cooldown then return end
            cooldown = false
            game.Players.LocalPlayer.Character.Torso.Anchored = true
            
            
            
            local A_1 = getrenv()._G.Pass
    local A_2 = hit.Parent
    local A_3 = 
    {
        ["HitTime"] = 2, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "KnifeHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback1,
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Velocity"] = Vector3.new(0, 50, 0), 
        ["CombatInv"] = true,
        ["Damage"] = 10
    }
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.2)
          local A_1 = getrenv()._G.Pass
    local A_2 = hit.Parent
    local A_3 = 
    {
        ["HitTime"] = 2, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "KnifeHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback1,
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Velocity"] = Vector3.new(0, -50, 0), 
        ["CombatInv"] = true,
        ["Damage"] = 10
    }
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.2)
          local A_1 = getrenv()._G.Pass
    local A_2 = hit.Parent
    local A_3 = 
    {
        ["HitTime"] = 2, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "KnifeHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback1,
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Velocity"] = Vector3.new(0, 50, 0), 
        ["CombatInv"] = true,
        ["Damage"] = 10
    }
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.2)
          local A_1 = getrenv()._G.Pass
    local A_2 = hit.Parent
    local A_3 = 
    {
        ["HitTime"] = 2, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "KnifeHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback1,
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Velocity"] = Vector3.new(0, -50, 0), 
        ["CombatInv"] = true,
        ["Damage"] = 10
    }
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.2)
          local A_1 = getrenv()._G.Pass
    local A_2 = hit.Parent
    local A_3 = 
    {
        ["HitTime"] = 2, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "KnifeHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback1,
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Velocity"] = Vector3.new(0, 50, 0), 
        ["CombatInv"] = true,
        ["Damage"] = 10
    }
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.2)
          local A_1 = getrenv()._G.Pass
    local A_2 = hit.Parent
    local A_3 = 
    {
        ["HitTime"] = 2, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "KnifeHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback1,
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 50 + Vector3.new(0,-50,0), 
        ["CombatInv"] = true,
        ["Damage"] = 35
    }
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)

game.Players.LocalPlayer.Character.Torso.Anchored = false
wait(3)
-- Script generated by SimpleSpy - credits to exx#9394

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "PlaySound",
        [3] = game:GetService("ReplicatedStorage").Resources.Sounds.Moves.YellowBeam.Fire,
        [4] = game:GetService("Players").LocalPlayer.Character.Head
    }
}

game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = hit.Parent.HumanoidRootPart.CFrame * CFrame.new(0,0,2.5)
            wait(1)
            cooldown = true
        end
    end)
    game:GetService("Debris"):AddItem(part, 0.1)
end
slamanim()
wait(0.75)
hitbox()
wait(1)
enabled2 = true
    end
end)

UIS.InputBegan:Connect(function(Input, IsTyping)
	if IsTyping then return end
	if Input.KeyCode == Enum.KeyCode.G then
    for i = 1,3 do
    wait()
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire, 
      [4] = game.Players.LocalPlayer.Character.Head,
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4905914802"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(0.5)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["HitTime"] = 2,
                ["Type"] = "Normal",
                ["HitEffect"] = "HeavyHitEffect",
                ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                ["Velocity"] = Vector3.new(0, 0, 0),
                ["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
                ["Damage"] = 5
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
       wait(0.2)
local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["HitTime"] = 2,
                ["Type"] = "Normal",
                ["HitEffect"] = "HeavyHitEffect",
                ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                ["Velocity"] = Vector3.new(0, 0, 0),
                ["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
                ["Damage"] = 5
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
       wait(0.2)
local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["HitTime"] = 2,
                ["Type"] = "Normal",
                ["HitEffect"] = "HeavyHitEffect",
                ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                ["Velocity"] = Vector3.new(0, 0, 0),
                ["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
                ["Damage"] = 5
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
       wait(0.2)
local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["HitTime"] = 2,
                ["Type"] = "Normal",
                ["HitEffect"] = "HeavyHitEffect",
                ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                ["Velocity"] = Vector3.new(0, 0, 0),
                ["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
                ["Damage"] = 5
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
       wait(0.2)
local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["HitTime"] = 2,
                ["Type"] = "Normal",
                ["HitEffect"] = "HeavyHitEffect",
                ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                ["Velocity"] = Vector3.new(100, 0, 100),
                ["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
                ["Damage"] = 4
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
       wait(0.2)
k:Stop()
        end
    end
end)
UIS.InputBegan:Connect(function(Input, IsTyping)
	if IsTyping then return end
	if Input.KeyCode == Enum.KeyCode.G then
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4905914802"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(0.5)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["HitTime"] = 2,
                ["Type"] = "Normal",
                ["HitEffect"] = "HeavyHitEffect",
                ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                ["Velocity"] = Vector3.new(0, 0, 0),
                ["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
                ["Damage"] = 4
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
       wait(0.2)
local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["HitTime"] = 2,
                ["Type"] = "Normal",
                ["HitEffect"] = "HeavyHitEffect",
                ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                ["Velocity"] = Vector3.new(0, 0, 0),
                ["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
                ["Damage"] = 4
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
       wait(0.2)
local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["HitTime"] = 2,
                ["Type"] = "Normal",
                ["HitEffect"] = "HeavyHitEffect",
                ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                ["Velocity"] = Vector3.new(0, 0, 0),
                ["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
                ["Damage"] = 4
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
       wait(0.2)
local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["HitTime"] = 2,
                ["Type"] = "Normal",
                ["HitEffect"] = "HeavyHitEffect",
                ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                ["Velocity"] = Vector3.new(0, 0, 0),
                ["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
                ["Damage"] = 4
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
       wait(0.2)
local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["HitTime"] = 2,
                ["Type"] = "Normal",
                ["HitEffect"] = "HeavyHitEffect",
                ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                ["Velocity"] = Vector3.new(0, 0, 0),
                ["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
                ["Damage"] = 4
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
       wait(0.2)
k:Stop()
    end
end)

for i = 1,2 do
wait()
game.Players.LocalPlayer:GetMouse()

UIS.InputBegan:Connect(function(Input, IsTyping)
	if IsTyping then return end
	if Input.KeyCode == Enum.KeyCode.G then
                       local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,5,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,7,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,9,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,11,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,13,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,15,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,17,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,19,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,21,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,23,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,25,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,27,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,29,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,31,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,33,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,35,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,37,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,39,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,41,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
wait(0.1)
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,5,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,7,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,9,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,11,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,13,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,15,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,17,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,19,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,21,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,23,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,25,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,27,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,29,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,31,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,33,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,35,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,37,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,39,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,41,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
wait(0.1)
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,5,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,7,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,9,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,11,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,13,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,15,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,17,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,19,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,21,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,23,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,25,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,27,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,29,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,31,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,33,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,35,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,37,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,39,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,41,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
wait(0.1)
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,5,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,7,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,9,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,11,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,13,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,15,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,17,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,19,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,21,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,23,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,25,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,27,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,29,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,31,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,33,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,35,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,37,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,39,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,41,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
wait(0.1)
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,5,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,7,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,9,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,11,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,13,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,15,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,17,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,19,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,21,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,23,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,25,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,27,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,29,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,31,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,33,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,35,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,37,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,39,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,41,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
wait(0.1)
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,5,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,7,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,9,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,11,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,13,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,15,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,17,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,19,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,21,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,23,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,25,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,27,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,29,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,31,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,33,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,35,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,37,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,39,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,41,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
    end
end)
UIS.InputBegan:Connect(function(Input, IsTyping)
	if IsTyping then return end
	if Input.KeyCode == Enum.KeyCode.G then
wait(0.1)
wait(0.1)
wait(0.1)
wait(0.1)
                       local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,5,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,7,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,9,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,11,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,13,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,15,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,17,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,19,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,21,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,23,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,25,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,27,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,29,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,31,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,33,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,35,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,37,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,39,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,41,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
wait(0.1)
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,5,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,7,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,9,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,11,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,13,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,15,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,17,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,19,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,21,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,23,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,25,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,27,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,29,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,31,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,33,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,35,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,37,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,39,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,41,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
wait(0.1)
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,5,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,7,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,9,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,11,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,13,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,15,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,17,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,19,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,21,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,23,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,25,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,27,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,29,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,31,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,33,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,35,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,37,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,39,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,41,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
wait(0.1)
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,5,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,7,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,9,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,11,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,13,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,15,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,17,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,19,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,21,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,23,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,25,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,27,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,29,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,31,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,33,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,35,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,37,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,39,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,41,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
wait(0.1)
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,5,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,7,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,9,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,11,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,13,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,15,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,17,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,19,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,21,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,23,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,25,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,27,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,29,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,31,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,33,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,35,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,37,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,39,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,41,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
wait(0.1)
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,5,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,7,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,9,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,11,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,13,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,15,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,17,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,19,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,21,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,23,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,25,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,27,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,29,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,31,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,33,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,35,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,37,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(1, 0, 0),
        [5] = CFrame.new(0,39,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
                local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.GTCharaMoves.ModuleScript.Animations.Slash["Swing2"],
        [4] = Color3.new(0, 1, 1),
        [5] = CFrame.new(0,41,0,0,1,0,0,0,0,1,0,0)
    },
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
        end
    end)
end
--attack2

local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "y" then
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://4920626240"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2.5, 
					["Type"] = "Knockback", 
					["HitEffect"] = "LightHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
					["Velocity"] = Vector3.new(0, -50, -0), 
					["CombatInv"] = true,
					["Damage"] = 40
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "y" then wait(0.5)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2.5, 
					["Type"] = "Knockback", 
					["HitEffect"] = "LightHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
					["Velocity"] = Vector3.new(0, -0.1, -0), 
					["CombatInv"] = true,
					["Damage"] = 40
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "y" then wait(1)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2.5, 
					["Type"] = "Knockback", 
					["HitEffect"] = "LightHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
					["Velocity"] = Vector3.new(0, -0.1, -0), 
					["CombatInv"] = true,
					["Damage"] = 40
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "y" then wait(1.2)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 5, 
					["Type"] = "Knockback", 
					["HitEffect"] = "LightHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
					["Velocity"] = Vector3.new(0, -0.1, -0), 
					["CombatInv"] = true,
					["Damage"] = 40
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "y" then wait(1.4)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2.5, 
					["Type"] = "Knockback", 
					["HitEffect"] = "LightHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
					["Velocity"] = Vector3.new(0, -0.1, -0), 
					["CombatInv"] = true,
					["Damage"] = 40
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "y" then wait(1.6)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2.5, 
					["Type"] = "Knockback", 
					["HitEffect"] = "LightHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
					["Velocity"] = Vector3.new(0, -0.1, -0), 
					["CombatInv"] = true,
					["Damage"] = 40
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "y" then wait(1.8)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2.5, 
					["Type"] = "Knockback", 
					["HitEffect"] = "LightHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
					["Velocity"] = Vector3.new(0, -0.1, -0), 
					["CombatInv"] = true,
					["Damage"] = 40
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "y" then wait(2)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2.5, 
					["Type"] = "Knockback", 
					["HitEffect"] = "LightHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
					["Velocity"] = Vector3.new(0, -0.1, -0), 
					["CombatInv"] = true,
					["Damage"] = 40
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "y" then wait(2.2)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2.5, 
					["Type"] = "Knockback", 
					["HitEffect"] = "LightHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
					["Velocity"] = Vector3.new(0, -0.1, -0), 
					["CombatInv"] = true,
					["Damage"] = 40
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "y" then wait(2.4)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2.5, 
					["Type"] = "Knockback", 
					["HitEffect"] = "LightHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
					["Velocity"] = Vector3.new(0, -0.1, -0), 
					["CombatInv"] = true,
					["Damage"] = 40
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "y" then wait(2.6)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2.5, 
					["Type"] = "Knockback", 
					["HitEffect"] = "LightHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
					["Velocity"] = Vector3.new(0, -0.1, -0), 
					["CombatInv"] = true,
					["Damage"] = 40
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "y" then wait(2.8)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2.5, 
					["Type"] = "Knockback", 
					["HitEffect"] = "LightHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
					["Velocity"] = Vector3.new(0, -0.1, -0), 
					["CombatInv"] = true,
					["Damage"] = 40
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "y" then wait(3)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2.5, 
					["Type"] = "Knockback", 
					["HitEffect"] = "LightHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
					["Velocity"] = Vector3.new(0, -0.1, -0), 
					["CombatInv"] = true,
					["Damage"] = 40
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "y" then wait(3.2)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2.5, 
					["Type"] = "Knockback", 
					["HitEffect"] = "LightHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
					["Velocity"] = Vector3.new(0, -0.1, -0), 
					["CombatInv"] = true,
					["Damage"] = 40
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "y" then wait(3.4)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2.5, 
					["Type"] = "Knockback", 
					["HitEffect"] = "LightHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
					["Velocity"] = Vector3.new(0, -0.1, -0), 
					["CombatInv"] = true,
					["Damage"] = 40
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "y" then wait(3.6)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2.5, 
					["Type"] = "Knockback", 
					["HitEffect"] = "LightHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
					["Velocity"] = Vector3.new(0, -0.1, -0), 
					["CombatInv"] = true,
					["Damage"] = 40
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "y" then wait(3.8)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2.5, 
					["Type"] = "Knockback", 
					["HitEffect"] = "LightHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
					["Velocity"] = Vector3.new(0, -0.1, -0), 
					["CombatInv"] = true,
					["Damage"] = 40
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
		end
	end)

	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "y" then wait(4)
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "HeavyHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
					["Velocity"] = Vector3.new(0, -0.1, -0), 
					["CombatInv"] = true,
					["Damage"] = 40
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
		end
	end)
	wait()
	local player = game.Players.LocalPlayer
	repeat wait() until player.Character.Humanoid
	local humanoid = player.Character.Humanoid
	local mouse = player:GetMouse()


	local anim = Instance.new("Animation")
	anim.AnimationId = "rbxassetid://4920626240"

	mouse.KeyDown:connect(function(key)
		if key == "y" then
			local playAnim = humanoid:LoadAnimation(anim)
			playAnim:Play()
			wait(2)
			playAnim:Stop()

		end
	end)
	wait()
	local player = game.Players.LocalPlayer
	repeat wait() until player.Character.Humanoid
	local humanoid = player.Character.Humanoid
	local mouse = player:GetMouse()


	local anim = Instance.new("Animation")
	anim.AnimationId = "rbxassetid://4920871999"

	mouse.KeyDown:connect(function(key)
		if key == "y" then
			local playAnim = humanoid:LoadAnimation(anim)
			wait(1.9)
			playAnim:Play()
			wait(4)
			playAnim:Stop()

		end
	end)

--attack3

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "c" then
    local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://3815756705"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "c" then
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
    {
["HitTime"] = 2.5,
["Type"] = "Knockback", 
["HitEffect"] = "BoneHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneDischarge,
["CameraShake"] = "BigExplosion",
["Velocity"] = Vector3.new(0, 0, 0),
["CombatInv"] = true,
["Damage"] = 35
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
    Event:InvokeServer(A_1, A_2, A_3)
end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "c" then
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
    {
["HitTime"] = 2.5,
["Type"] = "Knockback", 
["HitEffect"] = "BoneHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneDischarge,
["CameraShake"] = "BigExplosion",
["Velocity"] = Vector3.new(0, 0, 0),
["CombatInv"] = true,
["Damage"] = 35
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
    Event:InvokeServer(A_1, A_2, A_3)
end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "c" then
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
    {
["HitTime"] = 2.5,
["Type"] = "Knockback", 
["HitEffect"] = "BoneHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneDischarge,
["CameraShake"] = "BigExplosion",
["Velocity"] = Vector3.new(0, 0, 0),
["CombatInv"] = true,
["Damage"] = 35
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
    Event:InvokeServer(A_1, A_2, A_3)
end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "c" then
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
    {
["HitTime"] = 2.5,
["Type"] = "Knockback", 
["HitEffect"] = "BoneHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneDischarge,
["CameraShake"] = "BigExplosion",
["Velocity"] = Vector3.new(0, 0, 0),
["CombatInv"] = true,
["Damage"] = 35
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
    Event:InvokeServer(A_1, A_2, A_3)
end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "c" then
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
    {
["HitTime"] = 2.5,
["Type"] = "Knockback", 
["HitEffect"] = "BoneHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneDischarge,
["CameraShake"] = "BigExplosion",
["Velocity"] = Vector3.new(0, 0, 0),
["CombatInv"] = true,
["Damage"] = 35
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
    Event:InvokeServer(A_1, A_2, A_3)
end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "c" then
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
    {
["HitTime"] = 2.5,
["Type"] = "Knockback", 
["HitEffect"] = "BoneHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneDischarge,
["CameraShake"] = "BigExplosion",
["Velocity"] = Vector3.new(0, 0, 0),
["CombatInv"] = true,
["Damage"] = 35
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
    Event:InvokeServer(A_1, A_2, A_3)
end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "c" then
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
    {
["HitTime"] = 2.5,
["Type"] = "Knockback", 
["HitEffect"] = "BoneHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneDischarge,
["CameraShake"] = "BigExplosion",
["Velocity"] = Vector3.new(0, 0, 0),
["CombatInv"] = true,
["Damage"] = 35
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
    Event:InvokeServer(A_1, A_2, A_3)
end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "c" then
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
    {
["HitTime"] = 2.5,
["Type"] = "Knockback", 
["HitEffect"] = "BoneHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneDischarge,
["CameraShake"] = "BigExplosion",
["Velocity"] = Vector3.new(0, 0, 0),
["CombatInv"] = true,
["Damage"] = 35
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
    Event:InvokeServer(A_1, A_2, A_3)
end
end)

--[[attack5]]

local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "x" then game.Players.LocalPlayer:GetMouse()
			local A_1 = 
				{
					[1] = getrenv()._G.Pass,
					[2] = "Chatted", 
					[3] = "[The Fallen King]: Just sit there and die..", 
					[4] = Color3.new(0,255,255)
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
					["Sound"] = game.game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
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
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.ClashStart,
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
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.ClashStart,
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
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.ClashStart,
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
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.ClashStart,
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
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.ClashStart,
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
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.ClashStart,
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
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.ClashStart,
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
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
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
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
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
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
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
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
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
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
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
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
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
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
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
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
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
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
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
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
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
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
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
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
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
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
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
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
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
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
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
					["Sound"] = game:GetService("ReplicatedStorage").Objects.Moves.Kamehameha.Sound.Fire,
					["Damage"] = 40
				}
			}


			game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
			wait(99999)
			k:Stop()
		end
	end)

--A

local UIS = game:GetService("UserInputService")
	UIS.InputBegan:Connect(function(Input, IsTyping)
		if IsTyping then return end
		if Input.KeyCode == Enum.KeyCode.N then
			local A_1 = 
				{
					[1] = getrenv()._G.Pass,
					[2] = "Chatted", 
					[3] = "[The Fallen King]: Stop moving..", 
					[4] = Color3.new(255,0,0)
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Knockback", 
					["HitEffect"] = "HeavyHitEffect", 
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
		end
	end)

local UIS = game:GetService("UserInputService")
	UIS.InputBegan:Connect(function(Input, IsTyping)
		if IsTyping then return end
		if Input.KeyCode == Enum.KeyCode.Zero then
game.Players.LocalPlayer.Character.Humanoid.Health = 6969
end
end)

local UIS = game:GetService("UserInputService")
	UIS.InputBegan:Connect(function(Input, IsTyping)
		if IsTyping then return end
		if Input.KeyCode == Enum.KeyCode.Zero then
local A_1 = 
{
    [1] = getrenv()._G.Pass,
    [2] = "SpecialHell2", 
    [3] = "Spawn", 
    [4] = Vector3.new(-202.116302, 1144.64111, 22.1347771)
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end
end)
