game:GetService("StarterGui"):SetCore("SendNotification",{
    Title = "info";
    Text = "Script loaded enjoy!";
    Icon = "rbxassetid://13689518399";
    Duration = 5;
})
game.StarterGui:SetCore("ChatMakeSystemMessage", {
Text = "build a boat script loaded! enjoy!";
    Color = Color3.fromRGB(255, 255, 255);
})


local PabloLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Iasonas7474/script/main/robloxx.lua"))()
local window = PabloLib:Create(
"Build A Boat For Treasure gui", -- Name here.
"Enabled", -- If you want draggable set here to "Enabled" if you dont want set to "Disabled".
"p" -- You can put any keybind here to open close.
)

--Tabs--

local tab1 = window:CreateTab("Autofarm")

--buttons--

tab1:CreateButton("autofarm", function()
getgenv().TreasureAutoFarm = {
    Enabled = true, -- // Toggle the auto farm on and off
    Teleport = 1.10, -- // How fast between each teleport between the stages and stuff
    TimeBetweenRuns = 1.10 -- // How long to wait until it goes to the next run
}
 
-- // Services
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local Lighting = game:GetService("Lighting")
 
-- // Vars
local LocalPlayer = Players.LocalPlayer
 
-- // Goes through all of the stages
local autoFarm = function(currentRun)
    -- // Variables
    local Character = LocalPlayer.Character
    local NormalStages = Workspace.BoatStages.NormalStages
 
    -- // Go to each stage thing
    for i = 1, 10 do
        local Stage = NormalStages["CaveStage" .. i]
        local DarknessPart = Stage:FindFirstChild("DarknessPart")
 
        if (DarknessPart) then
            -- // Teleport to next stage
            print("Teleporting to next stage: Stage " .. i)
            Character.HumanoidRootPart.CFrame = DarknessPart.CFrame
 
            -- // Create a temp part under you
            local Part = Instance.new("Part", LocalPlayer.Character)
            Part.Anchored = true
            Part.Position = LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 6, 0)
 
            -- // Wait and remove temp part
            wait(getgenv().TreasureAutoFarm.Teleport)
            Part:Destroy()
        end
    end
 
    -- // Go to end
    print("Teleporting to the end")
    repeat wait()
        Character.HumanoidRootPart.CFrame = NormalStages.TheEnd.GoldenChest.Trigger.CFrame
    until Lighting.ClockTime ~= 35
 
    -- // Wait until you have respawned
    local Respawned = True
    local Connection
    Connection = LocalPlayer.CharacterAdded:Connect(function()
        Respawned = true
        Connection:Disconnect()
    end)
 
    repeat wait() until Respawned
    wait(getgenv().TreasureAutoFarm.TimeBetweenRuns)
    print("Auto Farm: Run " .. currentRun .. " finished")
end
 
-- // Whilst the autofarm is enable, constantly do it
local autoFarmRun = 1000000
while wait() do
    if (getgenv().TreasureAutoFarm.Enabled) then
        print("Initialising Auto Farm: Run " .. autoFarmRun)
        autoFarm(autoFarmRun)
        autoFarmRun = autoFarmRun + 1000000
    end
end
end)

tab1:CreateButton("Turn off autofarm", function()
getgenv().TreasureAutoFarm = {
    Enabled = False, -- // Toggle the auto farm on and off
    Teleport = 1.0, -- // How fast between each teleport between the stages and stuff
    TimeBetweenRuns = 1.0 -- // How long to wait until it goes to the next run
}
 
-- // Services
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local Lighting = game:GetService("Lighting")
 
-- // Vars
local LocalPlayer = Players.LocalPlayer
 
-- // Goes through all of the stages
local autoFarm = function(currentRun)
    -- // Variables
    local Character = LocalPlayer.Character
    local NormalStages = Workspace.BoatStages.NormalStages
 
    -- // Go to each stage thing
    for i = 1, 10 do
        local Stage = NormalStages["CaveStage" .. i]
        local DarknessPart = Stage:FindFirstChild("DarknessPart")
 
        if (DarknessPart) then
            -- // Teleport to next stage
            print("Teleporting to next stage: Stage " .. i)
            Character.HumanoidRootPart.CFrame = DarknessPart.CFrame
 
            -- // Create a temp part under you
            local Part = Instance.new("Part", LocalPlayer.Character)
            Part.Anchored = true
            Part.Position = LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 6, 0)
 
            -- // Wait and remove temp part
            wait(getgenv().TreasureAutoFarm.Teleport)
            Part:Destroy()
        end
    end
 
    -- // Go to end
    print("Teleporting to the end")
    repeat wait()
        Character.HumanoidRootPart.CFrame = NormalStages.TheEnd.GoldenChest.Trigger.CFrame
    until Lighting.ClockTime ~= 35
 
    -- // Wait until you have respawned
    local Respawned = false
    local Connection
    Connection = LocalPlayer.CharacterAdded:Connect(function()
        Respawned = true
        Connection:Disconnect()
    end)
 
    repeat wait() until Respawned
    wait(getgenv().TreasureAutoFarm.TimeBetweenRuns)
    print("Auto Farm: Run " .. currentRun .. " finished")
end
 
-- // Whilst the autofarm is enable, constantly do it
local autoFarmRun = 1
while wait() do
    if (getgenv().TreasureAutoFarm.Enabled) then
        print("Initialising Auto Farm: Run " .. autoFarmRun)
        autoFarm(autoFarmRun)
        autoFarmRun = autoFarmRun + 1
    end
end
end)

--Info--

tab1:CreateInfo("Script Made By onlyscripts & ReD0")

--WARNING--

tab1:CreateWarning("If there is a bug in the gui, please report it on our channel.")

--Info--

tab1:CreateInfo("channel name: Onlyscripts @Onlyscripts803")
