game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Frisk"
wait(1.6)
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.Text = "Aubrey"
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.TextColor3 = Color3.fromRGB(230, 0, 255)

local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.Character.Head
Sound.Volume = 5
Sound.Playing = false
Sound.Looped = false
Sound.SoundId = "rbxassetid://6564956178"
Sound.Name = "Voice"
Sound.PlaybackSpeed = 1.2
wait(0.5)
game.Players.LocalPlayer.Character.Head.Voice:Destroy()
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
local v1 = {
        [1] = getrenv()._G.Pass, 
        [2] = "Damage", 
        [3] = math.huge, 
        [4] = game.Players.LocalPlayer.Character
    }
    local event = game:GetService("ReplicatedStorage").Remotes.Events
    
    event:FireServer(v1)
    wait(2)
            local A_1 = 
{
	[1] = getrenv()._G.Pass,
	[2] = "EquipArmor", 
	[3] = "FadedRibbon"
}
game:GetService("ReplicatedStorage").Remotes.FriskMoves:InvokeServer(A_1)

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

game.Players.LocalPlayer.Character.FadedRibbon.Ribbon.Color = Color3.fromRGB(236, 255, 107)
local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.CharaPlaylist
Sound.Volume = 1
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://6773031777"
Sound.Name = "1A"
Sound.PlaybackSpeed = 1
wait(0.5)
game.Players.LocalPlayer.CharaPlaylist["1A"]:Destroy()

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(player.Backpack.Main:GetChildren()) do
er = string.lower(v.Name)
if string.match(er,'moves') then
v.Animations.Idle.AnimationId = "rbxassetid://5079250270"-- change specifc animations to whatever you want
v.Animations.Walk.AnimationId = "rbxassetid://5079260989"
v.Animations.Run.AnimationId = "rbxassetid://5079265988"
v.Animations.Block.AnimationId = "rbxassetid://4516285592"
print('e')
end
end
end)


local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "v" then
     talk([[[Neutral]
Normal damage]],Color3.fromRGB(255, 255, 255))
    var = 1
    game.Players.LocalPlayer.Character.RoseShield:Destroy()
    game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.Text = "Aubrey"
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.TextColor3 = Color3.fromRGB(230, 0, 255)
end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "b" then
     talk([[[Angry]
Double Damage]],Color3.fromRGB(255, 255, 255))
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.Text = "Aubrey"
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.TextColor3 = Color3.fromRGB(255, 188, 0)
    var = 2
    game.Players.LocalPlayer.Character.RoseShield:Destroy()
end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "n" then
     talk([[[Happy]
Double Hits + 1.5x damage]],Color3.fromRGB(255, 255, 255))
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.Text = "Aubrey"
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.TextColor3 = Color3.fromRGB(222, 255, 0)
    var = 3
    game.Players.LocalPlayer.Character.RoseShield:Destroy()
end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "m" then
     talk([[[Sad]
Take less damage and do less damage]],Color3.fromRGB(255, 255, 255))
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.Text = "Aubrey"
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.TextColor3 = Color3.fromRGB(0, 0, 255)
    var = 4
        local A_1 = 
{
	[1] = getrenv()._G.Pass,
	[2] = "EquipWeapon", 
	[3] = "RoseShield"
}
game:GetService("ReplicatedStorage").Remotes.FriskMoves:InvokeServer(A_1)
end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "p" then
     talk([[[Enraged]
...]],Color3.fromRGB(255, 0, 0))
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.Text = "Aubrey"
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.TextColor3 = Color3.fromRGB(255, 0, 0)
    var = 5
    game.Players.LocalPlayer.Character.RoseShield:Destroy()
end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "8" then
    talk([[[Now Playing]
It Means Everything]],Color3.fromRGB(255, 255, 255))
    local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.CharaPlaylist
Sound.Volume = 1
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://6773031777"
Sound.Name = "1A"
Sound.PlaybackSpeed = 1
wait(0.5)
game.Players.LocalPlayer.CharaPlaylist["1A"]:Destroy()
end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "9" then
    talk([[[Now Playing]
Bo en - my time]],Color3.fromRGB(255, 255, 255))
    local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.CharaPlaylist
Sound.Volume = 1
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://656390264"
Sound.Name = "1A"
Sound.PlaybackSpeed = 1
wait(0.5)
game.Players.LocalPlayer.CharaPlaylist["1A"]:Destroy()
end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "0" then
    talk([[[Now Playing]
Tussle Among Trees]],Color3.fromRGB(255, 255, 255))
    local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.CharaPlaylist
Sound.Volume = 1
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://6237824213"
Sound.Name = "1A"
Sound.PlaybackSpeed = 1
wait(0.5)
game.Players.LocalPlayer.CharaPlaylist["1A"]:Destroy()
end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "-" then
    talk([[[Now Playing]
Nothing]],Color3.fromRGB(255, 255, 255))
    local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.CharaPlaylist
Sound.Volume = 1
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://0"
Sound.Name = "1A"
Sound.PlaybackSpeed = 1
wait(0.5)
game.Players.LocalPlayer.CharaPlaylist["1A"]:Destroy()

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "7" then
    talk([[[Now Playing]
Good Morning]],Color3.fromRGB(255, 255, 255))
    local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.CharaPlaylist
Sound.Volume = 3
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://6247107469"
Sound.Name = "1A"
Sound.PlaybackSpeed = 1
wait(0.5)
game.Players.LocalPlayer.CharaPlaylist["1A"]:Destroy()
end
end)
end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "6" then
    talk([[[Now Playing]
Lost At A Sleepover]],Color3.fromRGB(255, 255, 255))
    local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.CharaPlaylist
Sound.Volume = 1
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://6410244052"
Sound.Name = "1A"
Sound.PlaybackSpeed = 1
wait(0.5)
game.Players.LocalPlayer.CharaPlaylist["1A"]:Destroy()
end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "5" then
    talk([[[Now Playing]
Gator Mischief]],Color3.fromRGB(255, 255, 255))
    local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.CharaPlaylist
Sound.Volume = 1
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://6237974197"
Sound.Name = "1A"
Sound.PlaybackSpeed = 1
wait(0.5)
game.Players.LocalPlayer.CharaPlaylist["1A"]:Destroy()
end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "u" then
clone = true
game:GetService("RunService").RenderStepped:Connect(function()
    if clone == true then
    repeat wait()
            local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "EquipWeapon", 
                [3] = "RelKnife"
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.FriskMoves
            Event:InvokeServer(A_1)
    until clone == false
end
end)
end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "y" then
    clone = false
end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "=" then
clone = true
game:GetService("RunService").RenderStepped:Connect(function()
    if clone == true then
    repeat wait()
            local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "EquipArmor", 
                [3] = "TemmieArmor"
            }
            local Event = game:GetService("ReplicatedStorage").Remotes.FriskMoves
            Event:InvokeServer(A_1)
    until clone == false
end
end)
end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "," then
    talk([[[Now Playing]
Lost Library]],Color3.fromRGB(255, 255, 255))
    local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.CharaPlaylist
Sound.Volume = 1
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://6247751647"
Sound.Name = "1A"
Sound.PlaybackSpeed = 1
wait(0.5)
game.Players.LocalPlayer.CharaPlaylist["1A"]:Destroy()
end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "." then
    talk([[[Now Playing]
Lost, Then Found!]],Color3.fromRGB(255, 255, 255))
    local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.CharaPlaylist
Sound.Volume = 1
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://6486679766"
Sound.Name = "1A"
Sound.PlaybackSpeed = 1
wait(0.5)
game.Players.LocalPlayer.CharaPlaylist["1A"]:Destroy()
end
end)
game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["X"] then
        if var == 1 then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4800266314"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Normal",
        ["HitEffect"] = "LightHitEffect3",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        elseif var == 2 then
            local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4800266314"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Knockback",
        ["HitEffect"] = "LightHitEffect3",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 20
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        elseif var == 3 then
            local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4800266314"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2.5,
        ["Type"] = "Normal",
        ["HitEffect"] = "LightHitEffect3",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4348788816"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2.5,
        ["Type"] = "Knockback",
        ["HitEffect"] = "LightHitEffect3",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 50, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Ping,
        ["Damage"] = 15
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            
        elseif var == 4 then
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://4800266314"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Knockback",
        ["HitEffect"] = "LightHitEffect3",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 5
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        elseif var == 5 then
                            local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4906030889"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Normal",
        ["HitEffect"] = "LightHitEffect3",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4906045655"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Normal",
        ["HitEffect"] = "LightHitEffect3",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4906056809"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Normal",
        ["HitEffect"] = "LightHitEffect3",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4906072632"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Normal",
        ["HitEffect"] = "LightHitEffect3",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4906092495"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Normal",
        ["HitEffect"] = "LightHitEffect3",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4906108508"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2.5,
        ["Type"] = "Knockback",
        ["HitEffect"] = "LightHitEffect3",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 50, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Break,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        end
    end
end)
game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["C"] then
        if var == 1 then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4820734492"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Normal",
        ["HitEffect"] = "LightHitEffect3",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
Anim.AnimationId = "rbxassetid://4300091335"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Normal",
        ["HitEffect"] = "LightHitEffect3",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 5, 0),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Break,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        elseif var == 2 then
            local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4300200684"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Knockback",
        ["HitEffect"] = "LightHitEffect3",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, -50, -1),
        ["CombatInv"] = true,
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 20
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(0.5)
            local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4300091335"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Knockback",
        ["HitEffect"] = "LightHitEffect3",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 50, -1),
        ["CombatInv"] = true,
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        elseif var == 3 then
            local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4800266314"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2.5,
        ["Type"] = "Normal",
        ["HitEffect"] = "LightHitEffect3",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4348788816"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2.5,
        ["Type"] = "Knockback",
        ["HitEffect"] = "LightHitEffect3",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 50, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Ping,
        ["Damage"] = 15
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            
        elseif var == 4 then
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://4800266314"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Knockback",
        ["HitEffect"] = "LightHitEffect3",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 5
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))

        elseif var == 5 then
                            local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4800416901"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Normal",
        ["HitEffect"] = "LightHitEffect3",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://5776233108"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Normal",
        ["HitEffect"] = "LightHitEffect3",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4800438618"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Normal",
        ["HitEffect"] = "LightHitEffect3",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4800745250"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Normal",
        ["HitEffect"] = "LightHitEffect3",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4800749197"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Normal",
        ["HitEffect"] = "LightHitEffect3",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4800440761"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2.5,
        ["Type"] = "Knockback",
        ["HitEffect"] = "LightHitEffect3",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(50, 20, 50),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Break,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        end
    end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "t" then
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
    {
["HitTime"] = 2.5,
["Type"] = "Knockback", 
["HitEffect"] = "BoneHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
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
if k == "t" then
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
    {
["HitTime"] = 2.5,
["Type"] = "Knockback", 
["HitEffect"] = "BoneHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
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
if k == "t" then
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
    {
["HitTime"] = 2.5,
["Type"] = "Knockback", 
["HitEffect"] = "BoneHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
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
if k == "t" then
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
    {
["HitTime"] = 2.5,
["Type"] = "Knockback", 
["HitEffect"] = "BoneHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
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
if k == "t" then
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
    {
["HitTime"] = 2.5,
["Type"] = "Knockback", 
["HitEffect"] = "BoneHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
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
if k == "t" then
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
    {
["HitTime"] = 2.5,
["Type"] = "Knockback", 
["HitEffect"] = "BoneHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
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
if k == "t" then
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
    {
["HitTime"] = 2.5,
["Type"] = "Knockback", 
["HitEffect"] = "BoneHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
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
if k == "t" then
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
    {
["HitTime"] = 2.5,
["Type"] = "Knockback", 
["HitEffect"] = "BoneHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
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
if k == "t" then
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
    {
["HitTime"] = 2.5,
["Type"] = "Knockback", 
["HitEffect"] = "BoneHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
["CameraShake"] = "BigExplosion",
["Velocity"] = Vector3.new(0, 0, 0),
["CombatInv"] = true,
["Damage"] = 35
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
    Event:InvokeServer(A_1, A_2, A_3)
end
end)local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "t" then
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
    {
["HitTime"] = 2.5,
["Type"] = "Knockback", 
["HitEffect"] = "BoneHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
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
if k == "h" then
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

repeat wait() until game.Players.LocalPlayer.Character.Humanoid.Health <= 50
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
        local A_1 = 
{
	[1] = getrenv()._G.Pass,
	[2] = "EquipWeapon", 
	[3] = "RoseShield"
}
game:GetService("ReplicatedStorage").Remotes.FriskMoves:InvokeServer(A_1)
wait(1)
local A_1 = 
{
	[1] = getrenv()._G.Pass,
	[2] = "Blocking", 
	[3] = true
}
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(A_1)
game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = 0
local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.CharaPlaylist
Sound.Volume = 3
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://6714449388"
Sound.Name = "1A"
Sound.PlaybackSpeed = 1
wait(0.5)
game.Players.LocalPlayer.CharaPlaylist["1A"]:Destroy()
    var = 6
    local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4460182501"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
talk([[[Aubrey]
What the hell?]],Color3.fromRGB(255, 0, 239))
wait(2)
    local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4416715001"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
wait(1)
talk([[[Aubrey]
Is That?..]],Color3.fromRGB(255, 0, 239))
wait(1)
talk([[[Aubrey]
Is that a knife?]],Color3.fromRGB(255, 0, 239))
wait(2)
talk([[[Aubrey]
Heh.. I thought I Was Dangerous.. With a spiked bat..]],Color3.fromRGB(255, 0, 239))
wait(6)
talk([[[Aubrey]
Guess staying in your house for what.. 3 years can have an effect on you]],Color3.fromRGB(255, 0, 239))
wait(5)
talk([[[Aubrey]
after your sister passed away..]],Color3.fromRGB(255, 0, 239))
wait(3)
talk([[[Aubrey]
...]],Color3.fromRGB(255, 0, 239))
wait(2)
talk([[[Aubrey]
Where were you?.. when Mari Died?]],Color3.fromRGB(255, 0, 239))
wait(5)
talk([[[Aubrey]
In your home.. playing make believe in your dreams?]],Color3.fromRGB(255, 0, 239))
wait(4)
talk([[[Aubrey]
WHERE WERE ANY OF YOU WHEN MARI DIED!!!!]],Color3.fromRGB(255, 0, 239))
wait(5)
talk([[[Aubrey]
I had to suffer all of that alone.. nobody to help..]],Color3.fromRGB(255, 0, 239))
wait(5)
talk([[[Aubrey]
I thought there would be somebody there to be with me..]],Color3.fromRGB(255, 0, 239))
wait(5)
talk([[[Aubrey]
You guys wern't there for me when mari died.. so why the hell..]],Color3.fromRGB(255, 0, 239))
wait(6)
talk([[[Aubrey]
Do I have to accept you now?]],Color3.fromRGB(255, 0, 239))
k:Stop()
spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(player.Backpack.Main:GetChildren()) do
er = string.lower(v.Name)
if string.match(er,'moves') then
v.Animations.Idle.AnimationId = "rbxassetid://4458837452"-- change specifc animations to whatever you want
v.Animations.Walk.AnimationId = "rbxassetid://4458849950"
v.Animations.Run.AnimationId = "rbxassetid://4458849950"
v.Animations.Block.AnimationId = "rbxassetid://4516285592"
print('e')
end
end
end)
local A_1 = 
{
	[1] = getrenv()._G.Pass,
	[2] = "Blocking", 
	[3] = false
}
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(A_1)
game.Players.LocalPlayer.Character.RoseShield:Destroy()
game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = 10