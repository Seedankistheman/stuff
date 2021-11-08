game.Players.LocalPlayer:GetMouse()
game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.Z then
        local A_1 = 
            {
                [1] = getrenv()._G.Pass,
                [2] = "Chatted", 
                [3] = "Go to brazil.",
                [4] = Color3.new(255,255,255)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        local args = { 
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback",
                ["HitEffect"] = "HeavyHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                ["Velocity"] = Vector3.new(-0, -1, -0),
                ["HitTime"] = 2.5,
                ["CombatInv"] = true,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                ["Damage"] = 0
            }
}
        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end
end)
game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.Z then
        wait("2.4")
        repeat
        local args = { 
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback",
                ["HitEffect"] = "HeavyHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                ["Velocity"] = Vector3.new(-0, 150, -0),
                ["HitTime"] = 2.5,
                ["CombatInv"] = true,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                ["Damage"] = 0
            }
        }


        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(2.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace[game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value].HumanoidRootPart.CFrame
        until game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value == nil
end
end)