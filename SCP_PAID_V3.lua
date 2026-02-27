-- ══════════════════════════════════════════════════
--              SCP HUB - PAID VERSION
--          Made by MOHA / TEJAZ
--          discord.gg/nDSy4jdVDc
--          Whitelist System + Full Features
-- ══════════════════════════════════════════════════

-- ══════════════════════════════════════
-- WHITELIST SYSTEM
-- Change WHITELIST_URL to YOUR pastebin raw link
-- Add usernames one per line in that pastebin
-- ══════════════════════════════════════

local WHITELIST_URL = "https://pastebin.com/raw/RULnktcp"

local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local StarterGui = game:GetService("StarterGui")

local function isWhitelisted(username)
    local success, result = pcall(function()
        return game:HttpGet(WHITELIST_URL)
    end)
    if success and result then
        for user in string.gmatch(result, "[^\r\n]+") do
            local trimmed = user:match("^%s*(.-)%s*$")
            if string.lower(trimmed) == string.lower(username) then
                return true
            end
        end
    end
    return false
end

-- ══════════════════════════════════════
-- LOADING / WHITELIST CHECK SCREEN
-- ══════════════════════════════════════

local loadGui = Instance.new("ScreenGui")
loadGui.Name = "SCPPaidLoad"
loadGui.ResetOnSpawn = false
loadGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

local bg = Instance.new("Frame")
bg.Size = UDim2.new(0, 380, 0, 170)
bg.Position = UDim2.new(0.5, -190, 0.5, -85)
bg.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
bg.BorderSizePixel = 0
bg.Parent = loadGui
Instance.new("UICorner", bg).CornerRadius = UDim.new(0, 14)

local titleBar = Instance.new("Frame")
titleBar.Size = UDim2.new(1, 0, 0, 50)
titleBar.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
titleBar.BorderSizePixel = 0
titleBar.Parent = bg
Instance.new("UICorner", titleBar).CornerRadius = UDim.new(0, 14)

local titleLbl = Instance.new("TextLabel")
titleLbl.Size = UDim2.new(1, 0, 1, 0)
titleLbl.BackgroundTransparency = 1
titleLbl.Text = "SCP HUB - PAID"
titleLbl.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLbl.TextSize = 20
titleLbl.Font = Enum.Font.GothamBold
titleLbl.Parent = titleBar

local statusLbl = Instance.new("TextLabel")
statusLbl.Size = UDim2.new(1, 0, 0, 40)
statusLbl.Position = UDim2.new(0, 0, 0, 60)
statusLbl.BackgroundTransparency = 1
statusLbl.Text = "Checking whitelist..."
statusLbl.TextColor3 = Color3.fromRGB(200, 200, 200)
statusLbl.TextSize = 15
statusLbl.Font = Enum.Font.Gotham
statusLbl.Parent = bg

local discordLbl = Instance.new("TextLabel")
discordLbl.Size = UDim2.new(1, 0, 0, 30)
discordLbl.Position = UDim2.new(0, 0, 0, 128)
discordLbl.BackgroundTransparency = 1
discordLbl.Text = "discord.gg/nDSy4jdVDc"
discordLbl.TextColor3 = Color3.fromRGB(139, 0, 0)
discordLbl.TextSize = 14
discordLbl.Font = Enum.Font.GothamBold
discordLbl.Parent = bg

-- Wait for everything to load
repeat task.wait() until LocalPlayer and LocalPlayer.Character
LocalPlayer:WaitForChild("leaderstats", 15)
task.wait(1)

-- Check whitelist
if not isWhitelisted(LocalPlayer.Name) then
    statusLbl.Text = "NOT WHITELISTED!"
    statusLbl.TextColor3 = Color3.fromRGB(255, 60, 60)
    discordLbl.Text = "Buy access at discord.gg/nDSy4jdVDc"
    task.wait(3)
    loadGui:Destroy()
    LocalPlayer:Kick("NOT WHITELISTED! Buy access at discord.gg/nDSy4jdVDc")
    return
end

statusLbl.Text = "Whitelisted! Loading hub..."
statusLbl.TextColor3 = Color3.fromRGB(0, 220, 100)
task.wait(1.5)
loadGui:Destroy()

-- ══════════════════════════════════════
-- LOAD UI LIBRARY
-- ══════════════════════════════════════

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Moha-space/elerium-v2-ui-library/refs/heads/main/Library", true))()

local displayName = LocalPlayer.DisplayName or LocalPlayer.Name

local window = library:AddWindow("          SCP HUB PAID  |  Welcome " .. displayName, {
    main_color = Color3.fromRGB(139, 0, 0),
    min_size = Vector2.new(660, 780),
    can_resize = false,
    scrollable = true
})

-- ══════════════════════════════════════
-- HELPERS
-- ══════════════════════════════════════

local function formatNumber(n)
    n = tonumber(n) or 0
    if n >= 1e15 then return string.format("%.2fQa", n / 1e15)
    elseif n >= 1e12 then return string.format("%.2fT", n / 1e12)
    elseif n >= 1e9 then return string.format("%.2fB", n / 1e9)
    elseif n >= 1e6 then return string.format("%.2fM", n / 1e6)
    elseif n >= 1e3 then return string.format("%.2fK", n / 1e3)
    else return tostring(math.floor(n)) end
end

local function notify(title, text, dur)
    StarterGui:SetCore("SendNotification", {Title = title, Text = text, Duration = dur or 3})
end

local function equipTool(name)
    local tool = LocalPlayer.Backpack:FindFirstChild(name)
    if tool and LocalPlayer.Character then tool.Parent = LocalPlayer.Character end
end

-- ══════════════════════════════════════
-- INFO TAB
-- ══════════════════════════════════════

local infoTab = window:AddTab("INFO")
infoTab:AddLabel("══════════════════════════════════════")
local welcomeLabel = infoTab:AddLabel("WELCOME TO SCP HUB PAID")
welcomeLabel.TextSize = 28
task.spawn(function()
    while true do
        welcomeLabel.TextColor3 = Color3.fromHSV(tick() * 0.2 % 1, 0.9, 1)
        task.wait(0.02)
    end
end)
infoTab:AddLabel("══════════════════════════════════════")
infoTab:AddLabel("Made by: MOHA || TEJAZ")
infoTab:AddLabel("Version: PAID V1")
infoTab:AddLabel("══════════════════════════════════════")
infoTab:AddButton("Copy Discord - discord.gg/nDSy4jdVDc", function()
    setclipboard("https://discord.gg/nDSy4jdVDc")
    notify("SCP HUB", "Discord link copied!", 3)
end)
infoTab:AddLabel("══════════════════════════════════════")
infoTab:AddLabel("TABS: Stats | Pack Rebs | Speed Farm | Rocks | Gifting | Settings")

-- ══════════════════════════════════════
-- STATS TRACKER TAB
-- ══════════════════════════════════════

local statsTab = window:AddTab("STATS")

local leaderstats = LocalPlayer:WaitForChild("leaderstats")
local strStat  = leaderstats:WaitForChild("Strength")
local rebStat  = leaderstats:WaitForChild("Rebirths")
local killStat = leaderstats:WaitForChild("Kills")
local durStat  = LocalPlayer:WaitForChild("Durability")
local agiStat  = LocalPlayer:WaitForChild("Agility")
local evilStat = LocalPlayer:WaitForChild("evilKarma")
local goodStat = LocalPlayer:WaitForChild("goodKarma")

local initStr = strStat.Value
local initDur = durStat.Value
local initReb = rebStat.Value
local sessionStart = os.time()

statsTab:AddLabel("[ SESSION STATS ]")
local timeLabel = statsTab:AddLabel("Time in server: 0d 0h 0m 0s")
task.spawn(function()
    while task.wait(1) do
        local e = os.time() - sessionStart
        timeLabel.Text = string.format("Time in server: %dd %dh %dm %ds",
            math.floor(e/86400), math.floor(e%86400/3600), math.floor(e%3600/60), e%60)
    end
end)

statsTab:AddLabel("══════════════════════════════════════")
statsTab:AddLabel("[ YOUR STATS ]")
local strLabel  = statsTab:AddLabel("Strength: 0 | Gained: 0")
local durLabel  = statsTab:AddLabel("Durability: 0 | Gained: 0")
local rebLabel  = statsTab:AddLabel("Rebirths: 0 | Gained: 0")
local killLabel = statsTab:AddLabel("Kills: 0")
local agiLabel  = statsTab:AddLabel("Agility: 0")
local evilLabel = statsTab:AddLabel("Evil Karma: 0")
local goodLabel = statsTab:AddLabel("Good Karma: 0")

task.spawn(function()
    while task.wait(0.5) do
        pcall(function()
            strLabel.Text  = "Strength: "   .. formatNumber(strStat.Value)  .. " | Gained: " .. formatNumber(strStat.Value  - initStr)
            durLabel.Text  = "Durability: " .. formatNumber(durStat.Value)  .. " | Gained: " .. formatNumber(durStat.Value  - initDur)
            rebLabel.Text  = "Rebirths: "   .. formatNumber(rebStat.Value)  .. " | Gained: " .. formatNumber(rebStat.Value  - initReb)
            killLabel.Text = "Kills: "      .. formatNumber(killStat.Value)
            agiLabel.Text  = "Agility: "    .. formatNumber(agiStat.Value)
            evilLabel.Text = "Evil Karma: " .. formatNumber(evilStat.Value)
            goodLabel.Text = "Good Karma: " .. formatNumber(goodStat.Value)
        end)
    end
end)

statsTab:AddLabel("══════════════════════════════════════")
statsTab:AddLabel("[ RATE TRACKER (Strength & Durability) ]")
local rateStrLbl = statsTab:AddLabel("Strength Rate: warming up...")
local rateDurLbl = statsTab:AddLabel("Durability Rate: warming up...")

local strHist, durHist = {}, {}
local trackStarted = false
local calcInt = 10

task.spawn(function()
    local lastCalc = tick()
    while task.wait(0.05) do
        pcall(function()
            local now = tick()
            local cs, cd = strStat.Value, durStat.Value
            if not trackStarted and (cs - initStr) >= 1e9 then
                trackStarted = true; strHist = {}; durHist = {}
            end
            if trackStarted then
                table.insert(strHist, {t=now, v=cs})
                table.insert(durHist, {t=now, v=cd})
                while #strHist > 0 and now - strHist[1].t > calcInt do table.remove(strHist,1) end
                while #durHist > 0 and now - durHist[1].t > calcInt do table.remove(durHist,1) end
                if now - lastCalc >= calcInt then
                    lastCalc = now
                    if #strHist >= 2 then
                        local ps = (strHist[#strHist].v - strHist[1].v) / calcInt
                        rateStrLbl.Text = "Str: "..formatNumber(math.floor(ps*3600)).."/hr | "..formatNumber(math.floor(ps*86400)).."/day"
                    end
                    if #durHist >= 2 then
                        local ps = (durHist[#durHist].v - durHist[1].v) / calcInt
                        rateDurLbl.Text = "Dur: "..formatNumber(math.floor(ps*3600)).."/hr | "..formatNumber(math.floor(ps*86400)).."/day"
                    end
                end
            end
        end)
    end
end)

statsTab:AddLabel("══════════════════════════════════════")
statsTab:AddLabel("[ TRACK OTHER PLAYERS ]")
local trackedP = nil
local tName  = statsTab:AddLabel("Player: -")
local tStr   = statsTab:AddLabel("Strength: -")
local tDur   = statsTab:AddLabel("Durability: -")
local tReb   = statsTab:AddLabel("Rebirths: -")
local tKills = statsTab:AddLabel("Kills: -")
local tAgi   = statsTab:AddLabel("Agility: -")

local function refreshTracked(p)
    if not p then tName.Text = "Player: Not Found"; return end
    tName.Text = "Player: "..p.Name.." ("..p.DisplayName..")"
    local ls = p:FindFirstChild("leaderstats")
    if ls then
        tStr.Text   = "Strength: "   .. formatNumber((ls:FindFirstChild("Strength")  and ls.Strength.Value)  or 0)
        tReb.Text   = "Rebirths: "   .. formatNumber((ls:FindFirstChild("Rebirths")  and ls.Rebirths.Value)  or 0)
        tKills.Text = "Kills: "      .. formatNumber((ls:FindFirstChild("Kills")     and ls.Kills.Value)     or 0)
    end
    tDur.Text = "Durability: " .. formatNumber((p:FindFirstChild("Durability") and p.Durability.Value) or 0)
    tAgi.Text = "Agility: "    .. formatNumber((p:FindFirstChild("Agility")    and p.Agility.Value)    or 0)
end

statsTab:AddTextBox("Search player (name or display name)", function(input)
    local low = input:lower()
    trackedP = nil
    for _, p in ipairs(Players:GetPlayers()) do
        if p.Name:lower():find(low,1,true) or (p.DisplayName and p.DisplayName:lower():find(low,1,true)) then
            trackedP = p; break
        end
    end
    refreshTracked(trackedP)
end, {clear=false, placeholder="Type name..."})

task.spawn(function() while task.wait(1) do if trackedP then refreshTracked(trackedP) end end end)

-- ══════════════════════════════════════
-- PACK REBIRTHS TAB
-- ══════════════════════════════════════

-- ══════════════════════════════════════
-- PACK REBS TAB (from paid source)
-- ══════════════════════════════════════

local packTab = window:AddTab("PACK REBS")
packTab:AddLabel("[ PACK REBIRTHING ]")
packTab:AddLabel("Make sure you have 7-8 packs equipped!")
packTab:AddLabel("══════════════════════════════════════")

-- Pack Calculator
local calcFolder = packTab:AddFolder("Pack Calculator (1-8 packs)")

local baseStrCalc = 0
calcFolder:AddTextBox("Your Strength (e.g. 500T, 1.27Qa)", function(text)
    local units = {QA=1e15, T=1e12, B=1e9, M=1e6, K=1e3}
    text = text:upper()
    for u, m in pairs(units) do
        if text:find(u) then
            local n = tonumber(text:match("(%d+%.?%d*)"))
            if n then baseStrCalc = n * m; return end
        end
    end
    baseStrCalc = tonumber(text:match("(%d+%.?%d*)")) or 0
end, {clear=false, placeholder="e.g. 500T or 1.27Qa"})

local strPackLbls = {}
for i = 1, 8 do strPackLbls[i] = calcFolder:AddLabel(i.." pack(s): -") end
calcFolder:AddButton("Calculate Pack Damage", function()
    if baseStrCalc <= 0 then notify("SCP HUB","Enter valid strength!",3); return end
    for i = 1, 8 do
        strPackLbls[i].Text = i.." pack(s): "..formatNumber(baseStrCalc * 0.10 * (1 + i * 0.335))
    end
end)

local baseDurCalc = 0
calcFolder:AddTextBox("Your Durability (e.g. 500T, 1.27Qa)", function(text)
    local units = {QA=1e15, T=1e12, B=1e9, M=1e6, K=1e3}
    text = text:upper()
    for u, m in pairs(units) do
        if text:find(u) then
            local n = tonumber(text:match("(%d+%.?%d*)"))
            if n then baseDurCalc = n * m; return end
        end
    end
    baseDurCalc = tonumber(text:match("(%d+%.?%d*)")) or 0
end, {clear=false, placeholder="e.g. 500T or 1.27Qa"})

local durPackLbls = {}
for i = 1, 8 do durPackLbls[i] = calcFolder:AddLabel(i.." pack(s): -") end
calcFolder:AddButton("Calculate Pack Durability", function()
    if baseDurCalc <= 0 then notify("SCP HUB","Enter valid durability!",3); return end
    for i = 1, 8 do
        durPackLbls[i].Text = i.." pack(s): "..formatNumber(baseDurCalc * (1 + i * 0.335) * 1.5)
    end
end)

packTab:AddLabel("══════════════════════════════════════")
packTab:AddLabel("AUTO KING (teleport to king position):")

-- Auto King - locks position at king spot
packTab:AddSwitch("Auto King", function(on)
    local kingCF = CFrame.new(-8865, 430, -5749)
    if on then
        getgenv().kingLockConnection = RunService.Heartbeat:Connect(function()
            if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                LocalPlayer.Character.HumanoidRootPart.CFrame = kingCF
            end
        end)
    else
        if getgenv().kingLockConnection then
            getgenv().kingLockConnection:Disconnect()
            getgenv().kingLockConnection = nil
        end
    end
end)

packTab:AddLabel("══════════════════════════════════════")
packTab:AddLabel("REBIRTH FUNCTIONS:")

local targetPackRebs = 0
packTab:AddTextBox("Target Rebirth Amount", function(val)
    targetPackRebs = tonumber(val) or 0
end, {clear=false, placeholder="Enter target rebirth amount"})

-- Auto Rebirth (simple)
packTab:AddSwitch("Auto Rebirth", function(on)
    getgenv().autoRebirth = on
    if on then
        spawn(function()
            while getgenv().autoRebirth do
                local ls = LocalPlayer:FindFirstChild("leaderstats")
                if ls then
                    local rebs = ls:FindFirstChild("Rebirths")
                    if rebs and targetPackRebs > 0 and rebs.Value >= targetPackRebs then
                        getgenv().autoRebirth = false
                        notify("SCP HUB", "Target rebirths reached: "..formatNumber(rebs.Value), 5)
                        break
                    end
                end
                pcall(function()
                    ReplicatedStorage.rEvents.rebirthRemote:InvokeServer("rebirthRequest")
                end)
                task.wait(0.1)
            end
        end)
    end
end)

packTab:AddLabel("═══ AUTO WEIGHT ═══")
packTab:AddSwitch("Auto Weight", function(on)
    getgenv().autoWeight = on
    if on then
        spawn(function()
            while getgenv().autoWeight do
                pcall(function()
                    local w = LocalPlayer.Backpack:FindFirstChild("Weight")
                    if w then LocalPlayer.Character.Humanoid:EquipTool(w) end
                    LocalPlayer.muscleEvent:FireServer("rep")
                end)
                task.wait(0.01)
            end
        end)
    end
end)

packTab:AddLabel("═══ AUTO SIZE 2 ═══")
packTab:AddSwitch("Auto Size 2", function(on)
    getgenv().autoSize2 = on
    if on then
        spawn(function()
            while getgenv().autoSize2 do
                pcall(function()
                    ReplicatedStorage.rEvents.changeSpeedSizeRemote:InvokeServer("changeSize", 2)
                end)
                task.wait(0)
            end
        end)
    end
end)

packTab:AddLabel("═══ HIDE FRAMES ═══")
packTab:AddSwitch("Hide All Frames", function(on)
    for _, v in pairs(ReplicatedStorage:GetChildren()) do
        if v.Name:match("Frame$") then v.Visible = not on end
    end
end)

packTab:AddLabel("═══ LOCK POSITION (ON when using Pack Rebs) ═══")
local packPosConn = nil
packTab:AddSwitch("Lock Position", function(on)
    if on then
        local hrp = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if hrp then
            local pos = hrp.CFrame
            packPosConn = RunService.Heartbeat:Connect(function()
                if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    LocalPlayer.Character.HumanoidRootPart.CFrame = pos
                end
            end)
        end
    else
        if packPosConn then packPosConn:Disconnect(); packPosConn = nil end
    end
end)

packTab:AddLabel("══════ PACK FARM [ MAKE SURE U GOT 7-8 PACKS ] ══════")
packTab:AddLabel("PACK REBS")
packTab:AddLabel("Don't turn on Fast Rebirth! It will auto rebirth u (for players without packs)")

-- Fast Rebirth with pack logic (from paid source)
local fastRebirth = false
packTab:AddSwitch("Fast Rebirth [auto rebs]", function(on)
    fastRebirth = on
    if on then
        notify("SCP HUB", "Fast Rebirth started! Need 7-8 packs!", 5)
        spawn(function()
            while fastRebirth do
                pcall(function()
                    -- Fire 17 reps to build strength fast
                    for i = 1, 17 do
                        LocalPlayer.muscleEvent:FireServer("rep")
                    end
                    task.wait(0)
                    -- Rebirth
                    ReplicatedStorage.rEvents.rebirthRemote:InvokeServer("rebirthRequest")
                end)
                task.wait(0.1)
            end
        end)
    end
end)

packTab:AddLabel("══════════════════════════════════════")

-- Fast Gains 3000 reps (iPhone optimized)
packTab:AddSwitch("Fast Gains (iPhone / 3000 reps)", function(on)
    getgenv().isGrinding = on
    if on then
        notify("SCP HUB", "Fast Gains 3000 started!", 3)
        spawn(function()
            while getgenv().isGrinding do
                for i = 1, 3000 do
                    task.spawn(function()
                        if getgenv().isGrinding then
                            LocalPlayer.muscleEvent:FireServer("rep")
                            task.wait(0.01)
                        end
                    end)
                end
                task.wait(0)
            end
        end)
    end
end)

-- Fast Gains 2400 reps (less laggy)
packTab:AddSwitch("Fast Gains Less Laggy (2400 reps)", function(on)
    getgenv().isGrinding2 = on
    if on then
        notify("SCP HUB", "Fast Gains 2400 started!", 3)
        spawn(function()
            while getgenv().isGrinding2 do
                for i = 1, 2400 do
                    task.spawn(function()
                        if getgenv().isGrinding2 then
                            LocalPlayer.muscleEvent:FireServer("rep")
                            task.wait(0.01)
                        end
                    end)
                end
                task.wait(0)
            end
        end)
    end
end)

-- Fast Gains V1 (20 reps - safest)
packTab:AddSwitch("Fast Gains V1 (20 reps - safest)", function(on)
    getgenv().isGrinding3 = on
    if on then
        notify("SCP HUB", "Fast Gains V1 started!", 3)
        spawn(function()
            while getgenv().isGrinding3 do
                for i = 1, 20 do
                    task.spawn(function()
                        if getgenv().isGrinding3 then
                            LocalPlayer.muscleEvent:FireServer("rep")
                            task.wait(0.01)
                        end
                    end)
                end
                task.wait(0)
            end
        end)
    end
end)

packTab:AddLabel("══════════════════════════════════════")
packTab:AddSwitch("Auto Teleport to Muscle King", function(on)
    getgenv().tpMuscleKing = on
    if on then
        spawn(function()
            while getgenv().tpMuscleKing do
                pcall(function()
                    if LocalPlayer.Character then
                        LocalPlayer.Character:MoveTo(Vector3.new(-8646, 17, -5738))
                    end
                end)
                wait(1)
            end
        end)
    end
end)

-- ══════════════════════════════════════
-- SPEED FARMING TAB (from paid source)
-- ══════════════════════════════════════

local speedTab = window:AddTab("SPEED FARM")
speedTab:AddLabel("[ SPEED FARMING ]")
speedTab:AddLabel("Builds Strength & Durability super fast!")
speedTab:AddLabel("══════════════════════════════════════")

-- Fast Rep (same as paid script)
speedTab:AddSwitch("Fast Rep (iPhone optimized)", function(on)
    getgenv().fastRepSpeed = on
    if on then
        notify("SCP HUB", "Fast Rep started!", 3)
        spawn(function()
            while getgenv().fastRepSpeed do
                for i = 1, 3000 do
                    task.spawn(function()
                        if getgenv().fastRepSpeed then
                            LocalPlayer.muscleEvent:FireServer("rep")
                            task.wait(0.01)
                        end
                    end)
                end
                task.wait(0)
            end
        end)
    end
end)

speedTab:AddSwitch("Fast Rep Less Laggy (2400 reps)", function(on)
    getgenv().fastRepLess = on
    if on then
        notify("SCP HUB", "Fast Rep Less Laggy started!", 3)
        spawn(function()
            while getgenv().fastRepLess do
                for i = 1, 2400 do
                    task.spawn(function()
                        if getgenv().fastRepLess then
                            LocalPlayer.muscleEvent:FireServer("rep")
                            task.wait(0.01)
                        end
                    end)
                end
                task.wait(0)
            end
        end)
    end
end)

speedTab:AddSwitch("Fast Rep V1 (20 reps - safest)", function(on)
    getgenv().fastRepV1 = on
    if on then
        notify("SCP HUB", "Fast Rep V1 started!", 3)
        spawn(function()
            while getgenv().fastRepV1 do
                for i = 1, 20 do
                    task.spawn(function()
                        if getgenv().fastRepV1 then
                            LocalPlayer.muscleEvent:FireServer("rep")
                            task.wait(0.01)
                        end
                    end)
                end
                task.wait(0)
            end
        end)
    end
end)

speedTab:AddLabel("══════════════════════════════════════")
speedTab:AddLabel("AUTO EQUIP TOOLS:")

speedTab:AddSwitch("Auto Equip Weight", function(on)
    getgenv().autoWeightSp = on
    if on then spawn(function() while getgenv().autoWeightSp do equipTool("Weight"); task.wait(0.2) end end) end
end)

speedTab:AddSwitch("Auto Equip Pushups", function(on)
    getgenv().autoPushupsSp = on
    if on then spawn(function() while getgenv().autoPushupsSp do equipTool("Pushups"); task.wait(0.2) end end) end
end)

speedTab:AddSwitch("Auto Equip Situps", function(on)
    getgenv().autoSitupsSp = on
    if on then spawn(function() while getgenv().autoSitupsSp do equipTool("Situps"); task.wait(0.2) end end) end
end)

speedTab:AddSwitch("Auto Equip Handstands", function(on)
    getgenv().autoHandstandsSp = on
    if on then spawn(function() while getgenv().autoHandstandsSp do equipTool("Handstand"); task.wait(0.2) end end) end
end)


-- ══════════════════════════════════════
-- FAST GLITCHING TAB
-- ══════════════════════════════════════

local rocksTab = window:AddTab("FAST GLITCHING")
rocksTab:AddLabel("[ FAST GLITCHING - ROCKS ]")
rocksTab:AddLabel("Stand near the rock then enable!")
rocksTab:AddLabel("══════════════════════════════════════")

-- Auto Punch
rocksTab:AddSwitch("Auto Punch", function(p)
    if p then
        local punch = LocalPlayer.Backpack:FindFirstChild("Punch")
        if not punch and LocalPlayer.Character then
            punch = LocalPlayer.Character:FindFirstChild("Punch")
        end
        _G.punchanim = true
        while _G.punchanim do
            if punch then
                if punch.Parent ~= LocalPlayer.Character then
                    punch.Parent = LocalPlayer.Character
                end
                punch:Activate()
                task.wait()
            else
                _G.punchanim = false
            end
        end
    else
        _G.punchanim = false
    end
end)

-- Fast Punch
rocksTab:AddSwitch("Fast Punch", function(p)
    local v303 = LocalPlayer
    local v304 = v303.Backpack:FindFirstChild("Punch")
    local v305 = workspace:FindFirstChild(v303.Name)
    local v306 = v305 and v305:FindFirstChild("Punch")
    if p then
        if v304 and v304:FindFirstChild("attackTime") then v304.attackTime.Value = 0
        elseif v306 and v306:FindFirstChild("attackTime") then v306.attackTime.Value = 0 end
    else
        if v304 and v304:FindFirstChild("attackTime") then v304.attackTime.Value = 0.3
        elseif v306 and v306:FindFirstChild("attackTime") then v306.attackTime.Value = 0.3 end
    end
end)

-- Hide All Frames
rocksTab:AddSwitch("Hide All Frames", function(p)
    for _, v in pairs(ReplicatedStorage:GetChildren()) do
        if v.Name:match("Frame$") then v.Visible = not p end
    end
end)

-- Lock Position
rocksTab:AddSwitch("Lock Position", function(p)
    if p then
        local lockedCF = LocalPlayer.Character.HumanoidRootPart.CFrame
        getgenv().posLock = RunService.Heartbeat:Connect(function()
            if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                LocalPlayer.Character.HumanoidRootPart.CFrame = lockedCF
            end
        end)
    elseif getgenv().posLock then
        getgenv().posLock:Disconnect()
        getgenv().posLock = nil
    end
end)

rocksTab:AddLabel("══════════════════════════════════════")
rocksTab:AddLabel("SELECT ROCK TO FARM:")

-- Equip punch helper
local function equipPunchRock()
    local punch = LocalPlayer.Backpack:FindFirstChild("Punch")
    if punch then punch.Parent = LocalPlayer.Character end
end

-- Rock hit function (exact working method from V5)
local function doRockFarm(durReq)
    while getgenv().autoFarm do
        wait(0.1)
        local char = LocalPlayer.Character
        if char and durReq <= LocalPlayer.Durability.Value then
            for _, v in pairs(workspace.machinesFolder:GetDescendants()) do
                if v.Name == "neededDurability" and v.Value == durReq
                    and char:FindFirstChild("LeftHand") and char:FindFirstChild("RightHand") then
                    firetouchinterest(v.Parent.Rock, char.RightHand, 0)
                    firetouchinterest(v.Parent.Rock, char.RightHand, 1)
                    firetouchinterest(v.Parent.Rock, char.LeftHand, 0)
                    firetouchinterest(v.Parent.Rock, char.LeftHand, 1)
                    equipPunchRock()
                end
            end
        end
        if _G.fastHitActive then
            LocalPlayer.muscleEvent:FireServer("punch", "rightHand")
            LocalPlayer.muscleEvent:FireServer("punch", "leftHand")
            local punch = char and char:FindFirstChild("Punch")
            if punch then punch:Activate() end
        end
    end
end

local rockList = {
    {"Jungle Rock",      10000000},
    {"Muscle King Rock", 5000000},
    {"Legnds Rock",      1000000},
    {"Large Rock",       1000000},
    {"Inferno Rock",     750000},
    {"Mystic Rock",      400000},
    {"Froze Rock",       150000},
    {"Golden Rock",      5000},
    {"Punch Rock",       10},
    {"Tiny Rock",        0},
}

for _, rockData in ipairs(rockList) do
    local rName, rDur = rockData[1], rockData[2]
    rocksTab:AddSwitch(rName .. " (" .. formatNumber(rDur) .. " dur)", function()
        _G.fastHitActive = not _G.fastHitActive
        if _G.fastHitActive then
            getgenv().autoFarm = true
            notify("SCP HUB", "Fast Glitching: "..rName.." started!", 3)
            coroutine.wrap(function()
                while _G.fastHitActive do
                    if LocalPlayer.Character then
                        for _ = 1, 30 do
                            equipPunchRock()
                            doRockFarm(rDur)
                            LocalPlayer.muscleEvent:FireServer("punch", "rightHand")
                            LocalPlayer.muscleEvent:FireServer("punch", "leftHand")
                        end
                    end
                    wait(0.05)
                end
            end)()
        else
            getgenv().autoFarm = false
            notify("SCP HUB", "Fast Glitching stopped!", 3)
            local punch = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Punch")
            if punch then punch.Parent = LocalPlayer.Backpack end
        end
    end)
end

-- ══════════════════════════════════════
-- ANTI LAG / FPS BOOST TAB
-- ══════════════════════════════════════

local lagTab = window:AddTab("ANTI LAG")
lagTab:AddLabel("[ ANTI LAG & FPS BOOST ]")
lagTab:AddLabel("Makes game run faster & smoother!")
lagTab:AddLabel("══════════════════════════════════════")

-- Black screen / remove textures
lagTab:AddSwitch("Black Screen Mode (Max FPS Boost)", function(on)
    if on then
        -- Make sky black
        game.Lighting.GlobalShadows = false
        game.Lighting.FogEnd = 9e9
        game.Lighting.Brightness = 0
        game.Lighting.Ambient = Color3.fromRGB(0, 0, 0)
        game.Lighting.OutdoorAmbient = Color3.fromRGB(0, 0, 0)
        -- Remove all textures and effects
        for _, v in pairs(game:GetDescendants()) do
            pcall(function()
                if v:IsA("Texture") or v:IsA("Decal") then
                    v.Transparency = 1
                elseif v:IsA("ParticleEmitter") or v:IsA("Trail") or v:IsA("Smoke") or v:IsA("Fire") or v:IsA("Sparkles") then
                    v.Enabled = false
                elseif v:IsA("Sky") then
                    v:Destroy()
                elseif v:IsA("BasePart") then
                    v.Material = Enum.Material.SmoothPlastic
                    v.Reflectance = 0
                    v.CastShadow = false
                end
            end)
        end
        settings().Rendering.QualityLevel = "Level01"
        notify("SCP HUB", "Black Screen ON! Max FPS!", 3)
    else
        game.Lighting.GlobalShadows = true
        game.Lighting.FogEnd = 100000
        game.Lighting.Brightness = 2
        game.Lighting.Ambient = Color3.fromRGB(70, 70, 70)
        game.Lighting.OutdoorAmbient = Color3.fromRGB(70, 70, 70)
        settings().Rendering.QualityLevel = "Level21"
        notify("SCP HUB", "Black Screen OFF!", 3)
    end
end)

lagTab:AddLabel("══════════════════════════════════════")

-- FPS Unlocker
lagTab:AddSwitch("Unlock FPS (Remove 60fps cap)", function(on)
    if on then
        setfpscap(0)
        notify("SCP HUB", "FPS Uncapped! No limit!", 3)
    else
        setfpscap(60)
        notify("SCP HUB", "FPS capped back to 60", 3)
    end
end)

-- Remove all particles
lagTab:AddSwitch("Remove All Particles & Effects", function(on)
    if on then
        for _, v in pairs(game:GetDescendants()) do
            pcall(function()
                if v:IsA("ParticleEmitter") or v:IsA("Trail") or v:IsA("Smoke")
                    or v:IsA("Fire") or v:IsA("Sparkles") or v:IsA("SelectionBox") then
                    v.Enabled = false
                end
            end)
        end
        game.DescendantAdded:Connect(function(v)
            pcall(function()
                if v:IsA("ParticleEmitter") or v:IsA("Trail") or v:IsA("Smoke")
                    or v:IsA("Fire") or v:IsA("Sparkles") then
                    v.Enabled = false
                end
            end)
        end)
        notify("SCP HUB", "All particles removed!", 3)
    end
end)

-- Remove shadows
lagTab:AddSwitch("Remove Shadows (FPS Boost)", function(on)
    game.Lighting.GlobalShadows = not on
    for _, v in pairs(game:GetDescendants()) do
        pcall(function()
            if v:IsA("BasePart") then v.CastShadow = not on end
        end)
    end
    notify("SCP HUB", on and "Shadows removed!" or "Shadows restored!", 3)
end)

-- Remove other players characters (extreme fps boost)
lagTab:AddSwitch("Hide Other Players (Extreme Boost)", function(on)
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= LocalPlayer and p.Character then
            p.Character.Parent = on and nil or workspace
        end
    end
    Players.PlayerAdded:Connect(function(p)
        if on and p ~= LocalPlayer then
            p.CharacterAdded:Connect(function(c)
                if on then c.Parent = nil end
            end)
        end
    end)
    notify("SCP HUB", on and "Other players hidden!" or "Players visible!", 3)
end)

lagTab:AddLabel("══════════════════════════════════════")

-- Graphics quality slider replacement (buttons)
lagTab:AddLabel("GRAPHICS QUALITY:")
lagTab:AddButton("Low Quality (Best FPS)", function()
    settings().Rendering.QualityLevel = "Level01"
    notify("SCP HUB", "Graphics set to LOW!", 3)
end)
lagTab:AddButton("Medium Quality", function()
    settings().Rendering.QualityLevel = "Level10"
    notify("SCP HUB", "Graphics set to MEDIUM!", 3)
end)
lagTab:AddButton("High Quality", function()
    settings().Rendering.QualityLevel = "Level21"
    notify("SCP HUB", "Graphics set to HIGH!", 3)
end)

-- ══════════════════════════════════════
-- GIFTING TAB
-- ══════════════════════════════════════

local giftTab = window:AddTab("GIFTING")
giftTab:AddLabel("[ GIFTING TAB ]")
giftTab:AddLabel("IMPORTANT: Get on a Machine while gifting!")
giftTab:AddLabel("══════════════════════════════════════")

local eggCountLbl = giftTab:AddLabel("Protein Eggs: 0")
local shakeLbl    = giftTab:AddLabel("Tropical Shakes: 0")

local function refreshInv()
    local cf = LocalPlayer:FindFirstChild("consumablesFolder")
    local eggs, shakes = 0, 0
    if cf then
        for _, item in ipairs(cf:GetChildren()) do
            if item.Name == "Protein Egg" then eggs = eggs + 1 end
            if item.Name == "Tropical Shake" then shakes = shakes + 1 end
        end
    end
    eggCountLbl.Text = "Protein Eggs: "..eggs
    shakeLbl.Text    = "Tropical Shakes: "..shakes
end
task.spawn(function() while task.wait(5) do refreshInv() end end)
refreshInv()

giftTab:AddLabel("══════════════════════════════════════")
giftTab:AddLabel("PROTEIN EGG GIFTER:")

local eggTarget, eggAmt = nil, 0
local eggDrop = giftTab:AddDropdown("Select Player (Eggs)", function(sel)
    local name = sel:match("| (.+)$")
    if name then eggTarget = Players:FindFirstChild(name) end
end)
for _, p in ipairs(Players:GetPlayers()) do
    if p ~= LocalPlayer then eggDrop:Add(p.DisplayName.." | "..p.Name) end
end
Players.PlayerAdded:Connect(function(p) if p ~= LocalPlayer then eggDrop:Add(p.DisplayName.." | "..p.Name) end end)
Players.PlayerRemoving:Connect(function(p) if p ~= LocalPlayer then eggDrop:Remove(p.DisplayName.." | "..p.Name) end end)

giftTab:AddTextBox("Amount of Eggs", function(val) eggAmt = tonumber(val) or 0 end, {clear=false, placeholder="e.g. 5"})
giftTab:AddButton("Gift Protein Eggs", function()
    if not eggTarget then notify("SCP HUB","Select a player first!",3); return end
    if eggAmt <= 0 then notify("SCP HUB","Enter a valid amount!",3); return end
    spawn(function()
        local gifted = 0
        local cf = LocalPlayer:FindFirstChild("consumablesFolder")
        if cf then
            for i = 1, eggAmt do
                local egg = cf:FindFirstChild("Protein Egg")
                if egg then pcall(function() ReplicatedStorage.rEvents.giftRemote:InvokeServer(eggTarget, egg) end); gifted = gifted + 1 end
                task.wait(0.5)
            end
        end
        notify("SCP HUB", "Gifted "..gifted.." Egg(s) to "..eggTarget.Name.."!", 4)
        refreshInv()
    end)
end)

giftTab:AddLabel("══════════════════════════════════════")
giftTab:AddLabel("TROPICAL SHAKE GIFTER:")

local shakeTarget, shakeAmt = nil, 0
local shakeDrop = giftTab:AddDropdown("Select Player (Shakes)", function(sel)
    local name = sel:match("| (.+)$")
    if name then shakeTarget = Players:FindFirstChild(name) end
end)
for _, p in ipairs(Players:GetPlayers()) do
    if p ~= LocalPlayer then shakeDrop:Add(p.DisplayName.." | "..p.Name) end
end
Players.PlayerAdded:Connect(function(p) if p ~= LocalPlayer then shakeDrop:Add(p.DisplayName.." | "..p.Name) end end)
Players.PlayerRemoving:Connect(function(p) if p ~= LocalPlayer then shakeDrop:Remove(p.DisplayName.." | "..p.Name) end end)

giftTab:AddTextBox("Amount of Shakes", function(val) shakeAmt = tonumber(val) or 0 end, {clear=false, placeholder="e.g. 5"})
giftTab:AddButton("Gift Tropical Shakes", function()
    if not shakeTarget then notify("SCP HUB","Select a player first!",3); return end
    if shakeAmt <= 0 then notify("SCP HUB","Enter a valid amount!",3); return end
    spawn(function()
        local gifted = 0
        local cf = LocalPlayer:FindFirstChild("consumablesFolder")
        if cf then
            for i = 1, shakeAmt do
                local shake = cf:FindFirstChild("Tropical Shake")
                if shake then pcall(function() ReplicatedStorage.rEvents.giftRemote:InvokeServer(shakeTarget, shake) end); gifted = gifted + 1 end
                task.wait(0.5)
            end
        end
        notify("SCP HUB", "Gifted "..gifted.." Shake(s) to "..shakeTarget.Name.."!", 4)
        refreshInv()
    end)
end)

-- ══════════════════════════════════════
-- SETTINGS TAB
-- ══════════════════════════════════════

local settingsTab = window:AddTab("SETTINGS")
settingsTab:AddLabel("[ SETTINGS ]")
settingsTab:AddLabel("══════════════════════════════════════")
settingsTab:AddLabel("GRAPHICS / ANTI LAG:")

-- Low Graphics (makes screen black = max fps boost)
settingsTab:AddSwitch("Low Graphics (Black Screen FPS Boost)", function(on)
    if on then
        game.Lighting.GlobalShadows = false
        game.Lighting.FogEnd = 9000000000
        game.Lighting.Brightness = 0
        settings().Rendering.QualityLevel = "Level01"
        for _, v in pairs(game:GetDescendants()) do
            pcall(function()
                if v:IsA("BasePart") then
                    v.Material = Enum.Material.Plastic
                    v.Reflectance = 0
                elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                    v.Lifetime = NumberRange.new(0)
                elseif v:IsA("Explosion") then
                    v.BlastPressure = 1
                    v.BlastRadius = 1
                end
            end)
        end
        notify("SCP HUB", "Low Graphics ON! Max FPS Boost!", 3)
    else
        game.Lighting.GlobalShadows = true
        game.Lighting.FogEnd = 100000
        game.Lighting.Brightness = 2
        settings().Rendering.QualityLevel = "Level21"
        for _, v in pairs(game:GetDescendants()) do
            pcall(function()
                if v:IsA("BasePart") then
                    v.Material = Enum.Material.SmoothPlastic
                    v.Reflectance = 0.2
                elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                    v.Lifetime = NumberRange.new(1)
                elseif v:IsA("Explosion") then
                    v.BlastPressure = 500000
                    v.BlastRadius = 10
                end
            end)
        end
        notify("SCP HUB", "Graphics restored!", 3)
    end
end)

-- Change Time of Day
local timeDropdown = settingsTab:AddDropdown("Change Time of Day", function(choice)
    local L = game:GetService("Lighting")
    if choice == "Night" then
        L.ClockTime = 0; L.Brightness = 1
        L.Ambient = Color3.fromRGB(40, 40, 40)
    elseif choice == "Day" then
        L.ClockTime = 12; L.Brightness = 2
        L.Ambient = Color3.fromRGB(255, 255, 255)
    elseif choice == "Sunset" then
        L.ClockTime = 18; L.Brightness = 1
        L.Ambient = Color3.fromRGB(255, 170, 0)
    elseif choice == "Aurora Night" then
        L.ClockTime = 20; L.Brightness = 0.9
        L.Ambient = Color3.fromRGB(0, 255, 120)
        L.OutdoorAmbient = Color3.fromRGB(0, 120, 255)
    end
    if L:FindFirstChild("GalaxyStars") then L.GalaxyStars.Enabled = false end
end)
timeDropdown:Add("Night")
timeDropdown:Add("Day")
timeDropdown:Add("Sunset")
timeDropdown:Add("Aurora Night")

settingsTab:AddLabel("══════════════════════════════════════")
settingsTab:AddLabel("ANTI AFK:")

settingsTab:AddButton("Enable Anti-AFK", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/hassanxzayn-lua/Anti-afk/main/antiafkbyhassanxzyn"))()
    notify("SCP HUB", "Anti AFK enabled!", 3)
end)

settingsTab:AddButton("Enable Anti-LAG + AFK (MOHA)", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Moha-space/SPACE-HUB-/refs/heads/main/MAIN%20AINTI%20AFK%20.txt"))()
    notify("SCP HUB", "Anti Lag + AFK enabled!", 3)
end)

settingsTab:AddButton("Enable Anti-AFK V2 (MOHA)", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Moha-space/SPACE-HUB-/refs/heads/main/New%20anti%20afk%20v2"))()
    notify("SCP HUB", "Anti AFK V2 enabled!", 3)
end)

settingsTab:AddLabel("══════════════════════════════════════")
settingsTab:AddLabel("MISC:")

settingsTab:AddButton("Free AutoLift Gamepass", function()
    pcall(function()
        local gpIds = ReplicatedStorage:FindFirstChild("gamepassIds")
        local owned = LocalPlayer:FindFirstChild("ownedGamepasses")
        if gpIds and owned then
            for _, v in pairs(gpIds:GetChildren()) do
                local val = Instance.new("IntValue")
                val.Name = v.Name
                val.Value = v.Value
                val.Parent = owned
            end
            notify("SCP HUB", "Free Gamepass applied!", 3)
        end
    end)
end)

settingsTab:AddButton("Remove Ad Portals", function()
    local count = 0
    for _, v in pairs(game:GetDescendants()) do
        if v.Name == "RobloxForwardPortals" then v:Destroy(); count = count + 1 end
    end
    if _G.AdRemovalConnection then _G.AdRemovalConnection:Disconnect() end
    _G.AdRemovalConnection = game.DescendantAdded:Connect(function(v)
        if v.Name == "RobloxForwardPortals" then v:Destroy() end
    end)
    notify("SCP HUB", "Removed "..count.." ad portal(s)!", 3)
end)

-- Walk on Water
local waterParts = {}
local waterSize = 2048
local waterOrigin = Vector3.new(-2, -9.5, -2)
local waterCount = math.ceil(50000 / waterSize)

local function enableWalkOnWater()
    for x = 0, waterCount - 1 do
        for z = 0, waterCount - 1 do
            local function makePart(pos)
                local p = Instance.new("Part")
                p.Size = Vector3.new(waterSize, 1, waterSize)
                p.Position = pos
                p.Anchored = true
                p.Transparency = 1
                p.CanCollide = true
                p.Parent = workspace
                table.insert(waterParts, p)
            end
            makePart(waterOrigin + Vector3.new(x * waterSize, 0, z * waterSize))
            makePart(waterOrigin + Vector3.new(-x * waterSize, 0, z * waterSize))
            makePart(waterOrigin + Vector3.new(-x * waterSize, 0, -z * waterSize))
            makePart(waterOrigin + Vector3.new(x * waterSize, 0, -z * waterSize))
        end
    end
end

local function disableWalkOnWater()
    for _, p in ipairs(waterParts) do
        if p and p.Parent then p.CanCollide = false end
    end
end

settingsTab:AddSwitch("Walk on Water", function(on)
    if on then enableWalkOnWater() else disableWalkOnWater() end
end)

settingsTab:AddLabel("══════════════════════════════════════")
settingsTab:AddLabel("discord.gg/nDSy4jdVDc")
settingsTab:AddLabel("Made by MOHA / TEJAZ - PAID V1")

-- ══════════════════════════════════════
-- DONE
-- ══════════════════════════════════════
notify("SCP HUB PAID", "Welcome "..displayName.."! Loaded successfully!", 5)
