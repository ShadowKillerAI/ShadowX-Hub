-- Shadow X Hub | All-in-One Script
-- Created by @ShadowNinjaPlayZ

-- CONFIG
local KEY = "shadowIsking! 2025best"
local UserKey = KEY -- In real usage, prompt or get from LootLab

if UserKey ~= KEY then
    game.Players.LocalPlayer:Kick("❌ Invalid key! Get key from LootLab.")
end

-- UI SETUP
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
ScreenGui.Name = "ShadowXHubUI"

local Main = Instance.new("Frame", ScreenGui)
Main.Size = UDim2.new(0, 600, 0, 400)
Main.Position = UDim2.new(0.5, -300, 0.5, -200)
Main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Main.Active = true Main.Draggable = true

local Title = Instance.new("TextLabel", Main)
Title.Size = UDim2.new(1, 0, 0, 50)
Title.Text = "Shadow X Hub | @ShadowNinjaPlayZ"
Title.TextScaled = true
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1

-- FAKE TRADE SCAM GUI (Troll)
local function tradeScam()
    local scam = Instance.new("ScreenGui", game.CoreGui)
    local scamFrame = Instance.new("Frame", scam)
    scamFrame.Size = UDim2.new(0, 300, 0, 120)
    scamFrame.Position = UDim2.new(0.5, -150, 0.5, -60)
    scamFrame.BackgroundColor3 = Color3.fromRGB(40, 0, 0)

    local text = Instance.new("TextLabel", scamFrame)
    text.Size = UDim2.new(1, 0, 1, 0)
    text.Text = "✅ Trade Confirmed (Trolled 😈)"
    text.TextScaled = true
    text.TextColor3 = Color3.fromRGB(255, 255, 255)
end

-- ICE WALK / WATER WALK
local function walkOnWater()
    game:GetService("RunService").Stepped:Connect(function()
        for _, v in pairs(workspace:GetChildren()) do
            if v:IsA("Part") and v.Name == "Water" then
                v.CanCollide = true
                v.Transparency = 0.7
            end
        end
    end)
end

-- FLY SCRIPT
local function fly()
    local plr = game.Players.LocalPlayer
    local char = plr.Character or plr.CharacterAdded:Wait()
    local humanoidRootPart = char:WaitForChild("HumanoidRootPart")
    local flying = true

    local bv = Instance.new("BodyVelocity", humanoidRootPart)
    bv.Velocity = Vector3.new(0, 0, 0)
    bv.MaxForce = Vector3.new(999999, 999999, 999999)

    game:GetService("UserInputService").InputBegan:Connect(function(input)
        if input.KeyCode == Enum.KeyCode.X then
            flying = not flying
            bv:Destroy()
        end
    end)

    while flying and humanoidRootPart do
        bv.Velocity = humanoidRootPart.CFrame.lookVector * 50
        wait()
    end
end

-- CALL FEATURES
tradeScam()
walkOnWater()
fly()

-- NOTE: Add actual auto farm, fruit sniper, auto raid, haki, levi hunt, sea event farm features next.
