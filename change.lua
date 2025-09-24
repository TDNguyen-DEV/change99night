getgenv().Gem = 1000

repeat
    task.wait()
until game:IsLoaded() and game.Players.LocalPlayer:GetAttribute("DataHasLoaded")
repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer

while task.wait() do
    local gem = game.Players.LocalPlayer:GetAttribute("Diamonds")
    if gem and typeof(gem) == "number" and gem >= getgenv().Gem then
        writefile(game.Players.LocalPlayer.Name .. ".txt", "Completed-" .. tostring(getgenv().Gem) .. " gem 99 night")
        break
    end
end
