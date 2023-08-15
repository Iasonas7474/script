local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("mm2", "Ocean")

-- MAIN
local Main = Window:NewTab("mm2")
local MainSection = Main:NewSection("start")

MainSection:NewButton("mm2", "mm2 script", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Iasonas7474/script/main/mm2.lua'))()
end)


MainSection:NewToggle("speed", "speed 300 off speed 50", function(state)
    if state then
game.Players.localPlayer.Character.Humanoid.WalkSpeed = 300
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
    end
end)

MainSection:NewButton("mm2 admin", "mm2 admin script", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Iasonas7474/script/main/mmm2.lua'), true)()
end)

MainSection:NewKeybind("mm2", "script", Enum.KeyCode.B, function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Iasonas7474/script/main/mmmm2.lua'), true)()
end)
