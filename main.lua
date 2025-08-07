-- Shadow X Hub Loader (main.lua) if not isfile("ShadowXHub/core.lua") then writefile("ShadowXHub/core.lua", game:HttpGet("https://raw.githubusercontent.com/YOUR_USERNAME/ShadowXHub/main/core.lua")) end loadstring(readfile("ShadowXHub/core.lua"))()

-- Shadow X Hub Core Script (core.lua) local UserInputService = game:GetService("UserInputService") local Players = game:GetService("Players") local LocalPlayer = Players.LocalPlayer local GuiService = game:GetService("GuiService") local HttpService = game:GetService("HttpService") local RunService = game:GetService("RunService")

-- UI local ScreenGui = Instance.new("ScreenGui") ScreenGui.Name = "ShadowXHub" ScreenGui.ResetOnSpawn = false ScreenGui.Parent = game:GetService("CoreGui")

-- Key system check local function checkKey() local requiredKey = "shadowIsking! 2025best" local keyInput = tostring(string.lower(HttpService:GenerateGUID(true))) -- Replace with LootLab UI check if keyInput ~= requiredKey then LocalPlayer:Kick("Wrong Key. Use shadowIsking! 2025best") end end

checkKey()

-- Creator label local credit = Instance.new("TextLabel") credit.Size = UDim2.new(0, 200, 0, 25) credit.Position = UDim2.new(1, -220, 0, 5) credit.AnchorPoint = Vector2.new(0, 0) credit.BackgroundTransparency = 1 credit.TextColor3 = Color3.fromRGB(255, 255, 255) credit.Text = "Created by @ShadowNinjaPlayZ" credit.Font = Enum.Font.GothamBold credit.TextSize = 14 credit.Parent = ScreenGui

-- Load all modules local modules = { "autofarm.lua", "sniper.lua", "raids.lua", "haki.lua", "teleport.lua", "events.lua", "tools.lua", "keysystem.lua", "tradegui.lua" }

for _, moduleFile in ipairs(modules) do local success, result = pcall(function() local path = "ShadowXHub/" .. moduleFile if not isfile(path) then writefile(path, game:HttpGet("https://raw.githubusercontent.com/ShadowKillerAI/ShadowXHub/main/core.lua" .. moduleFile)) end return loadstring(readfile(path))() end)

if not success then
    warn("Failed to load module:", moduleFile, result)
end

end


