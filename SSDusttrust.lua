
-- Core
local player = game.Players.LocalPlayer
local char = player.Character
camfix = 0
camfix2 = 15
camfix3 = 15
camfix4 = 15
SpecialAttackFinish = false
phase3end = true

wait(3)
local pass = getrenv()._G.Pass
local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer
local mouse = localPlayer:GetMouse()
wait(0.5)
local root = localPlayer.Character.HumanoidRootPart
wait(2)
local humanoid = localPlayer.Character:WaitForChild("Humanoid")
local CAS = game:GetService("ContextActionService")
local FREEZE_COMMAND  = "Stunned"
CAS:UnbindAction(FREEZE_COMMAND)

local humanoid = localPlayer.Character:WaitForChild("Humanoid")

humanoid.Died:Connect(function()
print("died")
for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
v:Destroy()
end
dead = true
inv = false
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["Eight"] then
phase3end = false
end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["Seven"] then
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "TakeStamina",
        [3] = 2300
    }
}
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["KeypadEight"] then
print("Phase Skip - 4")
purpleChat = false
loadstring(game:HttpGet("https://raw.githubusercontent.com/Shitty-script-bro/SoulShitterMain/main/divine%20terror.lua"))()
end
end)

function createbone()
    bonesword = true
repeat if game.Players.LocalPlayer.Character.Bone.Transparency ~= 0 then
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "SpawnBone", 
	[3] = true, 
	[4] = false
}
local Event = game:GetService("ReplicatedStorage").Remotes.SansMoves
Event:InvokeServer(A_1)
end
wait(0.2)
until bonesword == false
end

function deletebone()
    bonesword = false
    local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "SpawnBone", 
	[3] = false 
}
local Event = game:GetService("ReplicatedStorage").Remotes.SansMoves
Event:InvokeServer(A_1)
end

function Chat(text,color)
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

function stun(val)
if val == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
CAS:BindActionAtPriority(
    FREEZE_COMMAND,
    function() 
        return Enum.ContextActionResult.Sink
    end,
    false,
    Enum.ContextActionPriority.High.Value,
    Enum.KeyCode.W,
    Enum.KeyCode.S,
    Enum.KeyCode.A,
    Enum.KeyCode.D,
    Enum.KeyCode.F,
    Enum.KeyCode.R,
    Enum.KeyCode.One,
    Enum.KeyCode.Two,
    Enum.KeyCode.Three,
    Enum.KeyCode.Four,
    Enum.KeyCode.Five,
    Enum.KeyCode.Six,
    Enum.KeyCode.Seven,
    Enum.KeyCode.Eight,
    Enum.KeyCode.Nine,
    Enum.KeyCode.Zero
    )
elseif val == false then
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
CAS:UnbindAction(FREEZE_COMMAND)
end
end


function inv(val)
if (val) == true then

getrenv()._G.P = true
getrenv()._G.PP = true
function st(String,Start)
   return string.sub(String,1,string.len(Start))==Start
end
spawn(function()
while wait() and getrenv()._G.P do
local ohTable1 = {
	[1] = getrenv()._G.Pass,
	[2] = "InvFrames",
	[3] = 0.2
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(ohTable1)
end
end)
spawn(function()
while wait() and getrenv()._G.PP do
xpcall(function()
for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "InvDeleting" then
print("YEET "..v.Parent.Name)
v.Parent=nil
elseif st(v.Name, "Hit") or st(v.Name, "InCutscene") or st(v.Name, "StatsDebuff") or st(v.Name, "Damage") or st(v.Name, "StayGrounded") or st(v.Name, "Hitt") or st(v.Name, "netOwner") then
print("YEETEEY "..v.Name)
v.Parent=nil
end
for _,v2 in pairs(v:GetChildren()) do
if v2.Name == "InvDeleting" then
print("YEET "..v2.Parent.Name)
v2.Parent=nil
end
end
end
end, function(e)
print(e)
end)
end
end)
wait()
spawn(function()
while wait() and getrenv()._G.P do
local ohTable1 = {
	[1] = getrenv()._G.Pass,
	[2] = "InvFrames",
	[3] = 0.2
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(ohTable1)
end
end)
spawn(function()
while wait() and getrenv()._G.PP do
xpcall(function()
for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "InvDeleting" then
print("YEET "..v.Parent.Name)
v.Parent=nil
elseif st(v.Name, "Hit") or st(v.Name, "InCutscene") or st(v.Name, "StatsDebuff") or st(v.Name, "Damage") or st(v.Name, "StayGrounded") or st(v.Name, "Hitt") or st(v.Name, "netOwner") then
print("YEETEEY "..v.Name)
v.Parent=nil
end
for _,v2 in pairs(v:GetChildren()) do
if v2.Name == "InvDeleting" then
print("YEET "..v2.Parent.Name)
v2.Parent=nil
end
end
end
end, function(e)
print(e)
end)
end
end)
wait()
spawn(function()
while wait() and getrenv()._G.P do
local ohTable1 = {
	[1] = getrenv()._G.Pass,
	[2] = "InvFrames",
	[3] = 0.2
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(ohTable1)
end
end)
spawn(function()
while wait() and getrenv()._G.PP do
xpcall(function()
for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "InvDeleting" then
print("YEET "..v.Parent.Name)
v.Parent=nil
elseif st(v.Name, "Hit") or st(v.Name, "InCutscene") or st(v.Name, "StatsDebuff") or st(v.Name, "Damage") or st(v.Name, "StayGrounded") or st(v.Name, "Hitt") or st(v.Name, "netOwner") then
print("YEETEEY "..v.Name)
v.Parent=nil
end
for _,v2 in pairs(v:GetChildren()) do
if v2.Name == "InvDeleting" then
print("YEET "..v2.Parent.Name)
v2.Parent=nil
end
end
end
end, function(e)
print(e)
end)
end
end)
wait()
spawn(function()
while wait() and getrenv()._G.P do
local ohTable1 = {
	[1] = getrenv()._G.Pass,
	[2] = "InvFrames",
	[3] = 0.2
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(ohTable1)
end
end)
spawn(function()
while wait() and getrenv()._G.PP do
xpcall(function()
for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "InvDeleting" then
print("YEET "..v.Parent.Name)
v.Parent=nil
elseif st(v.Name, "Hit") or st(v.Name, "InCutscene") or st(v.Name, "StatsDebuff") or st(v.Name, "Damage") or st(v.Name, "StayGrounded") or st(v.Name, "Hitt") or st(v.Name, "netOwner") then
print("YEETEEY "..v.Name)
v.Parent=nil
end
for _,v2 in pairs(v:GetChildren()) do
if v2.Name == "InvDeleting" then
print("YEET "..v2.Parent.Name)
v2.Parent=nil
end
end
end
end, function(e)
print(e)
end)
end
end)
wait()
spawn(function()
while wait() and getrenv()._G.P do
local ohTable1 = {
	[1] = getrenv()._G.Pass,
	[2] = "InvFrames",
	[3] = 0.2
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(ohTable1)
end
end)
spawn(function()
while wait() and getrenv()._G.PP do
xpcall(function()
for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "InvDeleting" then
print("YEET "..v.Parent.Name)
v.Parent=nil
elseif st(v.Name, "Hit") or st(v.Name, "InCutscene") or st(v.Name, "StatsDebuff") or st(v.Name, "Damage") or st(v.Name, "StayGrounded") or st(v.Name, "Hitt") or st(v.Name, "netOwner") then
print("YEETEEY "..v.Name)
v.Parent=nil
end
for _,v2 in pairs(v:GetChildren()) do
if v2.Name == "InvDeleting" then
print("YEET "..v2.Parent.Name)
v2.Parent=nil
end
end
end
end, function(e)
print(e)
end)
end
end)
wait()
elseif (val) == false then
        getrenv()._G.P = false
        getrenv()._G.PP = false
end
end


function ScreenFlashRed()
spawn(function()
repeat
game.Lighting.ColorCorrection.TintColor = Color3.fromRGB(255, camfix, camfix)
wait(0.1)
camfix = camfix + 5
until camfix == 255
if camfix == 255 then
    camfix = 10
end
print("debug3-3")
end)
end

function ScreenFlashGreen()
    spawn(function()
repeat
game.Lighting.ColorCorrection.TintColor = Color3.fromRGB(50 + camfix2, 255, 50 + camfix2)
wait()
camfix2 = camfix2 + 10
until camfix2 == 255
if camfix2 == 255 then
    camfix2 = 15
end
print("debug3-3")
end)
end

function ScreenFlashPurple()
spawn(function()
repeat
game.Lighting.ColorCorrection.TintColor = Color3.fromRGB(155 + camfix3, camfix3, 155 + camfix3)
wait(0.05)
camfix3 = camfix3 + 10
until camfix3 == 255
if camfix3 == 255 then
    camfix3 = 15
end
print("debug3-3")
end)
end

function ScreenFlashRed2()
spawn(function()
repeat
game.Lighting.ColorCorrection.TintColor = Color3.fromRGB(255, camfix4, camfix4)
wait()
camfix4 = camfix4 + 10
until camfix4 == 255
if camfix4 == 255 then
    camfix4 = 15
end
print("debug3-3")
end)
end

function PurpleGreenFlash(val)
repeat
wait(1.5)
ScreenFlashPurple()
wait(1.5)
ScreenFlashGreen()
until PurpleGreenFlash(false)
end

function ScreenBlurFlash()
game.Lighting.Blur.Size = 12
wait(0.2)
game.Lighting.Blur.Size = 9
wait(0.2)
game.Lighting.Blur.Size = 8
wait(0.2)
game.Lighting.Blur.Size = 7
wait(0.2)
game.Lighting.Blur.Size = 6
wait(0.2)
game.Lighting.Blur.Size = 5
wait(0.2)
game.Lighting.Blur.Size = 4
wait(0.2)
game.Lighting.Blur.Size = 3
wait(0.2)
game.Lighting.Blur.Size = 2
wait(0.2)
game.Lighting.Blur.Size = 1
wait(0.2)
game.Lighting.Blur.Size = 0
wait(0.2)
end

function ScreenFlashWhite()
    game.Lighting.Brightness = 25
wait(0.05)
game.Lighting.Brightness = 24
wait(0.05)
game.Lighting.Brightness = 23
wait(0.05)
game.Lighting.Brightness = 22
wait(0.05)
game.Lighting.Brightness = 21
wait(0.05)
game.Lighting.Brightness = 20
wait(0.05)
game.Lighting.Brightness = 19
wait(0.05)
game.Lighting.Brightness = 18
wait(0.05)
game.Lighting.Brightness = 17
wait(0.05)
game.Lighting.Brightness = 16
wait(0.05)
game.Lighting.Brightness = 15
wait(0.05)
game.Lighting.Brightness = 14
wait(0.05)
game.Lighting.Brightness = 13
wait(0.05)
game.Lighting.Brightness = 12
wait(0.05)
game.Lighting.Brightness = 11
wait(0.05)
game.Lighting.Brightness = 10
wait(0.05)
game.Lighting.Brightness = 9
wait(0.05)
game.Lighting.Brightness = 8
wait(0.05)
game.Lighting.Brightness = 7
wait(0.05)
game.Lighting.Brightness = 6
wait(0.05)
game.Lighting.Brightness = 5
wait(0.05)
game.Lighting.Brightness = 4
wait(0.05)
game.Lighting.Brightness = 3
wait(0.05)
end

function SpecialAtk()
-- Dusttrust Phase 2 Special

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.ReplicatedStorage.Effects.KnifeHitEffect:GetDescendants()) do
if v.Name == 'BallEffect' then
v.Color = Color3.fromRGB(255, 13, 238)
end
end
end)

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.ReplicatedStorage.Effects.KnifeHitEffect:GetDescendants()) do
if v.Name == 'SmallEffect' then
v.Color = Color3.fromRGB(102, 13, 238)
end
end
end)

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.ReplicatedStorage.Effects.KnifeHitEffect:GetDescendants()) do
if v.Name == 'CurveEffect' then
v.Color = Color3.fromRGB(255, 13, 238)
end
end
end)

function tpToOpponent()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).HumanoidRootPart.CFrame * CFrame.new(0, 0, -4)
end

function useBoneSpam()
spawn(function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://3768536190"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(0.8)
game.Players.LocalPlayer.Character.Humanoid.HipHeight = 1
repeat wait(0.5)
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "Bones",
                [3] = "AirSpawn2",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "Bones",
                [3] = "AirSpawn",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
until bonespam == false
repeat wait() until bonespam2 == false
k:Stop()
end)
wait(7)
bonespam = false

spawn(function()
repeat wait(0.5)
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "Bones",
                [3] = "AirSpawn",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "GasterBlasters",
                [3] = "SummonOne",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
until bonespam2 == false
end)
wait(15)
bonespam2 = false
game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0.1
end

function normalSlash()
    spawn(function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4800266314"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.6)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "KnifeHitEffect", 
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
        ["Velocity"] = Vector3.new(0, 0.1, 0), 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Damage"] = 15
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
spawn(function()
local player = game.Players.LocalPlayer
local char = player.Character
local sound = Instance.new('Sound',char.Head)
local id = 6930257355
sound.Volume = 4
sound.SoundId = 'rbxassetid://'..id
sound:Play()
end)
wait(0.3)
k:Stop()
end)
end

function stunSlash()
spawn(function()
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2.5, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "KnifeHitEffect", 
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
        ["Velocity"] = Vector3.new(0, 0.1, 0), 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Ping,
        ["Damage"] = 1
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end)
end

function finalSlash()
spawn(function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4800266314"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.3)
wait(0.14)
k:AdjustSpeed(0)
wait(1)
phase2end = true
wait(8)
k:Stop()
end)

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char:GetDescendants()) do
if v.Name == 'Bone' then
v.Color = Color3.fromRGB(255, 0, 0)
end
end
end)
end

function blueSlash()
blueattack = true
spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char:GetDescendants()) do
if v.Name == 'Bone' then
v.Color = Color3.fromRGB(0, 255, 255)
end
end
end)
wait(0.5)
spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char:GetDescendants()) do
if v.Name == 'Bone' then
v.Color = Color3.fromRGB(255,255,255)
end
end
end)

spawn(function()
local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
if not LockOn then return end
target = game.workspace[LockOn.Name]
oldpos = target.HumanoidRootPart.Position
repeat wait()
target = game.workspace[LockOn.Name]
newpos = target.HumanoidRootPart.Position
until newpos ~= oldpos
print('target moved')
if blueattack == true then
    wait()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4800266314"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.6)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "KnifeHitEffect", 
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
        ["Velocity"] = Vector3.new(0, 0.1, 0), 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Damage"] = 15
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
spawn(function()
local player = game.Players.LocalPlayer
local char = player.Character
local sound = Instance.new('Sound',char.Head)
local id = 6930257355
sound.Volume = 4
sound.SoundId = 'rbxassetid://'..id
sound:Play()
end)
wait(0.3)
k:Stop()
else print("late")
end
end)
wait(0.5)
blueattack = false
end

function orangeSlash()
orangeattack = true
spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char:GetDescendants()) do
if v.Name == 'Bone' then
v.Color = Color3.fromRGB(255, 150, 0)
end
end
end)
wait(0.5)
spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char:GetDescendants()) do
if v.Name == 'Bone' then
v.Color = Color3.fromRGB(102, 13, 238)
end
end
end)

spawn(function()
local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
if not LockOn then return end
target = game.workspace[LockOn.Name]
oldpos = target.HumanoidRootPart.Position
repeat wait()
target = game.workspace[LockOn.Name]
newpos = target.HumanoidRootPart.Position
until newpos ~= oldpos
print('target moved')
if orangeattack == true then
    wait()
else 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4800266314"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.6)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "KnifeHitEffect", 
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
        ["Velocity"] = Vector3.new(0, 0.1, 0), 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Damage"] = 15
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
spawn(function()
local player = game.Players.LocalPlayer
local char = player.Character
local sound = Instance.new('Sound',char.Head)
local id = 6930257355
sound.Volume = 4
sound.SoundId = 'rbxassetid://'..id
sound:Play()
end)
wait(0.3)
k:Stop()
end
end)
wait(0.5)
orangeattack = false
end

wait(0.1)

        tpToOpponent()
        wait(0.2)
        normalSlash()
        wait(0.9)
        normalSlash()
        wait(0.9)
        normalSlash()
        wait(0.9)
        normalSlash()
        wait(0.9)
        normalSlash()
        wait(0.9)
        normalSlash()
        wait(1.2)
        normalSlash()
        wait(0.15)
        normalSlash()
        wait(0.15)
        normalSlash()
        wait(0.15)
        normalSlash()
        wait(0.15)
        normalSlash()
        wait(0.15)
        normalSlash()
        wait(0.25)
        blueSlash()
        wait(0.25)
        orangeSlash()
        wait(0.25)
        blueSlash()
        wait(0.3)
        useBoneSpam()
        wait(2)
        tpToOpponent()
        wait(2)
        stunSlash()
        wait()
        finalSlash()
end

function HPregen()
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.Health.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
wait(0.2)
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HealthLabel.Text = "-412/1287"
wait(0.2)
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HealthLabel.Text = "-19/1287"
wait(0.2)
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HealthLabel.Text = "365/1287"
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.Health.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
wait(0.2)
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HealthLabel.Text = "677/1287"
wait(0.2)
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HealthLabel.Text = "918/1287"
wait(0.2)
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HealthLabel.Text = "1287/1287"
end

function Vignette()
    local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = 'ScreenEffect'
local ImageLabel = Instance.new("ImageLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageLabel.Parent = ScreenGui
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1
ImageLabel.ImageTransparency = 1-- You can change the transparency of the Vignette effect
ImageLabel.Image = "http://www.roblox.com/asset/?id=5306992782"
wait()
ImageLabel.Size = UDim2.new(0, 2000, 0, 1080)
ImageLabel.Position = UDim2.new(0,-200,0,-200)
wait(0.1)
ImageLabel.ImageTransparency = 1
wait(0.1)
ImageLabel.ImageTransparency = 0.9
wait(0.1)
ImageLabel.ImageTransparency = 0.8
wait(0.1)
ImageLabel.ImageTransparency = 0.7
wait(0.1)
ImageLabel.ImageTransparency = 0.6
wait(0.1)
ImageLabel.ImageTransparency = 0.5
wait(0.1)
ImageLabel.ImageTransparency = 0.4
wait(0.1)
ImageLabel.ImageTransparency = 0.3
wait(0.1)
ImageLabel.ImageTransparency = 0.2
wait(0.1)
ImageLabel.ImageTransparency = 0.1
wait(0.1)
ImageLabel.ImageTransparency = 0
wait(29.2)
ImageLabel.ImageTransparency = 1
end

function Vignette2()
    local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = 'ScreenEffect'
local ImageLabel = Instance.new("ImageLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageLabel.Parent = ScreenGui
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1
ImageLabel.ImageTransparency = 1-- You can change the transparency of the Vignette effect
ImageLabel.Image = "http://www.roblox.com/asset/?id=5306992782"
wait()
ImageLabel.Size = UDim2.new(0, 2000, 0, 1080)
ImageLabel.Position = UDim2.new(0,-200,0,-200)
wait(0.1)
ImageLabel.ImageTransparency = 1
wait(0.1)
ImageLabel.ImageTransparency = 0.9
wait(0.1)
ImageLabel.ImageTransparency = 0.8
wait(0.1)
ImageLabel.ImageTransparency = 0.7
wait(0.1)
ImageLabel.ImageTransparency = 0.6
wait(0.1)
ImageLabel.ImageTransparency = 0.5
wait(0.1)
ImageLabel.ImageTransparency = 0.4
wait(0.1)
ImageLabel.ImageTransparency = 0.3
wait(0.1)
ImageLabel.ImageTransparency = 0.2
wait(0.1)
ImageLabel.ImageTransparency = 0.1
wait(0.1)
ImageLabel.ImageTransparency = 0
wait(60)
ImageLabel.ImageTransparency = 1
end

spawn(function()
repeat wait()
for _,v in pairs(char:GetChildren()) do
if v.Name == 'Hit' or v.Name == 'Hitt' or v.Name == 'DrainStamina' then
v:Destroy()
end
end
until joemamaez == false
end)

function Damage1()
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.Health.Size =  UDim2.new(0.44, 1, 0.25, 0)
wait()
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.Health.Size =  UDim2.new(0.42, 1, 0.25, 0)
wait()
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.Health.Size =  UDim2.new(0.40, 1, 0.25, 0)
wait()
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.Health.Size =  UDim2.new(0.38, 1, 0.25, 0)
wait()
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.Health.Size =  UDim2.new(0.36, 1, 0.25, 0)
wait()
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.Health.Size =  UDim2.new(0.34, 1, 0.25, 0)
wait()
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.Health.Size =  UDim2.new(0.32, 1, 0.25, 0)
wait()
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.Health.Size =  UDim2.new(0.30, 1, 0.25, 0)
wait()
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.Health.Size =  UDim2.new(0.28, 1, 0.25, 0)
wait()
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.Health.Size =  UDim2.new(0.26, 1, 0.25, 0)
wait()
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.Health.Size =  UDim2.new(0.25, 1, 0.25, 0)
end

-- LV System

spawn(function()
lvSystem = true
lvBarVal = 0.01

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.Players.LocalPlayer.PlayerGui.UI.Ui:GetDescendants()) do
if v.Name == 'StaminaBar' then
clone2 = v:Clone()
clone2.Parent = game.Players.LocalPlayer.PlayerGui.UI.Ui
clone2.Position = UDim2.new(0.4799, 0, 0.9900, 0)
clone2.Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
clone2.Bar.Size = UDim2.new(0, 0, 1, 0)
clone2.ImageLabel:Destroy()
clone2.LocalScript:Destroy()
clone2.Name = 'ExpBar'
end
end
end)


local ScreenGui = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")
local block
local unblock 
    camfix2 = 10
--Properties:
ScreenGui.ResetOnSpawn = false

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TextLabel.Parent = ScreenGui
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 255)
TextLabel.BackgroundTransparency = 1.00
TextLabel.Position = UDim2.new(0.360625994056, 0, .925, 0)
TextLabel.Size = UDim2.new(0, 250, 0, 75)
TextLabel.Font = Enum.Font.Arcade
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 35.000
TextLabel.TextWrapped = true
TextLabel.Text = 'EXP'

lv = 1
local ScreenGui = Instance.new("ScreenGui")
local TextLabel2 = Instance.new("TextLabel")
local block
local unblock 
    camfix2 = 10
--Properties:
ScreenGui.ResetOnSpawn = false

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TextLabel2.Parent = ScreenGui
TextLabel2.BackgroundColor3 = Color3.fromRGB(255, 0, 255)
TextLabel2.BackgroundTransparency = 1.00
TextLabel2.Position = UDim2.new(0.360625994056, 0, .8935, 0)
TextLabel2.Size = UDim2.new(0, 250, 0, 75)
TextLabel2.Font = Enum.Font.Arcade
TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel2.TextSize = 35.000
TextLabel2.TextWrapped = true
TextLabel2.Text = 'LV: '..(lv)

local ScreenGui2 = Instance.new("ScreenGui")
local TextLabel3 = Instance.new("TextLabel")
local block
local unblock 
    camfix2 = 10
--Properties:
ScreenGui2.ResetOnSpawn = false

ScreenGui2.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TextLabel3.Parent = ScreenGui
TextLabel3.BackgroundColor3 = Color3.fromRGB(255, 0, 255)
TextLabel3.BackgroundTransparency = 1.00
TextLabel3.Position = UDim2.new(0.490625994056, 0, .8935, 0)
TextLabel3.Size = UDim2.new(0, 250, 0, 75)
TextLabel3.Font = Enum.Font.Arcade
TextLabel3.TextColor3 = Color3.fromRGB(35, 255, 50)
TextLabel3.TextSize = 45.000
TextLabel3.TextWrapped = true
TextLabel3.Text = 'Level up!'
TextLabel3.Transparency = 1
TextLabel3.BackgroundTransparency = 1.00

spawn(function()
notLVing = true
repeat wait(1)
spawn(function()
repeat wait() until game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value ~= nil
lockChar = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name)
repeat wait()
until lockChar.Humanoid.Health < 0.2
if notLVing == true then
print("die'd")
if lockChar.Type.Value == "XSans" then
    print("lv up1")
        lvBarVal = lvBarVal + 0.3
    clone2.Bar.Size = UDim2.new(lvBarVal, 0, 1, 0)
elseif lockChar.Type.Value == "Sans" then
    print("lv up2")
    lvBarVal = lvBarVal + 0.5
    clone2.Bar.Size = UDim2.new(lvBarVal, 0, 1, 0)
elseif lockChar.Type.Value == "Frisk" then
    print("lv up3")
    lvBarVal = lvBarVal + 0.15
    clone2.Bar.Size = UDim2.new(lvBarVal, 0, 1, 0)
elseif lockChar.Type.Value == "SansBadTime" then
    print("lv up4")
    lvBarVal = lvBarVal + 0.5
    clone2.Bar.Size = UDim2.new(lvBarVal, 0, 1, 0)
elseif lockChar.Type.Value == "Chara" then
    print("lv up5")
    lvBarVal = lvBarVal + 0.2
    clone2.Bar.Size = UDim2.new(lvBarVal, 0, 1, 0)
elseif lockChar.Type.Value == "SFChara" then
    print("lv up6")
    lvBarVal = lvBarVal + 0.25
    clone2.Bar.Size = UDim2.new(lvBarVal, 0, 1, 0)
elseif lockChar.Type.Value == "DeltaSans" then
    print("lv up7")
    lvBarVal = lvBarVal + 0.2
    clone2.Bar.Size = UDim2.new(lvBarVal, 0, 1, 0)
elseif lockChar.Type.Value == "Undyne" then
    print("lv up8")
    lvBarVal = lvBarVal + 0.6
    clone2.Bar.Size = UDim2.new(lvBarVal, 0, 1, 0)
elseif lockChar.Type.Value == "Asriel" then
    print("lv up9")
    lvBarVal = lvBarVal + 0.4
    clone2.Bar.Size = UDim2.new(lvBarVal, 0, 1, 0)
elseif lockChar.Type.Value == "GTFrisk" then
    print("lv up10")
    lvBarVal = lvBarVal + 0.6
    clone2.Bar.Size = UDim2.new(lvBarVal, 0, 1, 0)
elseif lockChar.Type.Value == "Betty" then
    print("lv up11")
    lvBarVal = lvBarVal + 0.3
    clone2.Bar.Size = UDim2.new(lvBarVal, 0, 1, 0)
elseif lockChar.Type.Value == "Sakuya" then
    print("lv up12")
    lvBarVal = lvBarVal + 0.2
    clone2.Bar.Size = UDim2.new(lvBarVal, 0, 1, 0)
elseif lockChar.Type.Value == "Stevonnie" then
    print("lv up13")
    lvBarVal = lvBarVal + 0.2
    clone2.Bar.Size = UDim2.new(lvBarVal, 0, 1, 0)
elseif lockChar.Type.Value == "Bunny" then
    print("lv up14")
    lvBarVal = lvBarVal + 0.2
    clone2.Bar.Size = UDim2.new(lvBarVal, 0, 1, 0)
else print("bro wtf are you fighting")
end
notLVing = false
wait(1.2)
notLVing = true
elseif notLVing == false then
    wait()
end
end)
until false
end)

lvIncreasing = false
spawn(function()
repeat wait(0.1)
spawn(function()
repeat wait() until lvBarVal >= 1
print("debug1")
if lvIncreasing == false then
    lvIncreasing = true
    print("debug2")
lv = lv + 1
TextLabel2.Text = 'LV: '..(lv)
print("debug3")
lvBarVal = 0.01
clone2.Bar.Size = UDim2.new(0, 0, 1, 0)

local player = game.Players.LocalPlayer
local char = player.Character

for _,v in pairs(game.ReplicatedStorage.Effects.LevelUpShower:GetChildren()) do
spawn(function()
fakelevel = v.Name
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = v, 
      [4] = char
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)

end)
print("debug2")
spawn(function()
local player = game.Players.LocalPlayer
local char = player.Character
local sound = Instance.new('Sound',char.Head)
local id = 2167611163
sound.Volume = 4
sound.SoundId = 'rbxassetid://'..id
sound:Play()
end)

end

spawn(function()
TextLabel3.Transparency = 0
TextLabel3.BackgroundTransparency = 1.00
wait(0.5)
TextLabel3.Transparency = 0.1
TextLabel3.BackgroundTransparency = 1.00
wait(0.1)
TextLabel3.Transparency = 0.2
TextLabel3.BackgroundTransparency = 1.00
wait(0.1)
TextLabel3.Transparency = 0.3
TextLabel3.BackgroundTransparency = 1.00
wait(0.1)
TextLabel3.Transparency = 0.4
TextLabel3.BackgroundTransparency = 1.00
wait(0.1)
TextLabel3.Transparency = 0.5
TextLabel3.BackgroundTransparency = 1.00
wait(0.1)
TextLabel3.Transparency = 0.6
TextLabel3.BackgroundTransparency = 1.00
wait(0.1)
TextLabel3.Transparency = 0.7
TextLabel3.BackgroundTransparency = 1.00
wait(0.1)
TextLabel3.Transparency = 0.8
TextLabel3.BackgroundTransparency = 1.00
wait(0.1)
TextLabel3.Transparency = 0.9
TextLabel3.BackgroundTransparency = 1.00
wait(0.1)
TextLabel3.Transparency = 1
TextLabel3.BackgroundTransparency = 1.00
end)

spawn(function()
 camfix2 = 15
repeat
game.Lighting.ColorCorrection.TintColor = Color3.fromRGB(camfix2, 255, camfix2)
wait()
camfix2 = camfix2 + 10
until camfix2 == 255
if camfix2 == 255 then
    camfix2 = 15
end
end)

wait(1)
for _,v in pairs(char.Head:GetChildren()) do
if v.Name == fakelevel then
v:Destroy()
wait(0.2)
lvup = true
end
end

wait(2)
lvIncreasing = false
print("debug4")
end
end)
until lvSystem == false
end)

ninePressed = false
game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["Nine"] then
    if lvPlaying == true then
    print("wait a sec")
    else
        if ninePressed == false then
        local player = game.Players.LocalPlayer
        local char = player.Character
        local sound = Instance.new('Sound',char.Head)
        local id = 5665639497
        sound.Volume = 3
        sound.SoundId = 'rbxassetid://'..id
        sound:Play()
        wait()
        local player = game.Players.LocalPlayer
        local char = player.Character
        local sound = Instance.new('Sound',char.Head)
        local id = 5665639750
        sound.Volume = 3
        sound.SoundId = 'rbxassetid://'..id
        sound:Play()
        wait(0.1)
        ninePressed = true
        repeat wait()
            TextLabel2.Text = 'LV: '..(lv)
            lv = lv + 1
            TextLabel2.Text = 'LV: '..(lv)
        until lv == 13
        end
end
end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["Zero"] then
            print("lv up13")
    lvBarVal = lvBarVal + 0.1
    clone2.Bar.Size = UDim2.new(lvBarVal, 0, 1, 0)
end
end)

end)

lvcheck = true
spawn(function()
repeat wait()
if lv == 1 then truelv = 1
elseif lv == 2 then truelv = 2
elseif lv == 3 then truelv = 3
elseif lv == 4 then truelv = 4
elseif lv == 5 then truelv = 5
elseif lv == 6 then truelv = 6
elseif lv == 7 then truelv = 7
elseif lv == 8 then truelv = 8
elseif lv == 9 then truelv = 9
elseif lv == 10 then truelv = 10
elseif lv >= 10 then truelv = 10
end
until lvcheck == false
end)

function maxLV()
    col = 255
    print("debug2231")
    repeat wait()
        lv = lv + 1
        col = col - 5
        TextLabel.Text = 'LV: '..(lv)
        TextLabel.TextColor3 = Color3.fromRGB(255, col, col)
    until lv == 99
end

function KnockbackAura(val)
    kbAura = true
if kbAura == true then
repeat wait(1.1)
local player = game.Players.LocalPlayer
local char = player.Character
for _,v in pairs(game.workspace:GetChildren()) do

if v:FindFirstChildOfClass('Humanoid') then
if v:FindFirstChild('Torso') then
range = (char.PrimaryPart.Position - v.PrimaryPart.Position).Magnitude
if range <15 and v.Name ~= player.Name then
print("debug23837")
spawn(function()
local A_1 = getrenv()._G.Pass
local A_2 = v
local A_3 =  {
      ["Type"] = "Knockback", 
      ['HitEffect'] = 'HeavyHitEffect',
      ["HitTime"] = 2, 
      ["Velocity"] = Vector3.new(0,35,0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 75,
      ["VictimCFrame"] = CFrame.new(), 
      ['CombatInv'] = true,
      ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
end)
end
end
end
end

until kbAura == false
end
end

-- Music
for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
v:Destroy()
end
local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 1.5
music.SoundId = "rbxassetid://3739485706"
music.Looped = true
music:Play()
print("Music loaded!")
-- UI/Visuals
purpleChat = true
local Player = game.Players.LocalPlayer

Player.Chatted:Connect(function(Chat)
    if purpleChat == true then
wait()
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "Chatted", 
      [3] = (Chat), 
      [4] = Color3.fromRGB(75, 0, 188)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
end
end)
print("Chat color loaded.")
game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = Color3.fromRGB(255, 0, 255)
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.TextColor3 = Color3.fromRGB(75, 0, 188)
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.Text = "Dusttrust Sans"
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HealthLabel.Text = "1287/1287"
game.Players.LocalPlayer.Character.Data.Attack.Value = "210"
game.Players.LocalPlayer.Character.Data.Defense.Value = "430"


Chat("let's just get to the point.", Color3.fromRGB(75, 0, 188))

spawn(function()
player = game.Players.LocalPlayer

player.PlayerGui:WaitForChild('GameOver')
player.PlayerGui.GameOver.Sound.SoundId = 'rbxassetid://6485273824'--- changes game over music
player.PlayerGui.GameOver.Frame.ImageLabel.TextLabel.Script:Destroy()--destroys original the local script you want to modify or change completely
local function SCRIPT_JPEX75_FAKESCRIPT()--- making it into a function so that you can compile it into a local script
script = Instance.new('LocalScript', player.PlayerGui.GameOver.Frame.ImageLabel.TextLabel)-- creates a new local script instance
 player = game.Players.LocalPlayer
char = player.Character
mouse = player:GetMouse()
sound = Instance.new("Sound", script)
sound.Name = 'Voice'
sound.SoundId = 'rbxassetid://5416491219'---voice id you want
space = [[ 
]]

repeat wait()
char = player.Character
until char.Humanoid.Health <= 0.2---waits until you are dead
wait(6)
local word = "It's alright sans. You did your best."
local length = string.len(word) 
for i = 1, length do
script.Parent.Text = string.sub(word, 1, i)
clone = sound:Clone()
clone.Parent = script
clone:Play()
wait(0.03)
end
wait(1)
word = "Better luck next time."
length = string.len(word) 
for i = 1, length do---you can aas many dialouges 
script.Parent.Text = string.sub(word, 1, i)
clone = sound:Clone()
clone.Parent = script
clone:Play()
wait(0.03)
end---with these lines
local mous-- to define mous so you can disconnect the connect function inside the connect function
mous = mouse.Button1Down:Connect(function()
Instance.new("StringValue", player.Character).Name = "Confirmed"
mous:Disconnect()
end)
end
coroutine.resume(coroutine.create(SCRIPT_JPEX75_FAKESCRIPT))
player.PlayerGui.GameOver.Frame.ImageLabel.TextLabel.LocalScript.Name = "Script"
end)

print("GUI Loaded.")
-- Misc Keybinds
game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["KeypadOne"] then
        hitanim()
    end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["LeftBracket"] then
    print("Bone Created")
    createbone()
end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["RightBracket"] then
    print("Bone Deleted")
    deletebone()
end
end)
-- Attacks1

-- j attack
AnimationId = '4612158434'
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
bind = "j" -- has to be lowercase


mouse.KeyDown:connect(function(key)
if key == bind then
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "TakeStamina",
        [3] = 100 + (truelv * 3)
    }
}
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4612158434"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2.5,
        ["Type"] = "Normal",
        ["HitEffect"] = "KnifeHitEffect",
        ["CombatInv"] = true,

        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
        ["Velocity"] = Vector3.new(0, 0.1, 0),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit,
        ["Damage"] = 0 + (truelv - 1)
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()

end
end)
-- Y attack
AnimationId = '3201755772'
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
bind2 = "y" -- has to be lowercase


mouse.KeyDown:connect(function(key)
if key == bind2 then
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "TakeStamina",
        [3] = 50 + (truelv * 6)
    }
}
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://3201755772"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.5)
wait(0.15)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Knockback",
        ["HitEffect"] = "HeavyHitEffect",
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
        ["Velocity"] = Vector3.new(0, 100, 0),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 2 + (truelv * 2)
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
end
end)
-- K attack
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
bind3 = "k"-- has to be lowercase


mouse.KeyDown:connect(function(key)
if key == bind3 then
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "TakeStamina",
        [3] = 150 + (truelv * 6)
    }
}
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://6154060166"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.5)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Normal",
        ["HitEffect"] = "HeavyHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 3 + (truelv - 3)
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Normal",
        ["HitEffect"] = "BladeHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.ChaosSaberSlice,
        ["Damage"] = 5 + (truelv - 5)
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait()
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Normal",
        ["HitEffect"] = "BladeHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.ChaosSaberSlice,
        ["Damage"] = 5 + (truelv - 5)
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait()
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Normal",
        ["HitEffect"] = "BladeHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.ChaosSaberSlice,
        ["Damage"] = 5 + (truelv - 5)
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait()
wait(0.1)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://3201755772"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(3)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2.5,
        ["Type"] = "Knockback",
        ["HitEffect"] = "HeavyHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 3, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 10 + ((truelv * 2) + 5)
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1.1)
k:Stop()
end
end)

-- Phase 1
wait(5)
Chat("so, we're finally here.",Color3.fromRGB(75, 0, 188))
wait(4)
Chat([[both of us are here, standing alone in
a broken world.]],Color3.fromRGB(75, 0, 188))
wait(5)
Chat("with the same goal in mind...",Color3.fromRGB(75, 0, 188))
wait(3)
Chat([[destroying eachother, and everyone
we cared about.]],Color3.fromRGB(75, 0, 188))
wait(5)
Chat([[but who said you'd be allowed
to finish this world off?]],Color3.fromRGB(75, 0, 188))
wait(4)
Chat("nobody did.",Color3.fromRGB(255, 0, 0))
wait(3)
Chat("i'll make sure I'M the ONLY one who finishes the job!",Color3.fromRGB(255, 0, 0))
wait(3)

print("Phase 1 started")
repeat wait()

until game.Players.LocalPlayer.Character.Data.Stamina.Value <= 300
-- Phase 2
phase = 2
print("Phase 2 started.")
spawn(function()
inv(true)
end)
phase2hurtAnim = true
stun(true)

spawn(function()
KnockbackAura(true)
end)

wait(0.3)

local player = game.Players.LocalPlayer
local char = player.Character
camfix = 0

spawn(function()
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = game:GetService('ReplicatedStorage').Sounds.Knife_Slash, 
      [4] = char.Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
        local player = game.Players.LocalPlayer
        local char = player.Character
        local sound = Instance.new('Sound',char.Head)
        local id = 623904185
        sound.Volume = 3
        sound.SoundId = 'rbxassetid://'..id
        sound:Play()
end)
print("debug3-2")
wait(0.1)

spawn(function()
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HealthLabel.Text = "770/1287"
Damage1()
end)

ScreenFlashRed()

for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
v:Destroy()
end
local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 1.2
music.SoundId = "rbxassetid://0"
music.Looped = true
music:Play()
print("debug3-4")

spawn(function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4087847725"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(10)
wait(0.08)
k:AdjustSpeed(0.25)
wait(1)
k:AdjustSpeed(0)
repeat wait() until phase2hurtAnim == false
k:AdjustSpeed(1)
end)

wait(1)
for _,v in pairs(char.Head:GetChildren()) do
if v.Name == fakedamage then
v:Destroy()
print("debug3-6")
end
end



wait(2)
Chat("!?",Color3.fromRGB(255, 0, 0))
wait(3)
for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
v:Destroy()
end
local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 1.5
music.SoundId = "rbxassetid://5351674153"
music.Looped = true
music:Play()

spawn(function()
wait(6.95)
ScreenFlashRed2()
wait(1.7)
ScreenFlashRed2()
wait(1.7)
ScreenFlashRed2()
end)

wait(0.5)
Chat([[you think you're strong enough
 to kill me in one blow?]],Color3.fromRGB(255, 0, 0))
wait(5)
Chat("i'm not that weak.",Color3.fromRGB(255, 0, 0))
wait(4)
Chat([[you'll have to do more than hit 
 me with that rusty knife.]],Color3.fromRGB(255, 0, 0))
wait(2.5)
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.Health.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
phase2hurtAnim = false
spawn(function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://5028878836"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.5)
wait(0.2)
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://3925938042"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(2)
        wait(0.6)
        createbone()
end)
RMB = true
stun(false)
inv(false)

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
repeat wait(0.1)
for _,v in pairs(char:GetDescendants()) do
if v.Name == 'UsingBone' then
v:Clone()
boneDuped = true
end
end
until boneDuped
end)

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(player.Backpack.Main:GetChildren()) do
er = string.lower(v.Name)
if string.match(er,'moves') then
v.Animations.Idle.AnimationId = "rbxassetid://5028878836"-- change specifc animations to whatever you want
v.Animations.Walk.AnimationId = "rbxassetid://5658603994"
v.Animations.Run.AnimationId = "rbxassetid://5657151699"
v.Animations.Block.AnimationId = "rbxassetid://5973908948"
print('e')
end
end
---------Module------------------
local module
local modulelocation
original = player.Backpack.Main
clone = player.Backpack.Main:Clone()
for _,v in pairs(original:GetDescendants()) do--- the 
if v.Name == 'ModuleScript' then
module = v
modulelocation = v.Parent.Name
end
end
for _,v in pairs(clone:GetDescendants()) do
if v.Name == 'ModuleScript' then
v:Destroy()
end
end

for _,v in pairs(clone:GetDescendants()) do
if v.Name == modulelocation then
module.Parent = v

end
end
-------------Gui stuff-----------Just to make the whole thing work bascially
for _,v in pairs(player.PlayerGui.UI.Ui:GetChildren()) do
er = string.lower(v.Name)
if string.match(er,'move') then
originalm = v
clonem = v:Clone()
end
end
for _,v in pairs(player.PlayerGui:GetChildren()) do
er = string.lower(v.Name)
if string.find(er,'indicator') then
clonem1 = v:Clone()
originalm1 = v
end
end
for _,v in pairs(clone:GetDescendants()) do
if v.Name == 'Extra' then
eg = v
end
end
----------------
clonem1.Parent = eg
clonem.Parent = eg
originalm:Destroy()
originalm1:Destroy()
clone.Parent = player.Backpack

wait()
original:Destroy()---destroys so you can play the animations
end)

kbAura = false
-- Attacks2
    print("debug1")
mouse = game.Players.LocalPlayer:GetMouse()
mouse.Button2Down:connect(function()
local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
if not LockOn then return end
if RMB == true then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4800266314"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.2)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 0.5, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "BoneHitEffect", 
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
        ["Velocity"] = Vector3.new(0, 0.1, 0), 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Damage"] = 5 + ((truelv * 2) + 10)
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
spawn(function()
local player = game.Players.LocalPlayer
local char = player.Character
local sound = Instance.new('Sound',char.Head)
local id = 6930257355
sound.Volume = 4
sound.SoundId = 'rbxassetid://'..id
sound:Play()
end)
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "TakeStamina",
        [3] = 60 + (truelv * 4)
    }
}
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
wait(0.3)
k:Stop()
elseif RMB == false then
    print("shit yourself")
end
end)

if phase == 2 then
game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["X"] then
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "TakeStamina",
        [3] = 200
    }
}
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
blueattack = true
spawn(function()
for _,v in pairs(game.ReplicatedStorage.Effects:GetDescendants()) do
if v.Name == 'WarningSans' then
spawn(function()
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = v, 
      [4] = char.Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
wait(3)
v:Destroy()
end)

end
end
end)

spawn(function()
for _,v in pairs(game.ReplicatedStorage.Sounds:GetDescendants()) do
if v.Name == 'Ping' then
spawn(function()
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = v, 
      [4] = char.Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char:GetDescendants()) do
if v.Name == 'Bone' then
v.Color = Color3.fromRGB(0, 255, 255)
end
end
end)
wait(3.1)
spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char:GetDescendants()) do
if v.Name == 'Bone' then
v.Color = Color3.fromRGB(255,255,255)
end
end
end)

end)
end
end

wait(3)
    for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
if v.Name == 'WarningSans' then
v:Destroy()
end
end
end)
wait(1)
spawn(function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4800266314"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.3)
wait(0.15)
k:AdjustSpeed(0)
spawn(function()
local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
if not LockOn then return end
target = game.workspace[LockOn.Name]
oldpos = target.HumanoidRootPart.Position
repeat wait()
target = game.workspace[LockOn.Name]
newpos = target.HumanoidRootPart.Position
until newpos ~= oldpos
if blueattack == true then
    k:AdjustSpeed(2)
end
end)

wait(2.1)
k:Stop()
end)

spawn(function()
local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
if not LockOn then return end
target = game.workspace[LockOn.Name]
oldpos = target.HumanoidRootPart.Position
repeat wait()
target = game.workspace[LockOn.Name]
newpos = target.HumanoidRootPart.Position
until newpos ~= oldpos
print('target moved')
if blueattack == true then
    wait()
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 0.2,
        ["Type"] = "Knockback",
        ["HitEffect"] = "SpearHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
        ["Velocity"] = Vector3.new(0, -10, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Damage"] = 12 + (truelv * 2)
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
else print("late")
end
end)
wait(2)
blueattack = false

end
end)
end



if phase == 2 then
AnimationId = '0'
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
bind6 = "g"


mouse.KeyDown:connect(function(key)
if key == bind6 then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4800266314"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.6)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 0, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "LightHitEffect2", 
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround, 
        ["Velocity"] = Vector3.new(0, 1, 0), 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit2,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "TakeStamina",
        [3] = 450
    }
}
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
wait(0.3)
k:Stop()
end
end)
end

if phase == 2 then
AnimationId = '0'
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
bind6 = "g"


mouse.KeyDown:connect(function(key)
if key == bind6 then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4800266314"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.6)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 0, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "LightHitEffect2", 
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround, 
        ["Velocity"] = Vector3.new(0, 1, 0), 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit2,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(0.3)
k:Stop()
end
end)
end

if phase == 2 then
AnimationId = '0'
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
bind6 = "g"


mouse.KeyDown:connect(function(key)
if key == bind6 then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4800266314"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.6)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 0, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "LightHitEffect2", 
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround, 
        ["Velocity"] = Vector3.new(0, 1, 0), 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit2,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(0.3)
k:Stop()
end
end)
end

if phase == 2 then
AnimationId = '0'
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
bind6 = "g"


mouse.KeyDown:connect(function(key)
if key == bind6 then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4800266314"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.6)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 0, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "LightHitEffect2", 
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround, 
        ["Velocity"] = Vector3.new(0, 1, 0), 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit2,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(0.3)
k:Stop()
end
end)
end

if phase == 2 then
AnimationId = '0'
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
bind6 = "g"


mouse.KeyDown:connect(function(key)
if key == bind6 then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4800266314"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.6)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 0, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "LightHitEffect2", 
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround, 
        ["Velocity"] = Vector3.new(0, 1, 0), 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit2,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(0.3)
k:Stop()
end
end)
end

if phase == 2 then
AnimationId = '0'
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
bind6 = "g"


mouse.KeyDown:connect(function(key)
if key == bind6 then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4800266314"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.6)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 0, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "LightHitEffect2", 
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround, 
        ["Velocity"] = Vector3.new(0, 1, 0), 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit2,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(0.3)
k:Stop()
end
end)
end

if phase == 2 then
AnimationId = '0'
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
bind6 = "g"


mouse.KeyDown:connect(function(key)
if key == bind6 then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4800266314"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.6)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 0, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "LightHitEffect2", 
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround, 
        ["Velocity"] = Vector3.new(0, 1, 0), 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit2,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(0.3)
k:Stop()
end
end)
end

if phase == 2 then
AnimationId = '0'
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
bind6 = "g"


mouse.KeyDown:connect(function(key)
if key == bind6 then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4800266314"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.6)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 0, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "LightHitEffect2", 
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround, 
        ["Velocity"] = Vector3.new(0, 1, 0), 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit2,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(0.3)
k:Stop()
end
end)
end

if phase == 2 then
AnimationId = '0'
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
bind6 = "g"


mouse.KeyDown:connect(function(key)
if key == bind6 then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4800266314"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.6)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 0, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "LightHitEffect2", 
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround, 
        ["Velocity"] = Vector3.new(0, 1, 0), 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit2,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(0.3)
k:Stop()
end
end)
end

if phase == 2 then
AnimationId = '0'
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
bind6 = "g"


mouse.KeyDown:connect(function(key)
if key == bind6 then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4800266314"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.6)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 0, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "LightHitEffect2", 
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround, 
        ["Velocity"] = Vector3.new(0, 1, 0), 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit2,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(0.3)
k:Stop()
end
end)
end

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["V"] then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4800266314"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.3)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Normal",
        ["HitEffect"] = "BoneHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 1, 0),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "TakeStamina",
        [3] = 200
    }
}
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
end
end)


game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["V"] then
    wait(0.1)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4357907686"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.3)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Normal",
        ["HitEffect"] = "BoneHitEffect",

        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 1, 0),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))

end
end)


game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["V"] then
    wait(0.2)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4800266314"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.3)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Normal",
        ["HitEffect"] = "BoneHitEffect",

        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 1, 0),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))

end
end)


game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["V"] then
    wait(0.3)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4357907686"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.3)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Normal",
        ["HitEffect"] = "BoneHitEffect",

        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 1, 0),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))

end
end)


game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["V"] then
    wait(0.4)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4800266314"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.3)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Normal",
        ["HitEffect"] = "BoneHitEffect",

        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 1, 0),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))

end
end)


game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["V"] then
    wait(0.5)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4357907686"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.3)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Normal",
        ["HitEffect"] = "BoneHitEffect",

        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 1, 0),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))

end
end)


game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["V"] then
    wait(0.6)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4800266314"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.3)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Normal",
        ["HitEffect"] = "BoneHitEffect",

        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 1, 0),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))

end
end)


game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["V"] then
    wait(0.7)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4357907686"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.3)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Normal",
        ["HitEffect"] = "BoneHitEffect",

        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 1, 0),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))

end
end)


game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["V"] then
    wait(0.8)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4800266314"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.3)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Normal",
        ["HitEffect"] = "BoneHitEffect",

        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 1, 0),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))

end
end)


game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["V"] then
    wait(0.9)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4357907686"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.3)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 0.3,
        ["Type"] = "Knockback",
        ["HitEffect"] = "BoneHitEffect",

        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 100,
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit2,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))

end
end)

if phase == 2 then
game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["B"] then
    spawn(function()
    Vignette2()
    end)
local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.Character.Head
Sound.Volume = 4.5
Sound.Playing = false
Sound.Looped = false
Sound.SoundId = "rbxassetid://5342465893"
Sound.Name = "Voice"
Sound.PlaybackSpeed = 1
wait(0.5)
game.Players.LocalPlayer.Character.Head.Voice:Destroy()

music.Volume = 0.6

Chat([[[PAPYRUS]
kid.]],Color3.fromRGB(185, 50, 0))
wait(2)
Chat([[[PAPYRUS]
is this really how you want it to end?]],Color3.fromRGB(185, 50, 0))
wait(4)
Chat([[[PAPYRUS]
SANS.]],Color3.fromRGB(185, 50, 0))
wait(3)
Chat([[[PAPYRUS]
he may look like a cheerful and harmless fellow.]],Color3.fromRGB(185, 50, 0))
wait(3.5)
Chat([[[PAPYRUS]
but. he has something special...]],Color3.fromRGB(185, 50, 0))
spawn(function()
    maxLV()
end)
wait(4.5)

Chat([[[PAPYRUS]
YOU FORGOT ABOUT HIS 'SPECIAL ATTACK']],Color3.fromRGB(255, 35, 0))
wait(0.5)
music.TimePosition = 184
music.Volume = 1.2
wait(2.5)
spawn(function()
SpecialAtk()
end)
ScreenFlashRed2()
wait(0.8)
ScreenFlashRed2()
wait(0.8)
ScreenFlashRed2()
wait(0.8)
ScreenFlashRed2()
wait(0.8)
ScreenFlashRed2()
wait(0.8)
ScreenFlashRed2()
wait(0.8)
ScreenFlashRed2()
wait(0.8)
ScreenFlashRed2()
wait(0.8)
ScreenFlashRed2()
wait(0.8)
ScreenFlashRed2()
wait(0.8)
ScreenFlashRed2()
wait(0.8)
ScreenFlashRed2()
wait(0.8)
ScreenFlashRed2()
wait(0.8)
ScreenFlashRed2()
wait(0.8)
ScreenFlashRed2()
wait(0.8)
ScreenFlashRed2()
wait(0.8)
ScreenFlashRed2()
wait(0.8)
ScreenFlashRed2()
wait(0.8)
ScreenFlashRed2()
wait(0.8)
ScreenFlashRed2()
wait(0.8)
ScreenFlashRed2()
wait(0.8)
ScreenFlashRed2()
wait(0.8)
ScreenFlashRed2()
wait(0.8)
ScreenFlashRed2()
wait(0.8)
ScreenFlashRed2()
wait(0.8)
ScreenFlashRed2()
wait(0.8)
ScreenFlashRed2()
wait(0.8)
ScreenFlashRed2()
wait(0.8)
ScreenFlashRed2()
wait(0.8)
ScreenFlashRed2()
wait(0.8)
ScreenFlashRed2()
wait(0.8)
ScreenFlashRed2()
wait(0.8)
ScreenFlashRed2()
wait(0.8)
ScreenFlashRed2()
wait(12.5)
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "TakeStamina",
        [3] = 2300
    }
}
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
wait(3)
print("attack over")
wait(25)
music:Stop()
end
end)
end

-- Phase 3
repeat wait()
until game.Players.LocalPlayer.Character.Data.Stamina.Value <= 300
spawn(function()
music:Stop()
end)

phase = 3
RMB = false

spawn(function()
KnockbackAura()
end)

print("debug3")
stun(true)
inv(true)

Chat("!",Color3.fromRGB(255, 0, 0))
wait(0.5)
local player = game.Players.LocalPlayer
local char = player.Character
camfix = 0
spawn(function()
local player = game.Players.LocalPlayer
    local char = player.Character
    local sound = Instance.new('Sound',char.Head)
    local id = 623904185
    sound.Volume = 3
    sound.SoundId = 'rbxassetid://'..id
    sound:Play()
end)
spawn(function()
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = game:GetService('ReplicatedStorage').Sounds.Knife_Slash, 
      [4] = char.Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
end)
print("debug3-2")
wait(0.1)
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HealthLabel.Text = "0/1287"
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.Health.Size =  UDim2.new(0.001, 1, 0.25, 0)
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.Health.BackgroundColor3 = Color3.fromRGB(255, 0, 0)


ScreenFlashRed2()
ScreenBlurFlash()

wait()
for _,v in pairs(char.Head:GetChildren()) do
if v.Name == fakedamage then
v:Destroy()
print("debug3-6")
end
end
deletebone()

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char:GetDescendants()) do
if v.Name == 'UsingBone' then
v:Destroy()
end
end
end)

wait(3)

spawn(function()
local player = game.Players.LocalPlayer
    local char = player.Character
    local sound = Instance.new('Sound',char.Head)
    local id = 623904185
    sound.Volume = 3
    sound.SoundId = 'rbxassetid://'..id
    sound:Play()
end)
print("debug3-1")
spawn(function()
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = game:GetService('ReplicatedStorage').Sounds.Knife_Slash, 
      [4] = char.Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
end)
print("debug3-2")


ScreenFlashRed()
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HealthLabel.Text = "-9999/1287"

spawn(function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4460182501"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.1)
wait(1)
k:Stop()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4416715001"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(0.5)
print("debug3-5")
wait(71)
k:Stop()
end)

wait(1)

wait(5)
player = game.Players.LocalPlayer
char = player.Character

spawn(function()
for _,v in pairs(game.ReplicatedStorage.Resources.OtherEffects:GetChildren()) do
spawn(function()
DeathParticle = v.Name
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = v, 
      [4] = char
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)

end)
print("debug2")
spawn(function()
local player = game.Players.LocalPlayer
    local char = player.Character
    local sound = Instance.new('Sound',char.Head)
    local id = 539792706
    sound.Volume = 1
    sound.SoundId = 'rbxassetid://'..id
    sound:Play()
end)
end
wait(1.5)
for _,v in pairs(char.Head:GetChildren()) do
if v.Name == DeathParticle then
v:Destroy()
wait(0.2)
end
end
end)


spawn(function()
    wait(0.4)
char['Right Arm'].Transparency = 0.1 
wait(0.1)
char['Right Arm'].Transparency = 0.2 
wait(0.1)
char['Right Arm'].Transparency = 0.3
wait(0.1)
char['Right Arm'].Transparency = 0.4 
wait(0.1)
char['Right Arm'].Transparency = 0.5 
wait(0.1)
char['Right Arm'].Transparency = 0.6 
wait(0.1)
char['Right Arm'].Transparency = 0.7 
wait(0.1)
char['Right Arm'].Transparency = 0.8 
wait(0.1)
char['Right Arm'].Transparency = 0.9
end)

spawn(function()
    wait(0.4)
char['Left Arm'].Transparency = 0.1 
wait(0.1)
char['Left Arm'].Transparency = 0.2 
wait(0.1)
char['Left Arm'].Transparency = 0.3
wait(0.1)
char['Left Arm'].Transparency = 0.4 
wait(0.1)
char['Left Arm'].Transparency = 0.5 
wait(0.1)
char['Left Arm'].Transparency = 0.6 
wait(0.1)
char['Left Arm'].Transparency = 0.7 
wait(0.1)
char['Left Arm'].Transparency = 0.8 
wait(0.1)
char['Left Arm'].Transparency = 0.9
end)

spawn(function()
    wait(0.6)
char['Right Leg'].Transparency = 0.1 
wait(0.1)
char['Right Leg'].Transparency = 0.2 
wait(0.1)
char['Right Leg'].Transparency = 0.3
wait(0.1)
char['Right Leg'].Transparency = 0.4 
wait(0.1)
char['Right Leg'].Transparency = 0.5 
wait(0.1)
char['Right Leg'].Transparency = 0.6 
wait(0.1)
char['Right Leg'].Transparency = 0.7 
wait(0.1)
char['Right Leg'].Transparency = 0.8 
wait(0.1)
char['Right Leg'].Transparency = 0.9
end)

spawn(function()
    wait(0.6)
char['Left Leg'].Transparency = 0.1 
wait(0.1)
char['Left Leg'].Transparency = 0.2 
wait(0.1)
char['Left Leg'].Transparency = 0.3
wait(0.1)
char['Left Leg'].Transparency = 0.4 
wait(0.1)
char['Left Leg'].Transparency = 0.5 
wait(0.1)
char['Left Leg'].Transparency = 0.6 
wait(0.1)
char['Left Leg'].Transparency = 0.7 
wait(0.1)
char['Left Leg'].Transparency = 0.8 
wait(0.1)
char['Left Leg'].Transparency = 0.9
end)

spawn(function()
    wait(0.2)
char['Torso'].Transparency = 0.1 
wait(0.1)
char['Torso'].Transparency = 0.2 
wait(0.1)
char['Torso'].Transparency = 0.3
wait(0.1)
char['Torso'].Transparency = 0.4 
wait(0.1)
char['Torso'].Transparency = 0.5 
wait(0.1)
char['Torso'].Transparency = 0.6 
wait(0.1)
char['Torso'].Transparency = 0.7 
wait(0.1)
char['Torso'].Transparency = 0.8 
wait(0.1)
char['Torso'].Transparency = 0.9
end)

spawn(function()
char['Head'].Transparency = 0.1 
wait(0.1)
char['Head'].Transparency = 0.2 
wait(0.1)
char['Head'].Transparency = 0.3
wait(0.1)
char['Head'].Transparency = 0.4 
wait(0.1)
char['Head'].Transparency = 0.5 
wait(0.1)
char['Head'].Transparency = 0.6 
wait(0.1)
char['Head'].Transparency = 0.7 
wait(0.1)
char['Head'].Transparency = 0.8 
wait(0.1)
char['Head'].Transparency = 0.9
end)

player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char:GetDescendants()) do
if v.Name == 'Handle' then
v.Transparency = 0.1
wait(0.1)
v.Transparency = 0.2
wait(0.1)
v.Transparency = 0.3
wait(0.1)
v.Transparency = 0.4
wait(0.1)
v.Transparency = 0.5
wait(0.1)
v.Transparency = 0.6
wait(0.1)
v.Transparency = 0.7
wait(0.1)
v.Transparency = 0.8
wait(0.1)
v.Transparency = 0.9
wait(0.1)
end
end

wait(3.5)
for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
v:Destroy()
end
local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 1.2
music.SoundId = "rbxassetid://6460012412"
music.Looped = false
music:Play()

spawn(function()
    wait(1.5)
    ScreenFlashWhite()
    wait(2)
    ScreenFlashWhite()
    wait(2)
    ScreenFlashWhite()
    wait(2.1)
    ScreenFlashWhite()
    wait(2.1)
    ScreenFlashWhite()
    wait(2)
    ScreenFlashWhite()
    wait(2.1)
    ScreenFlashWhite()
    wait(2.1)
    ScreenFlashRed()
end)

spawn(function()
Vignette()
end)
wait(5)
Chat([[Alphys' determination shines bright
inside Sans' soul.]],Color3.fromRGB(255, 255, 255))
wait(1.5)
spawn(function()
            for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
if v.Name == 'BodyAura' then
v:Destroy()
end
end
local player = game.Players.LocalPlayer
local char = player.Character

for count = 1,6,1 do
parts = {'Head','Torso','Right Arm','Left Arm','Right Leg','Left Leg'}
for c = 1,5,1 do
for _,v in pairs(game.ReplicatedStorage.Resources.Character.Auras.PowerUp[parts[count]]:GetChildren()) do
if v.Name == 'BodyAura' then
spawn(function()
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = v, 
      [4] = char
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)

end)

end
end
end
wait(0.2)
for _,v in pairs(char.Head:GetChildren()) do
if v.Name == 'BodyAura' then
v.Parent = char[parts[count]]
end
end

end
end)
wait(24)

spawn(function()
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = game:GetService('ReplicatedStorage').Resources.Sounds.Heal, 
      [4] = char.Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
end)

char['Head'].Transparency = 0
char['Torso'].Transparency = 0
char['Left Arm'].Transparency = 0
char['Right Arm'].Transparency = 0
char['Left Leg'].Transparency = 0
char['Right Leg'].Transparency = 0
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char:GetDescendants()) do
if v.Name == 'Handle' then
v.Transparency = 0
end
end

wait(1.5)

-- Bar Test

spawn(function()
created = false
val = 1
timeRemaining = 419

for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
v:Destroy()
end
local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.SoundId = "rbxassetid://6969433492"
music.Looped = true
music.Volume = 1.5
music:Play()

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.Players.LocalPlayer.PlayerGui.UI.Ui:GetDescendants()) do
if v.Name == 'StaminaBar' then
if created == false then
clone = v:Clone()
clone.Parent = game.Players.LocalPlayer.PlayerGui.UI.Ui
clone.Position = UDim2.new(0.05, 0, 0.901, 0)
clone.Bar.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
clone.ImageLabel:Destroy()
clone.LocalScript:Destroy()
clone.Name = 'DeterminationBar'
print("DT Bar Created")
created = true
end
end
end
end)
wait()
DTbar = game.Players.LocalPlayer.PlayerGui.UI.Ui.DeterminationBar
print(DTbar.Bar.Size)

local ScreenGui = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")
local block
local unblock 
    camfix2 = 10
--Properties:
ScreenGui.ResetOnSpawn = false

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TextLabel.Parent = ScreenGui
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 255)
TextLabel.BackgroundTransparency = 1.00
TextLabel.Position = UDim2.new(-0.000625994056, 0, .81, 0)
TextLabel.Size = UDim2.new(0, 250, 0, 75)
TextLabel.Font = Enum.Font.Arcade
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 35.000
TextLabel.TextWrapped = true
TextLabel.Text = 'Time: '..(timeRemaining)


        repeat wait(1)
        val = val-0.00238663
        timeRemaining = timeRemaining - 1
        DTbar.Bar.Size = UDim2.new(val, 0, 1, 0)
        TextLabel.Text = 'Time: '..(timeRemaining)
        until TextLabel.Text == 'Time: 0'
        wait(0.2)
        DTbar.Bar.Size = UDim2.new(0, 0, 1, 0)
        TextLabel.Text = 'Time: 0'
        print("DT Emptied.")
camfix4 = 15

spawn(function()
local player = game.Players.LocalPlayer
    local char = player.Character
        local sound = Instance.new('Sound',char.Head)
        local id = 4615103543
        sound.Volume = 4
        sound.Pitch = 0.9
        sound.TimePosition = 0.5
        sound.SoundId = 'rbxassetid://'..id
        sound:Play()
game.Lighting.Blur.Size = 15
wait(0.3)
game.Lighting.Blur.Size = 14
wait(0.3)
game.Lighting.Blur.Size = 13
wait(0.2)
game.Lighting.Blur.Size = 12
wait(0.2)
game.Lighting.Blur.Size = 11
wait(0.2)
game.Lighting.Blur.Size = 10
wait(0.2)
game.Lighting.Blur.Size = 9
wait(0.2)
game.Lighting.Blur.Size = 8
wait(0.2)
game.Lighting.Blur.Size = 7
wait(0.2)
game.Lighting.Blur.Size = 6
wait(0.2)
game.Lighting.Blur.Size = 5
wait(0.2)
game.Lighting.Blur.Size = 4
wait(0.2)
game.Lighting.Blur.Size = 3
wait(0.2)
game.Lighting.Blur.Size = 2
wait(0.2)
game.Lighting.Blur.Size = 1
wait(0.2)
game.Lighting.Blur.Size = 0
wait(0.2)
end)

spawn(function()
local player = game.Players.LocalPlayer
local char = player.Character
local Humanoid = char.Humanoid
for i = 1, 25 do
    local x = math.random(-200,100)/100
    local y = math.random(-100,200)/100
    local z = math.random(-300,100)/100
    Humanoid.CameraOffset = Vector3.new(x,y,z)
    print(i)
    wait()
end
wait(0)
Humanoid.CameraOffset = Vector3.new(0,0,0)
end)

spawn(function()
repeat
game.Lighting.ColorCorrection.TintColor = Color3.fromRGB(255, camfix4, camfix4)
wait()
camfix4 = camfix4 + 5
until camfix4 == 255
if camfix4 == 255 then
    camfix4 = 15
end
print("debug3-3")
end)

spawn(function()
    game.Lighting.Brightness = 25
wait(0.05)
game.Lighting.Brightness = 24
wait(0.05)
game.Lighting.Brightness = 23
wait(0.05)
game.Lighting.Brightness = 22
wait(0.05)
game.Lighting.Brightness = 21
wait(0.05)
game.Lighting.Brightness = 20
wait(0.05)
game.Lighting.Brightness = 19
wait(0.05)
game.Lighting.Brightness = 18
wait(0.05)
game.Lighting.Brightness = 17
wait(0.05)
game.Lighting.Brightness = 16
wait(0.05)
game.Lighting.Brightness = 15
wait(0.05)
game.Lighting.Brightness = 14
wait(0.05)
game.Lighting.Brightness = 13
wait(0.05)
game.Lighting.Brightness = 12
wait(0.05)
game.Lighting.Brightness = 11
wait(0.05)
game.Lighting.Brightness = 10
wait(0.05)
game.Lighting.Brightness = 9
wait(0.05)
game.Lighting.Brightness = 8
wait(0.05)
game.Lighting.Brightness = 7
wait(0.05)
game.Lighting.Brightness = 6
wait(0.05)
game.Lighting.Brightness = 5
wait(0.05)
game.Lighting.Brightness = 4
wait(0.05)
game.Lighting.Brightness = 3
wait(0.05)
end)
wait(0.1)
music.TimePosition = 413
music.Volume = 1.5
music.Looped = false
spawn(function()
    clone:Destroy()
    TextLabel:Destroy()
end)
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["KeypadZero"] then
        timeRemaining = 25
    end
end)

Chat([[So... this is the power of *determination* 
papyrus was talking about.]],Color3.fromRGB(75, 0, 188))
wait(7)
Chat([[I'm surprised. Suprised someone so small 
could hold such. great. power.]],Color3.fromRGB(75, 0, 188))
wait(7)
Chat("But that doesnt matter, not anymore.",Color3.fromRGB(75, 0, 188))
wait(5)
Chat([[That little *power* of yours is going to become
obsolete compared to mine.]],Color3.fromRGB(75, 0, 188))
wait(6)
Chat("But because i am so kind...",Color3.fromRGB(75, 0, 188))
wait(4)
Chat("I'm going to share some of that power with you.",Color3.fromRGB(75, 0, 188))
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://3877055653"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(0.7)
HPregen()

wait(4)
Chat("Ready? Dirty Murderer.",Color3.fromRGB(255,0,0))
wait(1.5)
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.Health.Size =  UDim2.new(0.45, 1, 0.25, 0)
stun(false)
kbAura = false
k:Stop()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4661950750"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)


-- Attacks3

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["C"] then
        wait(0.1)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://0"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.6)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Knockback",
        ["HitEffect"] = "LightHitEffect2",
        ["CombatInv"] = true,

        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, 0.1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "TakeStamina",
        [3] = 500
    }
}
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
wait(2)
k:Stop()
end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["C"] then
        wait(0.2)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://0"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.6)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Knockback",
        ["HitEffect"] = "LightHitEffect2",
        ["CombatInv"] = true,

        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, 0.1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(2)
k:Stop()
end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["C"] then
        wait(0.3)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://0"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.6)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Knockback",
        ["HitEffect"] = "LightHitEffect2",
        ["CombatInv"] = true,

        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, 0.1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(2)
k:Stop()
end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["C"] then
        wait(0.4)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://0"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.6)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Knockback",
        ["HitEffect"] = "LightHitEffect2",
        ["CombatInv"] = true,

        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, 0.1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(2)
k:Stop()
end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["C"] then
        wait(0.5)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://0"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.6)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Knockback",
        ["HitEffect"] = "LightHitEffect2",
        ["CombatInv"] = true,

        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, 0.1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(2)
k:Stop()
end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["C"] then
        wait(0.6)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://0"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.6)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Knockback",
        ["HitEffect"] = "LightHitEffect2",
        ["CombatInv"] = true,

        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, 0.1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(2)
k:Stop()
end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["C"] then
        wait(0.7)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://0"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.6)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Knockback",
        ["HitEffect"] = "LightHitEffect2",
        ["CombatInv"] = true,

        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, 0.1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(2)
k:Stop()
end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["C"] then
        wait(0.8)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://0"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.6)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Knockback",
        ["HitEffect"] = "LightHitEffect2",
        ["CombatInv"] = true,

        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, 0.1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(2)
k:Stop()
end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["C"] then
        wait(0.9)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://0"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.6)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Knockback",
        ["HitEffect"] = "LightHitEffect2",
        ["CombatInv"] = true,

        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, 0.1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(2)
k:Stop()
end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["C"] then
        wait(1)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://0"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.6)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Knockback",
        ["HitEffect"] = "LightHitEffect2",
        ["CombatInv"] = true,

        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, 0.1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(2)
k:Stop()
end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["C"] then
        wait(1.1)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://0"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.6)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Knockback",
        ["HitEffect"] = "LightHitEffect2",
        ["CombatInv"] = true,

        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, 0.1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(2)
k:Stop()
end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["C"] then
        wait(1.2)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://0"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.6)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Knockback",
        ["HitEffect"] = "LightHitEffect2",
        ["CombatInv"] = true,

        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, 0.1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(2)
k:Stop()
end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["C"] then
        wait(1.3)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://0"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.6)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Knockback",
        ["HitEffect"] = "LightHitEffect2",
        ["CombatInv"] = true,

        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, 0.1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(2)
k:Stop()
end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["C"] then
        wait(1.4)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://0"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.6)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Knockback",
        ["HitEffect"] = "LightHitEffect2",
        ["CombatInv"] = true,

        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, 0.1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(2)
k:Stop()
end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["C"] then
        wait(1.5)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://0"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.6)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 0.35,
        ["Type"] = "Knockback",
        ["HitEffect"] = "LightHitEffect2",
        ["CombatInv"] = true,

        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, 0.1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Burst,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(2)
k:Stop()
end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["C"] then
        wait(1.6)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://0"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.6)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 0.35,
        ["Type"] = "Knockback",
        ["HitEffect"] = "LightHitEffect2",
        ["CombatInv"] = true,

        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, 0.1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Burst,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(2)
k:Stop()
end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["C"] then
        wait(1.7)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://0"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.6)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 0.35,
        ["Type"] = "Knockback",
        ["HitEffect"] = "LightHitEffect2",
        ["CombatInv"] = true,

        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, 0.1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Burst,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(2)
k:Stop()
end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["C"] then
        wait(1.8)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://0"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.6)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 0.35,
        ["Type"] = "Knockback",
        ["HitEffect"] = "LightHitEffect2",
        ["CombatInv"] = true,

        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, 0.1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Burst,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(2)
k:Stop()
end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["C"] then
        wait(1.9)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://0"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.6)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 0.35,
        ["Type"] = "Knockback",
        ["HitEffect"] = "LightHitEffect2",
        ["CombatInv"] = true,

        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, 0.1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Burst,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(2)
k:Stop()
end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["C"] then
        wait(2)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://0"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.6)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 0.35,
        ["Type"] = "Knockback",
        ["HitEffect"] = "LightHitEffect2",
        ["CombatInv"] = true,

        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, 0.1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Burst,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(2)
k:Stop()
end
end)

-- Phase 3.5
wait(5)
Chat("LADIES AND GENTLEMEN, WELCOME TO THE FINAL SHOWDOWN!!",Color3.fromRGB(89, 255, 0))
wait(4)
Chat("This wont take long...",Color3.fromRGB(75, 0, 188))
wait(5)
Chat("...to swiftly perish you.",Color3.fromRGB(75, 0, 188))
wait(5)
Chat("3 STRIKES, YOU'RE OUT!",Color3.fromRGB(89, 255, 0))

wait(10)
Chat("You see, with your help i accomplished this form.",Color3.fromRGB(75, 0, 188))
wait(9)
Chat("Now the only thing left from me is to get your soul.",Color3.fromRGB(75, 0, 188))
wait(5)
Chat("But you are making it much harder for me, yknow.",Color3.fromRGB(75, 0, 188))
wait(5)
Chat([[i can feel the determination, the burning power in me, 
it hurts but it feels amazing.]],Color3.fromRGB(255, 0, 0))
wait(10)
Chat("And it's all thanks to you.",Color3.fromRGB(255, 0, 0))

-- GH!DustTrust Dialogue 2

wait(20)
Chat("IS THAT ALL YOU GOT?",Color3.fromRGB(75, 0, 188))
wait(4)
Chat("pathetic.",Color3.fromRGB(255, 0, 0))
wait(3)
Chat("let me teach you how to fight properly.",Color3.fromRGB(255, 0, 0))
wait(10)
Chat("you're truly a heartless being, whos looking for attention.",Color3.fromRGB(75, 0, 188))
wait(8)
Chat("And never gets bored of doing the same thing.",Color3.fromRGB(255, 0, 0))
wait(5)
Chat("It's time to let you feel the pain of these poor remains.",Color3.fromRGB(75, 0, 188))

-- GH!DustTrust Dialogue 3 | Papyrus's Turn & Sans Turn
-- Chat Colors: 255, 0, 0 - Red | 75, 0, 188) - Purple | 179, 255, 0) - Lime/Green or 89, 255, 0)

wait(20)
Chat("Sans, you cant take care of the human yourself.",Color3.fromRGB(89, 255, 0))
wait(7)
Chat("Therefore, I am obligated to help you.",Color3.fromRGB(89, 255, 0))
wait(4)
Chat("good timing papyrus, im getting a bit tired of this.",Color3.fromRGB(75, 0, 188))
wait(7)
Chat("Let me do this.",Color3.fromRGB(89, 255, 0))
wait(15)
Chat("my turn.",Color3.fromRGB(75, 0, 188))
wait(10)
Chat("Let me try!",Color3.fromRGB(89, 255, 0))
wait(10)

-- GH!DustTrust Transformation to Papyrus
stun(true)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4460182501"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.1)
wait(1)
k:Stop()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4416715001"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(0.5)
wait(1)
Chat("NOT NOW SANS!",Color3.fromRGB(89, 255, 0))
wait(3)
k:Stop()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4661950750"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
wait(1)
stun(false)

-- GH!DustTrust Dialogue 4 | Papyrus's Turn 
wait(6)
Chat("Hey! Afterall, He's my only brother...",Color3.fromRGB(89, 255, 0))
wait(6)
Chat("And i have to protect him at any cost.",Color3.fromRGB(89, 255, 0))

-- GH!DustTrust Dialogue 5 | Ending Dialogue
repeat wait() until timeRemaining == 19
Chat("wh.. what...?",Color3.fromRGB(75, 0, 188))
wait(5)
Chat("what is this strange feeling...",Color3.fromRGB(75, 0, 188))
wait(5)
Chat("i don't- understand...",Color3.fromRGB(75, 0, 188))
wait(5)
Chat("SANS, DON'T GIVE UP JUST YET!",Color3.fromRGB(89, 255, 0))
wait(4)
Chat("WE STILL NEED T-",Color3.fromRGB(89, 255, 0))
if phase3end == false then
wait(0.6)
Chat("Phase end postponed..",Color3.fromRGB(255, 0, 0))
-- GH!DustTrust Dialogue 6 | Ending Dialogue + Phase 4
warn("Waiting For Phase 4")
-- Phase 4
elseif phase3end == true then
wait(0.5)
inv(true)
spawn(function()
KnockbackAura(true)
end)
music:Stop()
wait(2)

loadstring(game:HttpGet("https://raw.githubusercontent.com/Shitty-script-bro/SoulShitterMain/main/divine%20terror.lua"))()

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["N"] then
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Normal",
        ["HitEffect"] = "HeavyHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * math.huge,
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Burst,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end
end)

end
-- CREDITS
    -- shifter#4049 - Is me, the cool guy
    -- Scarlet#9431 - Old dusttrust script owner
    -- Leonidus™#2121 - Calling me a skid, being a prick.
    -- antiiiic#4389 - Calling me a skid, BEING a skid.
    -- Lucy#2115 - Major scripting support
    -- Underplayer#0017 - Scripting support.
    -- Random mettaton script i found (credits to whoever owns) - Minor scripting support
    -- SoulModders discord for random scripts (UI Mainly)
