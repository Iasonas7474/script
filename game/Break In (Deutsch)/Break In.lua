local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Break In (Deutsch)", "Ocean")

local bredak = Window:NewTab("Break In (Deutsch)")
local DeutschSection = bredak:NewSection("Break In (Deutsch)")

DeutschSection:NewButton("Break In (Deutsch) admin", "Break In (Deutsch) admin real", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Iasonas7474/script/main/mmm2.lua"))()
end)

DeutschSection:NewButton("Break In (Deutsch)", "game Break In (Deutsch)", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Iasonas7474/script/main/game/Break%20In%20(Deutsch)/Break%20In%20(Deutsch).lua"))()
end)