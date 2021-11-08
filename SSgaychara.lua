spawn(function()
        while wait() do
            if dead == true then break end
    for i = 0,1,0.01 do
        local A_1 = 
            {
                [1] = getrenv()._G.Pass,
                [2] = "KnifeColor",
                [3] = "ChangeColor",
                [4] = Color3.fromHSV(i,1,1),
                [5] = 0,
                [6] = "RedMode"
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
        Event:InvokeServer(A_1)
        wait()
        end
    end
end)
while true do
    for i = 0,1,0.01 do
        wait()
        local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "SlashEffect",
        [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing2,
        [4] = Color3.fromHSV(i,1,1),
        [5] = CFrame.new(0,1,-2,0,2,0,0,0,0,0,0,0)
    }
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
    end
end