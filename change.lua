getgenv().Gem = 1000

repeat
    task.wait()
until game:IsLoaded() and game.Players.LocalPlayer:GetAttribute("DataHasLoaded")
repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer

while task.wait()
    local gem = game.Players.LocalPlayer:GetAttribute("Diamonds")
    if gem and typeof(gem) == "number" and gem >= getgenv().Gem then
        writefile(game.Players.LocalPlayer.Name .. ".txt", "Completed-" .. tostring(gem) .. )
        break
    end
end
