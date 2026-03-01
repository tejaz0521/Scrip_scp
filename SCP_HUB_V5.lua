-- ══════════════════════════════════════════════════
--              SCP HUB - MUSCLE LEGENDS
--          Made by MOHA / TEJAZ
--          Key System + Full Hub Merged
-- ══════════════════════════════════════════════════

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- ╔══════════════════════════════════════════════════╗
--   ⚡ SCP HUB LOADING SCREEN  |  Made by TEJAZ
-- ╚══════════════════════════════════════════════════╝

local _TweenService = game:GetService("TweenService")
local _LocalPlayer = game:GetService("Players").LocalPlayer

repeat task.wait() until _LocalPlayer and _LocalPlayer.Character

local _loadGui = Instance.new("ScreenGui")
_loadGui.Name = "SCPLoadScreen"
_loadGui.ResetOnSpawn = false
_loadGui.DisplayOrder = 9999
_loadGui.Parent = _LocalPlayer:WaitForChild("PlayerGui")

-- Full black overlay
local _overlay = Instance.new("Frame")
_overlay.Size = UDim2.new(1,0,1,0)
_overlay.BackgroundColor3 = Color3.fromRGB(0,0,0)
_overlay.BackgroundTransparency = 0
_overlay.BorderSizePixel = 0
_overlay.Parent = _loadGui

-- Center card
local _card = Instance.new("Frame")
_card.Size = UDim2.new(0,300,0,340)
_card.Position = UDim2.new(0.5,-150,0.5,-170)
_card.BackgroundColor3 = Color3.fromRGB(7,7,10)
_card.BorderSizePixel = 0
_card.Parent = _loadGui
Instance.new("UICorner",_card).CornerRadius = UDim.new(0,22)

-- Animated border
local _border = Instance.new("UIStroke")
_border.Color = Color3.fromRGB(220,0,0)
_border.Thickness = 2.5
_border.Parent = _card

-- Top red accent
local _topBar = Instance.new("Frame")
_topBar.Size = UDim2.new(1,0,0,4)
_topBar.BackgroundColor3 = Color3.fromRGB(220,0,0)
_topBar.BorderSizePixel = 0
_topBar.Parent = _card
Instance.new("UICorner",_topBar).CornerRadius = UDim.new(0,22)

-- Logo
local _logo = Instance.new("ImageLabel")
_logo.Size = UDim2.new(0,90,0,90)
_logo.Position = UDim2.new(0.5,-45,0,18)
_logo.BackgroundTransparency = 1
_logo.Image = "rbxassetid://125515680929159"
_logo.ScaleType = Enum.ScaleType.Fit
_logo.Parent = _card

-- SCP HUB title
local _title = Instance.new("TextLabel")
_title.Size = UDim2.new(1,0,0,28)
_title.Position = UDim2.new(0,0,0,114)
_title.BackgroundTransparency = 1
_title.Text = "⚡ SCP HUB ⚡"
_title.TextColor3 = Color3.fromRGB(255,255,255)
_title.TextSize = 22
_title.Font = Enum.Font.GothamBlack
_title.Parent = _card

-- Script type label (PAID or PUBLIC)
local _scriptType = Instance.new("TextLabel")
_scriptType.Size = UDim2.new(1,0,0,20)
_scriptType.Position = UDim2.new(0,0,0,142)
_scriptType.BackgroundTransparency = 1
_scriptType.Text = "🆓 PUBLIC VERSION  •  FREE FOR ALL"
_scriptType.TextColor3 = Color3.fromRGB(220,0,0)
_scriptType.TextSize = 12
_scriptType.Font = Enum.Font.GothamBold
_scriptType.Parent = _card

-- Divider
local _div = Instance.new("Frame")
_div.Size = UDim2.new(0.7,0,0,1)
_div.Position = UDim2.new(0.15,0,0,172)
_div.BackgroundColor3 = Color3.fromRGB(30,30,45)
_div.BorderSizePixel = 0
_div.Parent = _card

-- Loading bar bg
local _barBg = Instance.new("Frame")
_barBg.Size = UDim2.new(1,-30,0,8)
_barBg.Position = UDim2.new(0,15,0,185)
_barBg.BackgroundColor3 = Color3.fromRGB(18,18,28)
_barBg.BorderSizePixel = 0
_barBg.Parent = _card
Instance.new("UICorner",_barBg).CornerRadius = UDim.new(0,6)

-- Loading bar fill
local _barFill = Instance.new("Frame")
_barFill.Size = UDim2.new(0,0,1,0)
_barFill.BackgroundColor3 = Color3.fromRGB(220,0,0)
_barFill.BorderSizePixel = 0
_barFill.Parent = _barBg
Instance.new("UICorner",_barFill).CornerRadius = UDim.new(0,6)

-- Status text
local _statusTxt = Instance.new("TextLabel")
_statusTxt.Size = UDim2.new(1,-20,0,22)
_statusTxt.Position = UDim2.new(0,10,0,202)
_statusTxt.BackgroundTransparency = 1
_statusTxt.Text = "⏳  Initializing..."
_statusTxt.TextColor3 = Color3.fromRGB(160,160,180)
_statusTxt.TextSize = 12
_statusTxt.Font = Enum.Font.GothamBold
_statusTxt.Parent = _card

-- Percent label
local _pctLbl = Instance.new("TextLabel")
_pctLbl.Size = UDim2.new(1,0,0,20)
_pctLbl.Position = UDim2.new(0,0,0,228)
_pctLbl.BackgroundTransparency = 1
_pctLbl.Text = "0%"
_pctLbl.TextColor3 = Color3.fromRGB(220,0,0)
_pctLbl.TextSize = 13
_pctLbl.Font = Enum.Font.GothamBlack
_pctLbl.Parent = _card

-- Made by
local _madeLbl = Instance.new("TextLabel")
_madeLbl.Size = UDim2.new(1,0,0,18)
_madeLbl.Position = UDim2.new(0,0,0,255)
_madeLbl.BackgroundTransparency = 1
_madeLbl.Text = "👑 Made by TEJAZ  •  discord.gg/nDSy4jdVDc"
_madeLbl.TextColor3 = Color3.fromRGB(60,60,80)
_madeLbl.TextSize = 10
_madeLbl.Font = Enum.Font.GothamBold
_madeLbl.Parent = _card

-- Version badge
local _verBg = Instance.new("Frame")
_verBg.Size = UDim2.new(0,0,0,22)
_verBg.Position = UDim2.new(0.5,0,0,278)
_verBg.BackgroundColor3 = Color3.fromRGB(180,0,0)
_verBg.BorderSizePixel = 0
_verBg.AutomaticSize = Enum.AutomaticSize.X
_verBg.AnchorPoint = Vector2.new(0.5,0)
_verBg.Parent = _card
Instance.new("UICorner",_verBg).CornerRadius = UDim.new(0,8)
local _verLbl = Instance.new("TextLabel")
_verLbl.Size = UDim2.new(0,0,1,0)
_verLbl.BackgroundTransparency = 1
_verLbl.Text = "  🔥 PUBLIC V5 • FREE  "
_verLbl.TextColor3 = Color3.fromRGB(255,255,255)
_verLbl.TextSize = 10
_verLbl.Font = Enum.Font.GothamBold
_verLbl.AutomaticSize = Enum.AutomaticSize.X
_verLbl.Parent = _verBg

-- Slide in
_card.Position = UDim2.new(0.5,-150,1.5,0)
_TweenService:Create(_card, TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
    Position = UDim2.new(0.5,-150,0.5,-170)
}):Play()

-- Animated border glow
task.spawn(function()
    local _t = 0
    while _loadGui.Parent do
        _t = _t + 0.02
        local _r = (math.sin(_t)+1)/2
        _border.Color = Color3.new(0.7+_r*0.3, 0, 0)
        task.wait(0.05)
    end
end)

-- Pulse logo
task.spawn(function()
    while _loadGui.Parent do
        _TweenService:Create(_logo, TweenInfo.new(0.8, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Size = UDim2.new(0,98,0,98)}):Play()
        task.wait(0.8)
        _TweenService:Create(_logo, TweenInfo.new(0.8, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Size = UDim2.new(0,90,0,90)}):Play()
        task.wait(0.8)
    end
end)

-- Loading bar animation
local _steps = {
    {0.15, "⚡  Connecting to SCP servers...", "15%"},
    {0.35, "🔐  Verifying license...", "35%"},
    {0.55, "📦  Loading features...", "55%"},
    {0.75, "🎨  Building interface...", "75%"},
    {0.90, "✅  Almost ready...", "90%"},
    {1.00, "🔥  Launching SCP HUB!", "100%"},
}

for _, step in ipairs(_steps) do
    _TweenService:Create(_barFill, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Size = UDim2.new(step[1], 0, 1, 0)
    }):Play()
    _statusTxt.Text = step[2]
    _pctLbl.Text = step[3]
    if step[3] == "100%" then
        _pctLbl.TextColor3 = Color3.fromRGB(0,220,100)
        _barFill.BackgroundColor3 = Color3.fromRGB(0,200,80)
        _border.Color = Color3.fromRGB(0,200,80)
    end
    task.wait(0.5)
end

task.wait(0.4)

-- Fade out
_TweenService:Create(_overlay, TweenInfo.new(0.5), {BackgroundTransparency = 1}):Play()
_TweenService:Create(_card, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
    Position = UDim2.new(0.5,-150,1.5,0)
}):Play()
task.wait(0.5)
_loadGui:Destroy()

-- Corner logo after hub loads
task.spawn(function()
    local _logoGui = Instance.new("ScreenGui")
    _logoGui.Name = "SCPCornerLogo"
    _logoGui.ResetOnSpawn = false
    _logoGui.DisplayOrder = 9998
    _logoGui.Parent = _LocalPlayer:WaitForChild("PlayerGui")
    local _cornerLogo = Instance.new("ImageLabel")
    _cornerLogo.Size = UDim2.new(0,55,0,55)
    _cornerLogo.Position = UDim2.new(0,6,0,6)
    _cornerLogo.BackgroundTransparency = 1
    _cornerLogo.Image = "rbxassetid://125515680929159"
    _cornerLogo.ScaleType = Enum.ScaleType.Fit
    _cornerLogo.Parent = _logoGui
end)


-- SCP LOGO OVERLAY
task.spawn(function()
    task.wait(0.5)
    local logoOverlay = Instance.new("ScreenGui")
    logoOverlay.Name = "SCPLogoOverlay"
    logoOverlay.ResetOnSpawn = false
    logoOverlay.DisplayOrder = 999
    logoOverlay.Parent = LocalPlayer:WaitForChild("PlayerGui")
    local logoImg = Instance.new("ImageLabel")
    logoImg.Size = UDim2.new(0, 60, 0, 60)
    logoImg.Position = UDim2.new(0, 8, 0, 8)
    logoImg.BackgroundTransparency = 1
    logoImg.Image = "rbxassetid://125515680929159"
    logoImg.ScaleType = Enum.ScaleType.Fit
    logoImg.Parent = logoOverlay
end)

-- Wait for character and leaderstats to fully load before doing anything
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local leaderstats = LocalPlayer:WaitForChild("leaderstats", 15)
task.wait(2) -- extra safety wait

-- ══════════════════════════════════════
-- KEY SYSTEM UI
-- ══════════════════════════════════════

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "KeySystem"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = PlayerGui

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(1, 0, 1, 0)
Frame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Frame.BackgroundTransparency = 0.3
Frame.BorderSizePixel = 0
Frame.Parent = ScreenGui

local Box = Instance.new("Frame")
Box.Size = UDim2.new(0, 400, 0, 220)
Box.Position = UDim2.new(0.5, -200, 0.5, -110)
Box.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Box.BorderSizePixel = 0
Box.Parent = ScreenGui
Instance.new("UICorner", Box).CornerRadius = UDim.new(0, 10)

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 45)
Title.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
Title.BorderSizePixel = 0
Title.Text = "🔑 SCP HUB - KEY SYSTEM"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 17
Title.Font = Enum.Font.GothamBold
Title.Parent = Box
Instance.new("UICorner", Title).CornerRadius = UDim.new(0, 10)

local Sub = Instance.new("TextLabel")
Sub.Size = UDim2.new(1, 0, 0, 30)
Sub.Position = UDim2.new(0, 0, 0, 50)
Sub.BackgroundTransparency = 1
Sub.Text = "Join discord.gg/nDSy4jdVDc to get your key!"
Sub.TextColor3 = Color3.fromRGB(200, 200, 200)
Sub.TextSize = 13
Sub.Font = Enum.Font.Gotham
Sub.Parent = Box

local Input = Instance.new("TextBox")
Input.Size = UDim2.new(0, 340, 0, 40)
Input.Position = UDim2.new(0.5, -170, 0, 95)
Input.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Input.BorderSizePixel = 0
Input.PlaceholderText = "Enter your key here..."
Input.PlaceholderColor3 = Color3.fromRGB(120, 120, 120)
Input.Text = ""
Input.TextColor3 = Color3.fromRGB(255, 255, 255)
Input.TextSize = 14
Input.Font = Enum.Font.Gotham
Input.ClearTextOnFocus = false
Input.Parent = Box
Instance.new("UICorner", Input).CornerRadius = UDim.new(0, 6)

local Status = Instance.new("TextLabel")
Status.Size = UDim2.new(1, 0, 0, 25)
Status.Position = UDim2.new(0, 0, 0, 145)
Status.BackgroundTransparency = 1
Status.Text = ""
Status.TextColor3 = Color3.fromRGB(255, 80, 80)
Status.TextSize = 13
Status.Font = Enum.Font.Gotham
Status.Parent = Box

local Button = Instance.new("TextButton")
Button.Size = UDim2.new(0, 340, 0, 38)
Button.Position = UDim2.new(0.5, -170, 0, 170)
Button.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
Button.BorderSizePixel = 0
Button.Text = "✅ SUBMIT KEY"
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.TextSize = 15
Button.Font = Enum.Font.GothamBold
Button.Parent = Box
Instance.new("UICorner", Button).CornerRadius = UDim.new(0, 6)

-- ══════════════════════════════════════
-- KEY VALIDATION (fetch from your URL)
-- Replace the KEY_URL below with your
-- own Pastebin (unlisted) or GitHub raw link
-- that contains one key per line
-- ══════════════════════════════════════

local KEY_URL = "https://pastebin.com/raw/n7UWskEA"

local function getValidKeys()
    local success, result = pcall(function()
        return game:HttpGet(KEY_URL)
    end)
    if success then
        local keys = {}
        for key in result:gmatch("[^\n]+") do
            local trimmed = key:match("^%s*(.-)%s*$")
            if trimmed ~= "" then
                table.insert(keys, trimmed)
            end
        end
        return keys
    end
    return {}
end

local function checkKey(entered)
    local keys = getValidKeys()
    for _, v in pairs(keys) do
        if v == entered then
            return true
        end
    end
    return false
end

-- ══════════════════════════════════════
-- BUTTON LOGIC
-- ══════════════════════════════════════

Button.MouseButton1Click:Connect(function()
    local entered = Input.Text
    Status.TextColor3 = Color3.fromRGB(255, 200, 0)
    Status.Text = "⏳ Checking key..."
    Button.Active = false

    task.spawn(function()
        if checkKey(entered) then
            Status.TextColor3 = Color3.fromRGB(0, 255, 100)
            Status.Text = "✅ Key accepted! Loading script..."
            task.wait(1.5)
            ScreenGui:Destroy()

            -- ══════════════════════════════════════
            -- ✅ MAIN SCRIPT LOADS AFTER KEY CHECK
            -- ══════════════════════════════════════

            local v1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/Moha-space/elerium-v2-ui-library/refs/heads/main/Library", true))():AddWindow("⚡ SCP HUB  |  MUSCLE LEGENDS  |  🔥 " .. game.Players.LocalPlayer.DisplayName, {
                main_color = Color3.fromRGB(180, 0, 0),
                min_size = Vector2.new(615, 685),
                can_resize = false,
                scrollable = true
            })

            -- INFO TAB
            local v2 = v1:AddTab("I N F O")
            v2:AddLabel("[ INFO ] [ ABOUT ] [ THE ] [ SCRIPT ]")
            v2:AddLabel("WELCOME TO SCP HUB")
            v2:AddLabel("OWNER OF THIS SCRIPT: MOHA / TEJAZ")
            v2:AddLabel("Script Made By:")
            local vu3 = v2:AddLabel("MOHA || TEJAZ")
            task.spawn(function()
                while true do
                    vu3.TextColor3 = Color3.fromHSV(tick() * 0.22 % 1, 0.8, 1)
                    task.wait(0.02)
                end
            end)
            v2:AddLabel("══════════════════════════════")
            v2:AddLabel("DISCORD INVITE LINK:")
            v2:AddButton("Join Our Discord - discord.gg/nDSy4jdVDc", function()
                setclipboard("https://discord.gg/nDSy4jdVDc")
                game:GetService("StarterGui"):SetCore("SendNotification", {
                    Title = "SCP HUB",
                    Text = "Discord link copied! Open Discord and paste it.",
                    Duration = 5
                })
            end)
            v2:AddLabel("Click button above to copy the Discord link!")

            -- STATS TAB
            local vu172 = game:GetService("Players")
            local vu173 = vu172.LocalPlayer
            infoTab1 = v1:AddTab(" STATS ")
            infoTab1:AddLabel("【 STATS 】   ").TextSize = 20
            local vu5 = infoTab1:AddLabel("Time Spent in Server: 0d 0h 0m 0s")
            local vu6 = os.time()
            local function vu14(p7)
                local v8 = math.floor(p7 / 86400)
                local v9 = p7 % 86400
                local v10 = math.floor(v9 / 3600)
                local v11 = v9 % 3600
                local v12 = math.floor(v11 / 60)
                local v13 = v11 % 60
                return string.format("%dd %dh %dm %ds", v8, v10, v12, v13)
            end
            task.spawn(function()
                while task.wait(1) do
                    vu5.Text = "Time Spent in Server: " .. vu14(os.time() - vu6)
                end
            end)
            local vu15 = 0
            local _rebirthStat = game.Players.LocalPlayer:WaitForChild("leaderstats"):WaitForChild("Rebirths")
            local vu16 = _rebirthStat and _rebirthStat.Value or 0
            local vu17 = infoTab1:AddLabel("Rebirths Gained in Server: 0")
            local function vu18()
                vu15 = game.Players.LocalPlayer.leaderstats.Rebirths.Value - vu16
                vu17.Text = "Rebirths Gained in Server: " .. vu15
            end
            task.spawn(function()
                while task.wait(0.5) do
                    vu18()
                end
            end)
            infoTab1:AddLabel("PLAYER STATS").TextSize = 20
            infoTab1:AddLabel(" GAINED ").TextSize = 20
            local vu19 = {
                StrengthGainedLabel = infoTab1:AddLabel("Amount of strength gained in this server: 0"),
                DurabilityGainedLabel = infoTab1:AddLabel("Amount of durability gained in this server: 0"),
                AgilityGainedLabel = infoTab1:AddLabel("Amount of agility gained in this server: 0"),
                KillsGainedLabel = infoTab1:AddLabel("Amount of kills gained in this server: 0"),
                EvilKarmaGainedLabel = infoTab1:AddLabel("Amount of Evil Karma gained in this server: 0"),
                GoodKarmaGainedLabel = infoTab1:AddLabel("Amount of Good Karma gained in this server: 0")
            };
            (function()
                local v20 = game.Players.LocalPlayer
                if v20 then
                    local v21 = v20:WaitForChild("leaderstats")
                    if v21 then
                        local vu22 = v21:WaitForChild("Strength")
                        local vu23 = v20:WaitForChild("Durability")
                        local vu24 = v20:WaitForChild("Agility")
                        local vu25 = v21:WaitForChild("Kills")
                        local vu26 = v20:WaitForChild("evilKarma")
                        local vu27 = v20:WaitForChild("goodKarma")
                        local vu28 = vu22.Value or 0
                        local vu29 = vu23.Value or 0
                        local vu30 = vu24.Value or 0
                        local vu31 = vu25.Value or 0
                        local vu32 = vu26.Value or 0
                        local vu33 = vu27.Value or 0
                        local function vu35(p34)
                            if p34 >= 1000000000 then return string.format("%.1fB", p34 / 1000000000)
                            elseif p34 >= 1000000 then return string.format("%.1fM", p34 / 1000000)
                            elseif p34 >= 1000 then return string.format("%.1fK", p34 / 1000)
                            else return tostring(p34) end
                        end
                        local function v42()
                            vu19.StrengthGainedLabel.Text = "Amount of strength gained in this server: " .. vu35(vu22.Value - vu28)
                            vu19.DurabilityGainedLabel.Text = "Amount of durability gained in this server: " .. vu35(vu23.Value - vu29)
                            vu19.AgilityGainedLabel.Text = "Amount of agility gained in this server: " .. vu35(vu24.Value - vu30)
                            vu19.KillsGainedLabel.Text = "Amount of kills gained in this server: " .. vu35(vu25.Value - vu31)
                            vu19.EvilKarmaGainedLabel.Text = "Amount of Evil Karma gained in this server: " .. vu35(vu26.Value - vu32)
                            vu19.GoodKarmaGainedLabel.Text = "Amount of Good Karma gained in this server: " .. vu35(vu27.Value - vu33)
                        end
                        vu22.Changed:Connect(v42) vu23.Changed:Connect(v42) vu24.Changed:Connect(v42)
                        vu25.Changed:Connect(v42) vu26.Changed:Connect(v42) vu27.Changed:Connect(v42)
                        v42()
                    end
                end
            end)()
            infoTab1:AddLabel(" CURRENT STATS ").TextSize = 20
            local function vu44(p43)
                if p43 >= 1000000000000000 then return tostring(math.floor(p43 * 10 / 1000000000000000) / 10) .. "Qa"
                elseif p43 >= 1000000000000 then return tostring(math.floor(p43 * 10 / 1000000000000) / 10) .. "T"
                elseif p43 >= 1000000000 then return tostring(math.floor(p43 * 10 / 1000000000) / 10) .. "B"
                elseif p43 >= 1000000 then return tostring(math.floor(p43 * 10 / 1000000) / 10) .. "M"
                
