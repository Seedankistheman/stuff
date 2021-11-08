game.Players.LocalPlayer.Character["Karma"]:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.BackgroundColor3 = Color3.new(255, 0, 0)
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.StaminaBar:Destroy()
game.Players.LocalPlayer.Character["FullHateMode"]:Destroy()
game.Players.LocalPlayer.Character["HateMode"]:Destroy() 
while true do wait()
    if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
    game.Players.LocalPlayer.Character.Humanoid.Health = 1
    end
end
