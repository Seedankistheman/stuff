
--Glitchtale Sans
--remotes n stuff
local pass = getrenv()._G.Pass
local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer
local Character = localPlayer.Character
local Name = game:GetService("Players").LocalPlayer.Name
local mouse = game.Players.LocalPlayer:GetMouse()
local person = name
local chatEvent = game.ReplicatedStorage.Remotes.Events
local Effect = game.ReplicatedStorage.Remotes.Effects
local UIS = game:GetService("UserInputService")

local sans = game:GetService("ReplicatedStorage").Remotes.SansMoves
--Start
game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Sans"
wait(2)
local MoveAnimations = localPlayer.Backpack.Main.SansMoves.Animations
local ClickAnimations  = localPlayer.Backpack.Main.SansMoves.ModuleScript.Animations.BladesCombat
if not localPlayer.Character then
	localPlayer.CharacterAdded:Wait()
end
local Torso = localPlayer.Character.Torso
localPlayer.StarterPlaylist["1Megalovania"].SoundId = "rbxassetid://2162830314"
wait(0.5)
game:GetService("Players").LocalPlayer.StarterPlaylist["1Megalovania"].Volume = 5
function getlock()
local pos = mouse.Hit.p
if game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value ~= nil then
pos = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
end
warn(pos)
return pos
end

local function FunnyHit()
    local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4800266314"
    local Funny = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    sans:InvokeServer({pass, "SpawnBone", true})
    Funny:Play()
    Funny:AdjustSpeed(1.2)
    local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 0.5, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "BoneHitEffect", 
        ["CombatInv"] = true,
        ["Karma"] = 50,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
        ["Velocity"] = Vector3.new(0, 0.1, 0), 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.ShieldBreak,
        ["Damage"] = 35
    }
}
game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(0.3)
Funny:Stop()
sans:InvokeServer({pass, "SpawnBone", false})
end

local function backinthejudgementhall()
    local gettem = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
    tostring(gettem)
    local epic = game.Workspace[tostring(gettem)]
    local target = epic.Torso.Position
    sans:InvokeServer({pass, "Bones", "Ground2", target})
    sans:InvokeServer({pass, "GasterBlasters", "SummonOneBig", target})
    sans:InvokeServer({pass, "GasterBlasters", "SummonFour", target})
    --sans:InvokeServer({pass, "GasterBlasters", "SummonOne", target})
    --sans:InvokeServer({pass, "Special3"})
end

local function ultimate()
    local gettem = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
    tostring(gettem)
    local epic = game.Workspace[tostring(gettem)]
    local target = epic.Torso.Position
    local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "GasterBlasters", 
	[3] = "SummonSpecial", 
	[4] = getlock()
}
local Event = game:GetService("ReplicatedStorage").Remotes.SansMoves
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 10,
        ["Type"] = "Normal",
        ["HitEffect"] = "BoneHitEffect",
        ["CombatInv"] = true,
        ["VictimCFrame"] = CFrame.new(target),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt,
        ["Velocity"] = Vector3.new(0.001, 0.001, 0.001),
        ["Sound"] = game:GetService("ReplicatedStorage").Resources.Sounds.Moves.Bones.BoneLift,
        ["Damage"] = 0
    }
}
game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
chatEvent:FireServer({pass,"Chatted","i've had enough...",Color3.fromRGB(255, 255, 255)});
wait(2)
chatEvent:FireServer({pass,"Chatted","listen kid, i'm tired, you're tired, they're tired",Color3.fromRGB(255, 255, 255)});
wait(3.9)
chatEvent:FireServer({pass,"Chatted","let's just end it right here okay?",Color3.fromRGB(255, 255, 255)});
Event:InvokeServer(A_1)
end

local function teleportattack()
    local gettem = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
    tostring(gettem)
    local epic = game.Workspace[tostring(gettem)]
    local target = epic.Torso.Position
    local me = game.Players.LocalPlayer.Character
    local targetplayer = game.Workspace.epic.HumanoidRootPart
    me.HumanoidRootPart.CFrame = CFrame.new(targetplayer.Position.X, targetplayer.Position.Y, targetplayer.Position.Z)
end

local function transform()
    local gettem = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
    tostring(gettem)
    local epic = game.Workspace[tostring(gettem)]
    local target = epic.Torso.Position
    chatEvent:FireServer({pass,"Chatted","sans grabs Frisk's SOUL*",Color3.fromRGB(255, 255, 255)});
    local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 0,
        ["Type"] = "Normal",
        ["HitEffect"] = "SpearJusticeExplosion",
        ["CombatInv"] = true,
        ["VictimCFrame"] = CFrame.new(target),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt,
        ["Velocity"] = Vector3.new(0.1, 0.1, 0.1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.LevelUp,
        ["Damage"] = 5
    }
}
    game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
    game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.B then
local locked = game.Players.LocalPlayer.Backpack.Main:WaitForChild("LockOnScript").LockOn.Value
local funny = game:GetService("Workspace")[tostring(locked)]
Instance.new("ObjectValue", funny)
funny.Value.Name = "Dodge"
end
end)



game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.Z then
local locked = game.Players.LocalPlayer.Backpack.Main:WaitForChild("LockOnScript").LockOn.Value
local funnyy = game:GetService("Workspace")[tostring(locked)].Dodge
funnyy:Destroy()
end
end)



game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.X then
local locked = game.Players.LocalPlayer.Backpack.Main:WaitForChild("LockOnScript").LockOn.Value
local funnyyy = game:GetService("Workspace")[tostring(locked)].Inv
funnyyy:Destroy()
end
end)

while true do
wait(0)
sans:InvokeServer({pass, "changeEye", true})
sans:InvokeServer({pass, "changeEye", false})
end
end

local function backinthejudgementhall2()
    local gettem = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
    tostring(gettem)
    local epic = game.Workspace[tostring(gettem)]
    local target = epic.Torso.Position
    sans:InvokeServer({pass, "Bones", "Ground2", target})
    sans:InvokeServer({pass, "GasterBlasters", "SummonOneBig", target})
    sans:InvokeServer({pass, "GasterBlasters", "SummonEight", target})
end

local function backinthejudgementhall3()
    local gettem = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
    tostring(gettem)
    local epic = game.Workspace[tostring(gettem)]
    local target = epic.Torso.Position
    sans:InvokeServer({pass, "Special3"})
    wait(2)
    local target2 = epic.Torso.Position
    sans:InvokeServer({pass, "GasterBlasters", "SummonOne", target2})
    wait(1)
    local A_1 = 
{
	[1] = pass, 
	[2] = "Telekinesis", 
	[3] = "Special2", 
	[4] = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
}
    sans:InvokeServer(A_1)
end

local function stopit()
    chatEvent:FireServer({pass,"Chatted","i'm getting.. tired..",Color3.fromRGB(255, 255, 255)});
        local A_1 = 
{
	[1] = pass, 
	[2] = "Telekinesis", 
	[3] = "Special", 
	[4] = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
}
    sans:InvokeServer(A_1)
end

local function heyakid()
    local gettem = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
    tostring(gettem)
    local epic = game.Workspace[tostring(gettem)]
    local target = epic.Torso.Position
    
end

local function heyapal()
    local gettem = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
    tostring(gettem)
    local epic = game.Workspace[tostring(gettem)]
    local target = epic.Torso.Position
end

local function heyabuddy()
    local gettem = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
    tostring(gettem)
    local epic = game.Workspace[tostring(gettem)]
    local target = epic.Torso.Position
end

local function spare()
    local gettem = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
    tostring(gettem)
    local epic = game.Workspace[tostring(gettem)]
    local target = epic.Torso.Position
    chatEvent:FireServer({pass,"Chatted","The soul of FEAR..",Color3.fromRGB(255, 255, 255)});
    wait(2)
    chatEvent:FireServer({pass,"Chatted","A being who was meant to put a wedge between humans and monsters..",Color3.fromRGB(255, 255, 255)});
    wait(5)
    chatEvent:FireServer({pass,"Chatted","With the ability to turn one's magic against oneself..",Color3.fromRGB(255, 255, 255)});
    wait(3)
    chatEvent:FireServer({pass,"Chatted","That ability..",Color3.fromRGB(255, 255, 255)});
    wait(2)
    chatEvent:FireServer({pass,"Chatted","Cost me the LIFE of Papyrus and Gaster..",Color3.fromRGB(255, 255, 255)});
    wait(3)
    chatEvent:FireServer({pass,"Chatted","If only I wasn't so carless..",Color3.fromRGB(255, 255, 255)});
    wait(3)
    chatEvent:FireServer({pass,"Chatted","sans' eye starts to glow brighter*",Color3.fromRGB(255, 255, 255)});
    wait(3)
    chatEvent:FireServer({pass,"Chatted","something within sans starts to crack..*",Color3.fromRGB(255, 255, 255)});
    wait(5)
    chatEvent:FireServer({pass,"Chatted","you.. you're the monster!*",Color3.fromRGB(255, 255, 255)});
    wait(2)
    chatEvent:FireServer({pass,"Chatted","sans' sanity cracks*",Color3.fromRGB(257, 231, 157)});
end
    

game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.KeypadOne then
            ultimate()
        print("Move1")
    end
end)

game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.KeypadTwo then
            backinthejudgementhall()
        print("Move2")
    end
end)

game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.KeypadThree then
            backinthejudgementhall2()
        print("Move3")
    end
end)

game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.KeypadFour then
            stopit()
        print("Move4")
    end
end)

game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.KeypadFive then
            backinthejudgementhall3()
        print("Move5")
    end
end)

game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.KeypadSix then
            heyakid()
        print("Move6")
    end
end)
game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.KeypadSeven then
            heyapal()
        print("Move7")
    end
end)
game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.KeypadEight then
            heyabuddy()
        print("Move8")
    end
end)
game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.KeypadNine then
            spare()
        print("Move9")
    end
end)
game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.KeypadZero then
        transform()
        print("Transformed")
    end
end)
mouse.Button2Down:connect(function()
        FunnyHit()
    end)
