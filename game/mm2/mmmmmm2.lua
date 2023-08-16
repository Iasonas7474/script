local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("mm2 game", "Ocean")

-- game
local game = Window:NewTab("mm2 game")
local gameSection = game:NewSection("mm2 game")

gameSection:NewButton("mm2 admin", "kein", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Iasonas7474/script/main/mmm2.lua"))()
end)

gameSection:NewButton("mm2 game", "mm2 script", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Iasonas7474/script/main/mm2%20script.lua"))()
end)
