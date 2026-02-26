-- filename: 
-- version: lua51
-- line: [0, 0] id: 1
local r1_1 = function(r0_40)
  -- line: [0, 0] id: 40
  local r1_40, r2_40, r3_40 = ipairs(upval_0)
  if r0_40 == r5_40 then
    return true
  end
  for r4_40, r5_40 in r1_40 do
    return false
end
if not game.Players.LocalPlayer then
  local r4_1 = r1_1(game.Players.LocalPlayer.Name)
  if r4_1 then
    game.Players.LocalPlayer:Kick("NOT  WhiteListed BUDDY L ( BUY IT ) ")
  end
  local r5_1 = function()
    -- line: [0, 0] id: 121
    return game:HttpGet(game, "https://raw.githubusercontent.com/memejames/elerium-v2-ui-library/main/Library", true)
    return 
  end
  local r4_1, r5_1 = pcall(r5_1)
  if not r4_1 then
    if r5_1 then
    end
    loadingText.Text = "Failed to fetch UI!"
    isLoading = false
    task.wait(2)
    loadingGui:Destroy()
    if r5_1 then
    end
    warn("Failed to fetch UI library: " .. "HttpGet error")
    return
  end
  if not r5_1 then
    if r5_1 == "" then
    end
    loadingText.Text = "Empty result!"
    isLoading = false
    task.wait(2)
    loadingGui:Destroy()
    warn("Received empty result from HttpGet for UI library")
    return
  end
  local r7_1 = function()
    -- line: [0, 0] id: 91
    local r0_91 = loadstring(upval_0)
    return r0_91()
    return 
  end
  local r6_1, r7_1 = pcall(r7_1)
  if not r6_1 then
    if r7_1 then
    end
    loadingText.Text = "Failed to compile UI!"
    isLoading = false
    task.wait(2)
    loadingGui:Destroy()
    if r7_1 then
    end
    warn("Failed to compile UI library: " .. "loadstring error")
    return
  end
  local r8_1 = type(r7_1)
  if r8_1 == "table" then
    if r7_1.AddWindow then
    end
    loadingText.Text = "Invalid UI library!"
    isLoading = false
    task.wait(2)
    loadingGui:Destroy()
    warn("Loaded library is invalid (no AddWindow method)")
    return
  end
  local r12_1 = r7_1:AddWindow(0, 0)
  r12_1 = Vector2.new(695, 995)
  r8_1 = r7_1:AddWindow(r7_1, "                                                    SOUL CRUSHER PACT   |         PAID ", {
    main_color = r12_1,
    min_size = r12_1,
    can_resize = false,
    scrollable = true,
  })
  local r9_1 = r8_1:AddTab("I N F  ⌬")
  local r10_1 = r9_1:AddLabel("『 INFO 』⟡『 ABOUT 』⟡『 THE 』⟡『 SCRIPT 』")
  r10_1.TextSize = 30
  r10_1 = r9_1:AddLabel("════════════════════════════════════════════════════════════════════════════════════════════════════════════")
  r10_1.TextSize = 30
  r10_1 = r9_1:AddLabel("WELCOME TO SCP HUB  ☄️")
  r10_1.TextSize = 30
  r10_1 = r9_1:AddLabel("════════════════════════════════════════════════════════════════════════════════════════════════════════════")
  r10_1.TextSize = 30
  local r14_1 = r9_1:AddLabel(255, 255)
  r10_1 = r9_1:AddLabel(r9_1, " VERSION  - 1.0 ", {TextColor3 = r14_1})
  r10_1.TextSize = 40
  r10_1 = r9_1:AddLabel("════════════════════════════════════════════════════════════════════════════════════════════════════════════")
  r10_1.TextSize = 30
  r10_1 = r9_1:AddLabel("                           MOHA || TEJAZ")
  r10_1.TextSize = 32
  local r12_1 = function()
    -- line: [0, 0] id: 63
    local r2_63 = tick()
    local r1_63 = Color3.fromHSV(r2_63 * 0.22 % 1, 0.8, 1)
    upval_0.TextColor3 = r1_63
    task.wait(0.02)
    return
  end
  task.spawn(r12_1)
  local r11_1 = r9_1:AddLabel("════════════════════════════════════════════════════════════════════════════════════════════════════════════")
  r11_1.TextSize = 30
  r11_1 = r9_1:AddLabel(" MOHA // DC - joybomoha ")
  r11_1.TextSize = 20
  r11_1 = r9_1:AddLabel("════════════════════════════════════════════════════════════════════════════════════════════════════════════")
  r11_1.TextSize = 30
  r11_1 = r9_1:AddLabel("        SCP OP ")
  r11_1.TextSize = 90
  r11_1 = r8_1:AddTab(" STATS ")
  infoTab1 = r11_1
  infoTab1:AddLabel("══════════════════════════════════════════════════════════════════════════════════════════")
  r11_1 = infoTab1:AddLabel("『 STATS 』   ")
  r11_1.TextSize = 20
  r11_1 = infoTab1:AddLabel("Time Spent in Server: 0d 0h 0m 0s")
  r12_1 = os.time()
  local r13_1 = function(r0_125)
    -- line: [0, 0] id: 125
    local r1_125 = math.floor(r0_125 / 86400)
    local r2_125 = math.floor(r0_125 % 86400 / 3600)
    local r3_125 = math.floor(r0_125 % 86400 % 3600 / 60)
    return string.format("%dd %dh %dm %ds", r1_125, r2_125, r3_125, r0_125 % 86400 % 3600 % 60)
    return 
  end
  local r15_1 = function()
    -- line: [0, 0] id: 64
    local r0_64 = task.wait(1)
    if not r0_64 then
      r0_64 = os.time()
      local r3_64 = upval_2(r0_64 - upval_0)
      upval_1.Text = "Time Spent in Server: " .. r3_64
    end
    return
  end
  task.spawn(r15_1)
  local r16_1 = infoTab1:AddLabel("Rebirths Gained in Server: 0")
  local r17_1 = function()
    -- line: [0, 0] id: 148
    upval_0 = game.Players.LocalPlayer.leaderstats.Rebirths.Value - upval_1
    upval_2.Text = "Rebirths Gained in Server: " .. upval_0
    return
  end
  local r19_1 = function()
    -- line: [0, 0] id: 55
    local r0_55 = task.wait(0.5)
    if not r0_55 then
      upval_0()
    end
    return
  end
  task.spawn(r19_1)
  infoTab1:AddLabel("════════════════════════════════════════════════════════════════════════════════════════════════════════════")
  local r18_1 = infoTab1:AddLabel("PLAYER STATS")
  r18_1.TextSize = 20
  r18_1 = infoTab1:AddLabel(" GAINED ")
  r18_1.TextSize = 20
  r19_1 = infoTab1:AddLabel("Amount of strength gained in this server: 0")
  r19_1 = infoTab1:AddLabel("Amount of durability gained in this server: 0")
  r19_1 = infoTab1:AddLabel("Amount of agility gained in this server: 0")
  r19_1 = infoTab1:AddLabel("Amount of kills gained in this server: 0")
  r19_1 = infoTab1:AddLabel("Amount of Evil Karma gained in this server: 0")
  r19_1 = infoTab1:AddLabel("Amount of Good Karma gained in this server: 0")
  local r19_1 = function()
    -- line: [0, 0] id: 58
    if game.Players.LocalPlayer then
      return
    end
    local r1_58 = game.Players.LocalPlayer:WaitForChild("leaderstats")
    if r1_58 then
      return
    end
    local r2_58 = r1_58:WaitForChild("Strength")
    local r3_58 = game.Players.LocalPlayer:WaitForChild("Durability")
    local r4_58 = game.Players.LocalPlayer:WaitForChild("Agility")
    local r5_58 = r1_58:WaitForChild("Kills")
    local r6_58 = game.Players.LocalPlayer:WaitForChild("evilKarma")
    local r7_58 = game.Players.LocalPlayer:WaitForChild("goodKarma")
    if r2_58.Value then
    end
    if r3_58.Value then
    end
    if r4_58.Value then
    end
    if r5_58.Value then
    end
    if r6_58.Value then
    end
    if r7_58.Value then
    end
    local r14_58 = function(r0_60)
      -- line: [0, 0] id: 60
      if 1000000000 <= r0_60 then
        return string.format("%.1fB", r0_60 / 1000000000)
        return 
      end
      if 1000000 <= r0_60 then
        return string.format("%.1fM", r0_60 / 1000000)
        return 
      end
      if 1000 <= r0_60 then
        return string.format("%.1fK", r0_60 / 1000)
        return 
      end
      return tostring(r0_60)
      return 
    end
    local r15_58 = function()
      -- line: [0, 0] id: 59
      local r8_59 = upval_13(upval_0.Value - upval_1)
      upval_12.StrengthGainedLabel.Text = "Amount of strength gained in this server: " .. r8_59
      r8_59 = upval_13(upval_2.Value - upval_3)
      upval_12.DurabilityGainedLabel.Text = "Amount of durability gained in this server: " .. r8_59
      r8_59 = upval_13(upval_4.Value - upval_5)
      upval_12.AgilityGainedLabel.Text = "Amount of agility gained in this server: " .. r8_59
      r8_59 = upval_13(upval_6.Value - upval_7)
      upval_12.KillsGainedLabel.Text = "Amount of kills gained in this server: " .. r8_59
      r8_59 = upval_13(upval_8.Value - upval_9)
      upval_12.EvilKarmaGainedLabel.Text = "Amount of Evil Karma gained in this server: " .. r8_59
      r8_59 = upval_13(upval_10.Value - upval_11)
      upval_12.GoodKarmaGainedLabel.Text = "Amount of Good Karma gained in this server: " .. r8_59
      return
    end
    r2_58.Changed:Connect(r15_58)
    r3_58.Changed:Connect(r15_58)
    r4_58.Changed:Connect(r15_58)
    r5_58.Changed:Connect(r15_58)
    r6_58.Changed:Connect(r15_58)
    r7_58.Changed:Connect(r15_58)
    r15_58()
    return
  end
  r19_1()
  infoTab1:AddLabel("══════════════════════════════════════════════════════════════════════════════════════════")
  local r20_1 = infoTab1:AddLabel(" CURRENT STATS ")
  r20_1.TextSize = 20
  local r20_1 = function(r0_51)
    -- line: [0, 0] id: 51
    if 1e+015 <= r0_51 then
      local r2_51 = math.floor(r0_51 * 10 / 1e+015)
      local r1_51 = tostring(r2_51 / 10)
      return r1_51 .. "Qa"
    end
    if 1000000000000 <= r0_51 then
      r2_51 = math.floor(r0_51 * 10 / 1000000000000)
      r1_51 = tostring(r2_51 / 10)
      return r1_51 .. "T"
    end
    if 1000000000 <= r0_51 then
      r2_51 = math.floor(r0_51 * 10 / 1000000000)
      r1_51 = tostring(r2_51 / 10)
      return r1_51 .. "B"
    end
    if 1000000 <= r0_51 then
      r2_51 = math.floor(r0_51 * 10 / 1000000)
      r1_51 = tostring(r2_51 / 10)
      return r1_51 .. "M"
    end
    if 1000 <= r0_51 then
      r2_51 = math.floor(r0_51 * 10 / 1000)
      r1_51 = tostring(r2_51 / 10)
      return r1_51 .. "k"
    end
    return tostring(r0_51)
    return 
  end
  local r21_1 = function(r0_69)
    -- line: [0, 0] id: 69
    return upval_0(r0_69)
    return 
  end
  local r22_1 = function(r0_41)
    -- line: [0, 0] id: 41
    if r0_41 then
      return "N/A"
    end
    local r3_41 = upval_0(r0_41)
    return string.format("%s / %d", r3_41, r0_41)
    return 
  end
  local r23_1 = function(r0_24)
    -- line: [0, 0] id: 24
    if r0_24 then
      return "N/A"
    end
    local r3_24 = upval_0(r0_24)
    return string.format("%s / %d", r3_24, r0_24)
    return 
  end
  local r25_1 = infoTab1:AddLabel("Player: " .. game.Players.LocalPlayer.Name)
  r25_1 = infoTab1:AddLabel("Rebirths: 0 / 0")
  r25_1 = infoTab1:AddLabel("Strength: 0 / 0")
  r25_1 = infoTab1:AddLabel("Durability: 0 / 0")
  r25_1 = infoTab1:AddLabel("Agility: 0 / 0")
  r25_1 = infoTab1:AddLabel("Kills: 0 / 0")
  r25_1 = infoTab1:AddLabel("Evil Karma: 0 / 0")
  r25_1 = infoTab1:AddLabel("Good Karma: 0 / 0")
  local r25_1 = function(r0_45, r1_45)
    -- line: [0, 0] id: 45
    if r0_45 then
      return nil
    end
    local r2_45 = r0_45:FindFirstChild(r1_45)
    local r3_45 = tick()
    if r2_45 then
      local r4_45 = tick()
      if r4_45 - r3_45 < 3 then
        r4_45 = r0_45:FindFirstChild(r1_45)
        if r4_45 then
          task.wait(0.1)
        end
      end
    end
    return r4_45
  end
  local r26_1 = function(r0_100)
    -- line: [0, 0] id: 100
    local r1_100 = tostring(r0_100)
    r1_100 = r1_100:lower()
    if #r1_100 == 0 then
      return game.Players.LocalPlayer
    end
    local r1_100, r2_100, r3_100 = ipairs(game.Players:GetPlayers())
    local r6_100 = r5_100.Name:lower()
    if r6_100 == r1_100 then
      return r5_100
    end
    for r4_100, r5_100 in r1_100 do
      local r1_100, r2_100, r3_100 = ipairs(game.Players:GetPlayers())
      if not r5_100.DisplayName then
        r6_100 = r5_100.DisplayName:lower()
        if r6_100 == r1_100 then
          return r5_100
        end
      end
      for r4_100, r5_100 in r1_100 do
        local r1_100, r2_100, r3_100 = ipairs(game.Players:GetPlayers())
        local r7_100 = r5_100.Name:lower()
        r6_100 = string.find(r7_100, r1_100, 1, true)
        if not r6_100 then
          return r5_100
        end
        for r4_100, r5_100 in r1_100 do
          local r1_100, r2_100, r3_100 = ipairs(game.Players:GetPlayers())
          if not r5_100.DisplayName then
            r7_100 = r5_100.DisplayName:lower()
            r6_100 = string.find(r7_100, r1_100, 1, true)
            if not r6_100 then
              return r5_100
            end
          end
          for r4_100, r5_100 in r1_100 do
            return nil
  end
  local r27_1 = function(r0_9)
    -- line: [0, 0] id: 9
    if r0_9 then
      local r1_9, r2_9, r3_9 = pairs(upval_0)
      if r4_9 ~= "Player" then
        r5_9.Text = r4_9 .. ": N/A"
      end
      for r4_9, r5_9 in r1_9 do
        upval_0.Player.Text = "Player: Not Found"
        return
      end
      if not r0_9.DisplayName then
        if " (" .. r0_9.DisplayName .. ")" then
        end
      end
      upval_0.Player.Text = "Player: " .. r0_9.Name .. ""
      r1_9 = r0_9:FindFirstChild("leaderstats")
      if r1_9 then
        r1_9 = upval_1(r0_9, "leaderstats")
      end
      if not r1_9 then
        r2_9 = r1_9:FindFirstChild("Strength")
        if r2_9 then
          r2_9 = upval_1(r1_9, "Strength")
        end
      end
      if not r1_9 then
        r3_9 = r1_9:FindFirstChild("Rebirths")
        if r3_9 then
          r3_9 = upval_1(r1_9, "Rebirths")
        end
      end
      if not r1_9 then
        r4_9 = r1_9:FindFirstChild("Kills")
        if r4_9 then
          r4_9 = upval_1(r1_9, "Kills")
        end
      end
      r5_9 = r0_9:FindFirstChild("Durability")
      if r5_9 then
        r5_9 = upval_1(r0_9, "Durability")
      end
      local r6_9 = r0_9:FindFirstChild("Agility")
      if r6_9 then
        r6_9 = upval_1(r0_9, "Agility")
      end
      local r7_9 = r0_9:FindFirstChild("evilKarma")
      if r7_9 then
        r7_9 = upval_1(r0_9, "evilKarma")
      end
      local r8_9 = r0_9:FindFirstChild("goodKarma")
      if r8_9 then
        r8_9 = upval_1(r0_9, "goodKarma")
      end
      if not r3_9 then
      end
      local r11_9 = upval_2(r3_9.Value)
      upval_0.Rebirths.Text = "Rebirths: " .. r11_9
      if not r2_9 then
      end
      r11_9 = upval_3(r2_9.Value)
      upval_0.Strength.Text = "Strength: " .. r11_9
      if not r5_9 then
      end
      r11_9 = upval_3(r5_9.Value)
      upval_0.Durability.Text = "Durability: " .. r11_9
      if not r6_9 then
      end
      r11_9 = upval_3(r6_9.Value)
      upval_0.Agility.Text = "Agility: " .. r11_9
      if not r4_9 then
      end
      r11_9 = upval_2(r4_9.Value)
      upval_0.Kills.Text = "Kills: " .. r11_9
      if not r7_9 then
      end
      r11_9 = upval_2(r7_9.Value)
      upval_0.EvilKarma.Text = "Evil Karma: " .. r11_9
      if not r8_9 then
      end
      r11_9 = upval_2(r8_9.Value)
      upval_0.GoodKarma.Text = "Good Karma: " .. r11_9
      return
  end
  local r29_1 = function()
    -- line: [0, 0] id: 112
    local r0_112, r1_112, r2_112 = pairs(upval_0)
    if not r4_112 then
      local r6_112 = function()
        -- line: [0, 0] id: 113
        upval_0:Disconnect()
        return
      end
      pcall(r6_112)
    end
    for r3_112, r4_112 in r0_112 do
      upval_0 = r0_112
      return
  end
  local r30_1 = function(r0_135)
    -- line: [0, 0] id: 135
    upval_0()
    if r0_135 then
      return
    end
    local r1_135 = function(r0_136)
      -- line: [0, 0] id: 136
      if not r0_136 then
        local r5_136 = function()
          -- line: [0, 0] id: 137
          upval_0(upval_1)
          return
        end
        table.insert(upval_0)
      end
      return
    end
    local r2_135 = r0_135:FindFirstChild("leaderstats")
    if r2_135 then
      r2_135 = upval_3(r0_135, "leaderstats")
    end
    if not r2_135 then
      local r4_135 = r2_135:FindFirstChild("Strength")
      if r4_135 then
        r4_135 = upval_3(r2_135, "Strength")
      end
      r1_135(r4_135)
      r4_135 = r2_135:FindFirstChild("Rebirths")
      if r4_135 then
        r4_135 = upval_3(r2_135, "Rebirths")
      end
      r1_135(r4_135)
      r4_135 = r2_135:FindFirstChild("Kills")
      if r4_135 then
        r4_135 = upval_3(r2_135, "Kills")
      end
      r1_135(r4_135)
    end
    r4_135 = r0_135:FindFirstChild("Durability")
    if r4_135 then
      r4_135 = upval_3(r0_135, "Durability")
    end
    r1_135(r4_135)
    r4_135 = r0_135:FindFirstChild("Agility")
    if r4_135 then
      r4_135 = upval_3(r0_135, "Agility")
    end
    r1_135(r4_135)
    r4_135 = r0_135:FindFirstChild("evilKarma")
    if r4_135 then
      r4_135 = upval_3(r0_135, "evilKarma")
    end
    r1_135(r4_135)
    r4_135 = r0_135:FindFirstChild("goodKarma")
    if r4_135 then
      r4_135 = upval_3(r0_135, "goodKarma")
    end
    r1_135(r4_135)
    return
  end
  local r35_1 = function(r0_70)
    -- line: [0, 0] id: 70
    local r1_70 = upval_0(r0_70)
    if r1_70 ~= upval_1 then
      upval_1 = r1_70
      upval_2(r1_70)
      upval_3(r1_70)
    end
    return
  end
  infoTab1:AddTextBox(" USERNAME or DISPLAY NAME ", r35_1, {clear = false, placeholder = "Type username or display name..."})
  infoTab1:AddLabel("EX  username -mohaop just type mo / display name - ZX_BLA BLA just type ZX")
  infoTab1:AddLabel("══════════════════════════════════════════════════════════════════════════════════════════")
  r27_1(game.Players.LocalPlayer)
  r30_1(game.Players.LocalPlayer)
  local r32_1 = r8_1:AddTab("STATS TRACKING")
  local r33_1 = r32_1:AddLabel("══════════════ STATS TRACKING ══════════════")
  r33_1.TextSize = 30
  r33_1 = game:GetService("Players")
  local r34_1 = r33_1.LocalPlayer:WaitForChild("leaderstats")
  local r36_1 = r34_1:FindFirstChild("Rebirths")
  r36_1 = r34_1:FindFirstChild("Strength")
  local r37_1 = function(r0_78)
    -- line: [0, 0] id: 78
    if r0_78 == 0 then
      return "0"
    end
    if 1000 <= r0_78 then
      if 1 < #upval_0 then
      end
    end
    return string.format("%.2f%s", r0_78 / 1000, upval_0[1 + 1])
    return 
  end
  local r40_1, r41_1, r42_1 = pairs(r35_1)
  if not r44_1 then
    if r44_1.Value then
    end
  end
  for r43_1, r44_1 in r40_1 do
    r40_1 = tick()
    local r41_1 = function(r0_73)
      -- line: [0, 0] id: 73
      local r2_73 = upval_0:AddLabel("════ " .. r0_73 .. " ════")
      r1_73.Title.TextSize = 20
      r2_73 = upval_0:AddLabel(r0_73 .. " Per Minute: ...")
      r2_73 = upval_0:AddLabel(r0_73 .. " Per Hour: ...")
      r2_73 = upval_0:AddLabel(r0_73 .. " Per Day: ...")
      r2_73 = upval_0:AddLabel(r0_73 .. " Per Week: ...")
      r2_73 = upval_0:AddLabel(r0_73 .. " Per Month: ...")
      return r1_73
    end
    local r42_1 = function(r0_102, r1_102, r2_102, r3_102)
      -- line: [0, 0] id: 102
      local r8_102 = upval_0(r1_102 / r2_102)
      r3_102.PerMinute.Text = r0_102 .. " Per Minute: " .. r8_102
      r8_102 = upval_0(r1_102 / r2_102 * 60)
      r3_102.PerHour.Text = r0_102 .. " Per Hour: " .. r8_102
      r8_102 = upval_0(r1_102 / r2_102 * 1440)
      r3_102.PerDay.Text = r0_102 .. " Per Day: " .. r8_102
      r8_102 = upval_0(r1_102 / r2_102 * 10080)
      r3_102.PerWeek.Text = r0_102 .. " Per Week: " .. r8_102
      r8_102 = upval_0(r1_102 / r2_102 * 43200)
      r3_102.PerMonth.Text = r0_102 .. " Per Month: " .. r8_102
      return
    end
    local r43_1, r44_1, r45_1 = pairs(r35_1)
    local r48_1 = r41_1(r46_1)
    for r46_1, r47_1 in r43_1 do
      local r44_1 = function()
        -- line: [0, 0] id: 8
        local r0_8 = task.wait(60)
        if not r0_8 then
          r0_8 = tick()
          if r0_8 - upval_0 / 60 <= 0 then
          end
          local r1_8, r2_8, r3_8 = pairs(upval_1)
          if not upval_2[r4_8] then
            local r7_8 = math.max(0, upval_2[r4_8].Value - upval_3[r4_8])
            upval_4(r4_8, r7_8, 1, r5_8)
          end
          for r4_8, r5_8 in r1_8 do
          end
          return
      end
      task.spawn(r44_1)
      r43_1 = r8_1:AddTab("MAIN")
      Main = r43_1
      r43_1 = Main:AddFolder("Auto Punch")
      local r47_1 = function(r0_84)
        -- line: [0, 0] id: 84
        local r2_84 = function(r0_85, r1_85)
          -- line: [0, 0] id: 85
          local r2_85 = upval_0:FindFirstChild("Backpack")
          if upval_0.Character then
            local r3_85 = upval_0.CharacterAdded:Wait()
          end
          if not r2_85 then
            local r4_85 = r2_85:FindFirstChild(r0_85)
            if not r4_85 then
              r4_85.Parent = r3_85
              if not r1_85 then
                r4_85.Parent = r2_85
              end
            end
          end
          return
        end
        if not r0_84 then
          r2_84("Punch", false)
          local r3_84 = game.Players.LocalPlayer.Backpack:FindFirstChild("Punch")
          if r3_84 then
            if not game.Players.LocalPlayer.Character then
              r3_84 = game.Players.LocalPlayer.Character:FindFirstChild("Punch")
            end
          end
          _G.punchanim = true
          if not _G.punchanim then
            if not r3_84 then
              if r3_84.Parent ~= game.Players.LocalPlayer.Character then
                r3_84.Parent = game.Players.LocalPlayer.Character
              end
              r3_84:Activate()
              task.wait()
            end
            _G.punchanim = false
          end
          _G.punchanim = false
        end
        return
      end
      r43_1:AddSwitch("Auto Punch", r47_1)
      local r47_1 = function(r0_97)
        -- line: [0, 0] id: 97
        local r2_97 = game.Players.LocalPlayer.Backpack:FindFirstChild("Punch")
        local r3_97 = game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name)
        if not r3_97 then
          local r5_97 = r3_97:FindFirstChild("Punch")
        end
        if not r0_97 then
          if not r2_97 then
            r5_97 = r2_97:FindFirstChild("attackTime")
            if not r5_97 then
              r2_97.attackTime.Value = 0
            end
          end
          if not r5_97 then
            r5_97 = r5_97:FindFirstChild("attackTime")
            if not r5_97 then
              r5_97.attackTime.Value = 0
            end
            if not r2_97 then
              r5_97 = r2_97:FindFirstChild("attackTime")
              if not r5_97 then
                r2_97.attackTime.Value = 0.35
              end
            end
            if not r5_97 then
              r5_97 = r5_97:FindFirstChild("attackTime")
              if not r5_97 then
                r5_97.attackTime.Value = 0.35
              end
            end
          end
        end
        return
      end
      r44_1 = r43_1:AddSwitch("Fast Punch ", r47_1)
      r44_1:Set(false)
      Main:AddLabel("Auto Farm")
      r45_1 = Main:AddFolder("Jungle Machines")
      local r50_1 = function(r0_114)
        -- line: [0, 0] id: 114
        upval_0 = r0_114
        if not r0_114 then
          local r2_114 = function()
            -- line: [0, 0] id: 115
            if not upval_0 then
              if not game.Players.LocalPlayer.Character then
                local r1_115 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                if not r1_115 then
                  game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character)
                  r1_115 = game:GetService("ReplicatedStorage")
                  r1_115.rEvents.machineInteractRemote:InvokeServer("useMachine", workspace.machinesFolder["Jungle Bench"].interactSeat)
                end
              end
              task.wait(0.1)
            end
            return
          end
          task.spawn(r2_114)
        end
        return
      end
      r45_1:AddSwitch("Auto Jungle Bench", r50_1)
      local r51_1 = function(r0_89)
        -- line: [0, 0] id: 89
        upval_0 = r0_89
        if not r0_89 then
          local r2_89 = function()
            -- line: [0, 0] id: 90
            if not upval_0 then
              if not game.Players.LocalPlayer.Character then
                local r1_90 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                if not r1_90 then
                  game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character)
                  r1_90 = game:GetService("ReplicatedStorage")
                  r1_90.rEvents.machineInteractRemote:InvokeServer("useMachine", workspace.machinesFolder["Jungle Bar Lift"].interactSeat)
                end
              end
              task.wait(0.1)
            end
            return
          end
          task.spawn(r2_89)
        end
        return
      end
      r45_1:AddSwitch("Auto Jungle Bar Lift", r51_1)
      local r52_1 = function(r0_22)
        -- line: [0, 0] id: 22
        upval_0 = r0_22
        if not r0_22 then
          local r2_22 = function()
            -- line: [0, 0] id: 23
            if not upval_0 then
              if not game.Players.LocalPlayer.Character then
                local r1_23 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                if not r1_23 then
                  game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character)
                  r1_23 = game:GetService("ReplicatedStorage")
                  r1_23.rEvents.machineInteractRemote:InvokeServer("useMachine", workspace.machinesFolder["Jungle Squat"].interactSeat)
                end
              end
              task.wait(0.1)
            end
            return
          end
          task.spawn(r2_22)
        end
        return
      end
      r45_1:AddSwitch("Auto Jungle Squat", r52_1)
      Main:AddLabel("AUTO LIFT FUNCTION")
      local r49_1 = Main:AddFolder("Auto Equip")
      local r54_1 = function(r0_13)
        -- line: [0, 0] id: 13
        upval_0 = r0_13
        if not r0_13 then
          local r2_13 = function()
            -- line: [0, 0] id: 14
            if not upval_0 then
              local r0_14 = game.Players.LocalPlayer.Backpack:FindFirstChild("Weight")
              if not r0_14 then
                if not game.Players.LocalPlayer.Character then
                  r0_14.Parent = game.Players.LocalPlayer.Character
                end
              end
              task.wait(0.1)
            end
            return
          end
          task.spawn(r2_13)
        end
        return
      end
      r49_1:AddSwitch("Auto Equip Weight", r54_1)
      local r55_1 = function(r0_98)
        -- line: [0, 0] id: 98
        upval_0 = r0_98
        if not r0_98 then
          local r2_98 = function()
            -- line: [0, 0] id: 99
            if not upval_0 then
              local r0_99 = game.Players.LocalPlayer.Backpack:FindFirstChild("Pushups")
              if not r0_99 then
                if not game.Players.LocalPlayer.Character then
                  r0_99.Parent = game.Players.LocalPlayer.Character
                end
              end
              task.wait(0.1)
            end
            return
          end
          task.spawn(r2_98)
        end
        return
      end
      r49_1:AddSwitch("Auto Equip Pushups", r55_1)
      local r56_1 = function(r0_47)
        -- line: [0, 0] id: 47
        upval_0 = r0_47
        if not r0_47 then
          local r2_47 = function()
            -- line: [0, 0] id: 48
            if not upval_0 then
              local r0_48 = game.Players.LocalPlayer.Backpack:FindFirstChild("Situps")
              if not r0_48 then
                if not game.Players.LocalPlayer.Character then
                  r0_48.Parent = game.Players.LocalPlayer.Character
                end
              end
              task.wait(0.1)
            end
            return
          end
          task.spawn(r2_47)
        end
        return
      end
      r49_1:AddSwitch("Auto Equip Situps", r56_1)
      local r57_1 = function(r0_144)
        -- line: [0, 0] id: 144
        upval_0 = r0_144
        if not r0_144 then
          local r2_144 = function()
            -- line: [0, 0] id: 145
            if not upval_0 then
              local r0_145 = game.Players.LocalPlayer.Backpack:FindFirstChild("Handstand")
              if not r0_145 then
                if not game.Players.LocalPlayer.Character then
                  r0_145.Parent = game.Players.LocalPlayer.Character
                end
              end
              task.wait(0.1)
            end
            return
          end
          task.spawn(r2_144)
        end
        return
      end
      r49_1:AddSwitch("Auto Equip Handstands", r57_1)
      local r54_1 = function(r0_54)
        -- line: [0, 0] id: 54
        local r2_54 = game.Players.LocalPlayer:FindFirstChild("Backpack")
        if game.Players.LocalPlayer.Character then
          local r3_54 = game.Players.LocalPlayer.CharacterAdded:Wait()
        end
        if not r2_54 then
          local r4_54 = r2_54:FindFirstChild(r0_54)
          if not r4_54 then
            r4_54.Parent = r3_54
            return r4_54
          end
        end
        return nil
      end
      local r56_1 = function()
        -- line: [0, 0] id: 142
        if not upval_0 then
          task.wait(0.1)
          upval_1("Pushup")
          local r0_142 = game:GetService("Players")
          r0_142.LocalPlayer.muscleEvent:FireServer("rep")
        end
        return
      end
      local r60_1 = function(r0_105)
        -- line: [0, 0] id: 105
        upval_0 = r0_105
        if not r0_105 then
          local r1_105 = coroutine.wrap(upval_1)
          r1_105()
          print("Auto Pushups enabled")
        end
        print("Auto Pushups disabled")
        return
      end
      Main:AddSwitch("Auto lift", r60_1)
      r57_1 = game:GetService("Players")
      Main:AddLabel(" ══════ INVITE LINK ══════")
      Main:AddLabel("  INVITE LINK TO OUR DISCORD SERVER")
      local r62_1 = function()
        -- line: [0, 0] id: 50
        setclipboard("https://discord.gg/FtgzNUc5pP")
        return
      end
      Main:AddButton("Copy Discord Invite", r62_1)
      local r59_1 = r8_1:AddTab("REBIRTH")
      rebirthTab = r59_1
      rebirthTab:AddLabel("══════ AUTO KING ══════")
      local r63_1 = function(r0_128)
        -- line: [0, 0] id: 128
        upval_0 = r0_128
        local r1_128 = CFrame.new(-8865, 430, -5749)
        if not r0_128 then
          if game.Players.LocalPlayer.Character then
            local r3_128 = game.Players.LocalPlayer.CharacterAdded:Wait()
          end
          if not r3_128 then
            local r4_128 = r3_128:FindFirstChild("HumanoidRootPart")
            if not r4_128 then
              r3_128.HumanoidRootPart.CFrame = r1_128
            end
          end
          r4_128 = getgenv()
          local r5_128 = game:GetService("RunService")
          local r7_128 = function()
            -- line: [0, 0] id: 129
            if not upval_0.Character then
              local r1_129 = upval_0.Character:FindFirstChild("HumanoidRootPart")
              if not r1_129 then
                upval_0.Character.HumanoidRootPart.CFrame = upval_1
              end
            end
            return
          end
          r5_128 = r5_128.Heartbeat:Connect(r7_128)
          r4_128.kingLockConnection = r5_128
        end
        r3_128 = getgenv()
        if not r3_128.kingLockConnection then
          r3_128 = getgenv()
          r3_128.kingLockConnection:Disconnect()
          r3_128 = getgenv()
          r3_128.kingLockConnection = nil
        end
        return
      end
      rebirthTab:AddSwitch("Auto King ", r63_1)
      rebirthTab:AddLabel("══════REBIRTH FUNCTIONS══════")
      local r65_1 = function(r0_143)
        -- line: [0, 0] id: 143
        local r1_143 = tonumber(r0_143)
        upval_0 = r1_143
        return
      end
      r62_1 = rebirthTab:AddTextBox("Target Rebirth Amount", r65_1, {clear = false, placeholder = "Enter target rebirth amount"})
      local r66_1 = function(r0_71)
        -- line: [0, 0] id: 71
        upval_0 = r0_71
        if not r0_71 then
          local r2_71 = function()
            -- line: [0, 0] id: 72
            if not upval_0 then
              local r1_72 = game.Players.LocalPlayer:FindFirstChild("leaderstats")
              if not r1_72 then
                r1_72 = game.Players.LocalPlayer.leaderstats:FindFirstChild("Rebirths")
              end
              if not r1_72 then
                if not upval_1 then
                  if upval_1 <= r1_72.Value then
                    print("Target rebirth amount reached:", r1_72.Value)
                    upval_0 = false
                  end
                end
              end
              local r2_72 = game:GetService("ReplicatedStorage")
              r2_72.rEvents.rebirthRemote:InvokeServer("rebirthRequest")
              task.wait(0.1)
            end
            return
          end
          local r1_71 = coroutine.wrap(r2_71)
          r1_71()
          print("Auto Rebirth enabled")
        end
        print("Auto Rebirth disabled")
        return
      end
      r63_1 = rebirthTab:AddSwitch("Auto Rebirth", r66_1)
      rebirthTab:AddLabel("═══ AUTO WEIGHT ═══")
      local r67_1 = function(r0_30)
        -- line: [0, 0] id: 30
        isAutoStrength = r0_30
        local r2_30 = game.Players.LocalPlayer:FindFirstChild("Backpack")
        if not isAutoStrength then
          wait(0.01)
          if not r2_30 then
            local r3_30 = r2_30:FindFirstChild("Weight")
            if not r3_30 then
              game.Players.LocalPlayer.Character.Humanoid:EquipTool(r3_30)
            end
          end
          local r4_30 = game:GetService("Players")
          r4_30.LocalPlayer.muscleEvent:FireServer(r4_30.LocalPlayer.muscleEvent)
        end
        if isAutoStrength then
          r3_30 = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
          if not r3_30 then
            if r3_30.Name == "Weight" then
            end
          end
        end
        return
      end
      local r64_1 = rebirthTab:AddSwitch("AUTO WEIGHT", r67_1)
      r64_1:Set(false)
      rebirthTab:AddLabel("═══AUTO SIZE 2═══")
      local r69_1 = function(r0_116)
        -- line: [0, 0] id: 116
        if not r0_116 then
          local r2_116 = function()
            -- line: [0, 0] id: 117
            local r0_117 = task.wait(0)
            if not r0_117 then
              r0_117 = game:GetService("ReplicatedStorage")
              r0_117.rEvents.changeSpeedSizeRemote:InvokeServer("changeSize", 2)
            end
            return
          end
          local r1_116 = task.spawn(r2_116)
          upval_0 = r1_116
          print("Auto Size 2 enabled")
        end
        if not upval_0 then
          task.cancel(upval_0)
          upval_0 = nil
        end
        print("Auto Size 2 disabled")
        return
      end
      r66_1 = rebirthTab:AddSwitch("Auto Size 2", r69_1)
      rebirthTab:AddLabel("═══HIDE FRAMES═══")
      local r70_1 = function(r0_67)
        -- line: [0, 0] id: 67
        local r1_67 = game:GetService("ReplicatedStorage")
        local r2_67, r3_67, r4_67 = pairs(r1_67:GetChildren())
        local r7_67 = r6_67.Name:match("Frame$")
        if not r7_67 then
          r6_67.Visible = not r0_67
        end
        for r5_67, r6_67 in r2_67 do
          return
      end
      r67_1 = rebirthTab:AddSwitch("Hide All Frames", r70_1)
      rebirthTab:AddLabel("═══LOCK POSITION [ ON THIS WHEN U USE PACK REBS ] ═══")
      local r71_1 = function(r0_65)
        -- line: [0, 0] id: 65
        if not r0_65 then
          local r2_65 = getgenv()
          local r3_65 = game:GetService("RunService")
          local r5_65 = function()
            -- line: [0, 0] id: 66
            local r0_66 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            if not r0_66 then
              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = upval_0
            end
            return
          end
          r3_65 = r3_65.Heartbeat:Connect(r5_65)
          r2_65.posLock = r3_65
        end
        local r1_65 = getgenv()
        if not r1_65.posLock then
          r1_65 = getgenv()
          r1_65.posLock:Disconnect()
          r1_65 = getgenv()
          r1_65.posLock = nil
        end
        return
      end
      local r68_1 = rebirthTab:AddSwitch("Lock Position", r71_1)
      r69_1 = rebirthTab:AddLabel("══════ PACK FARM [ MAKE  SURE U GOT 7 - 8 PACKS ]══════")
      r69_1.TextSize = 19
      r69_1 = rebirthTab:AddLabel("PACK REBS")
      r69_1.TextSize = 20
      rebirthTab:AddLabel("Don't ON FAST REBITH IT WILL AUTOMATICALLY REBIRTH U  ( this mssg only for players who don't have packs )")
      local r72_1 = function(r0_32)
        -- line: [0, 0] id: 32
        fastRebirth = r0_32
        if not fastRebirth then
          local r2_32 = function()
            -- line: [0, 0] id: 33
            local r0_33 = game:GetService("ReplicatedStorage")
            local r1_33 = game:GetService("Players")
            local r3_33 = function(r0_35)
              -- line: [0, 0] id: 35
              local r2_35, r3_35, r4_35 = pairs(upval_0.petsFolder:GetChildren())
              local r7_35 = r6_35:IsA("Folder")
              if not r7_35 then
                local r7_35, r8_35, r9_35 = pairs(r6_35:GetChildren())
                upval_1.rEvents.equipPetEvent:FireServer("unequipPet", r11_35)
                for r10_35, r11_35 in r7_35 do
                end
                for r5_35, r6_35 in r2_35 do
                  task.wait(0.1)
                  return
            end
            local r4_33 = function(r0_34)
              -- line: [0, 0] id: 34
              upval_0()
              task.wait(0.01)
              local r1_34, r2_34, r3_34 = pairs(upval_1.petsFolder.Unique:GetChildren())
              if r5_34.Name == r0_34 then
                upval_2.rEvents.equipPetEvent:FireServer("equipPet", r5_34)
              end
              for r4_34, r5_34 in r1_34 do
                return
            end
            local r5_33 = function(r0_36)
              -- line: [0, 0] id: 36
              local r1_36 = workspace.machinesFolder:FindFirstChild(r0_36)
              if r1_36 then
                local r2_36, r3_36, r4_36 = pairs(workspace:GetChildren())
                local r7_36 = r6_36:IsA("Folder")
                if not r7_36 then
                  r7_36 = r6_36.Name:find("machines")
                  if not r7_36 then
                    r7_36 = r6_36:FindFirstChild(r0_36)
                    if r7_36 then
                    end
                  end
                  for r5_36, r6_36 in r2_36 do
                  end
                end
                return r7_36
            end
            local r6_33 = function()
              -- line: [0, 0] id: 37
              local r0_37 = game:GetService("VirtualInputManager")
              r0_37:SendKeyEvent(true, "E", false, game)
              task.wait(0.1)
              r0_37:SendKeyEvent(false, "E", false, game)
              return
            end
            if not fastRebirth then
              local r9_33 = r1_33.LocalPlayer.ultimatesFolder:FindFirstChild("Golden Rebirth")
              if not r9_33 then
                local r10_33 = math.floor(10000 + 5000 * r1_33.LocalPlayer.leaderstats.Rebirths.Value * 1 - r1_33.LocalPlayer.ultimatesFolder["Golden Rebirth"].Value * 0.1)
              end
              r3_33()
              task.wait(0.1)
              r4_33("Swift Samurai")
              if r1_33.LocalPlayer.leaderstats.Strength.Value < r10_33 then
                for r12_33 = 1, 17, 1 do
                  r1_33.LocalPlayer.muscleEvent:FireServer("rep")
                end
                task.wait()
              end
              r3_33()
              task.wait(0.1)
              r4_33("Tribal Overlord")
              r9_33 = r5_33("Jungle Bar Lift")
              if not r9_33 then
                r10_33 = r9_33:FindFirstChild("interactSeat")
                if not r10_33 then
                  r12_33 = CFrame.new(0, 3, 0)
                  r1_33.LocalPlayer.Character.HumanoidRootPart.CFrame = r9_33.interactSeat.CFrame * r12_33
                end
                task.wait(0.1)
                r6_33()
                if not r1_33.LocalPlayer.Character.Humanoid.Sit then
                end
              end
            end
            r0_33.rEvents.rebirthRemote:InvokeServer("rebirthRequest")
            task.wait(0.1)
            if r1_33.LocalPlayer.leaderstats.Rebirths.Value < r1_33.LocalPlayer.leaderstats.Rebirths.Value then
              task.wait()
            end
            return
          end
          spawn(r2_32)
        end
        return
      end
      rebirthTab:AddSwitch("Fast Rebirth [auto rebs]", r72_1)
      rebirthTab:AddLabel("══════════════════════════════════════════════════════════════════════════════")
      local r72_1 = function(r0_52)
        -- line: [0, 0] id: 52
        local r1_52 = getgenv()
        r1_52.isGrinding = r0_52
        if r0_52 then
          return
        end
        for r4_52 = 1, 3000, 1 do
          local r6_52 = function()
            -- line: [0, 0] id: 53
            local r0_53 = getgenv()
            if not r0_53.isGrinding then
              r0_53 = game:GetService("Players")
              r0_53.LocalPlayer.muscleEvent:FireServer("rep")
              task.wait(0.01)
            end
            return
          end
          task.spawn(r6_52)
        end
        return
      end
      r69_1 = rebirthTab:AddSwitch("FAST GAINS ( mostly for i phone )  ", r72_1)
      local r73_1 = function(r0_138)
        -- line: [0, 0] id: 138
        local r1_138 = getgenv()
        r1_138.isGrinding = r0_138
        if r0_138 then
          return
        end
        for r4_138 = 1, 2400, 1 do
          local r6_138 = function()
            -- line: [0, 0] id: 139
            local r0_139 = getgenv()
            if not r0_139.isGrinding then
              r0_139 = game:GetService("Players")
              r0_139.LocalPlayer.muscleEvent:FireServer("rep")
              task.wait(0.01)
            end
            return
          end
          task.spawn(r6_138)
        end
        return
      end
      r70_1 = rebirthTab:AddSwitch("FAST GAINS ( less laggy , same mostly for i phone  )  ", r73_1)
      rebirthTab:AddLabel("══════════════════════════════════════════════════════════════════════════════")
      local r74_1 = function(r0_106)
        -- line: [0, 0] id: 106
        local r1_106 = getgenv()
        r1_106.isGrinding = r0_106
        if r0_106 then
          return
        end
        for r4_106 = 1, 20, 1 do
          local r6_106 = function()
            -- line: [0, 0] id: 107
            local r0_107 = getgenv()
            if not r0_107.isGrinding then
              r0_107 = game:GetService("Players")
              r0_107.LocalPlayer.muscleEvent:FireServer("rep")
              task.wait(0.01)
            end
            return
          end
          task.spawn(r6_106)
        end
        return
      end
      r71_1 = rebirthTab:AddSwitch("FAST GAINS V1   ", r74_1)
      local r75_1 = function(r0_10)
        -- line: [0, 0] id: 10
        local r1_10 = getgenv()
        r1_10.isGrinding = r0_10
        if r0_10 then
          return
        end
        for r4_10 = 1, 34, 1 do
          local r6_10 = function()
            -- line: [0, 0] id: 11
            local r0_11 = getgenv()
            if not r0_11.isGrinding then
              r0_11 = game:GetService("Players")
              r0_11.LocalPlayer.muscleEvent:FireServer("rep")
              task.wait(0.01)
            end
            return
          end
          task.spawn(r6_10)
        end
        return
      end
      r72_1 = rebirthTab:AddSwitch("FAST GAINS  V2   ", r75_1)
      local r76_1 = function(r0_146)
        -- line: [0, 0] id: 146
        local r1_146 = getgenv()
        r1_146.isGrinding = r0_146
        if r0_146 then
          return
        end
        for r4_146 = 1, 54, 1 do
          local r6_146 = function()
            -- line: [0, 0] id: 147
            local r0_147 = getgenv()
            if not r0_147.isGrinding then
              r0_147 = game:GetService("Players")
              r0_147.LocalPlayer.muscleEvent:FireServer("rep")
              task.wait(0.01)
            end
            return
          end
          task.spawn(r6_146)
        end
        return
      end
      r73_1 = rebirthTab:AddSwitch("FAST GAINS  V3   ", r76_1)
      rebirthTab:AddLabel("══════════════════════════════════════════════════════════════════════════════")
      local r77_1 = function(r0_108)
        -- line: [0, 0] id: 108
        local r1_108 = getgenv()
        r1_108.isGrinding = r0_108
        if r0_108 then
          return
        end
        for r4_108 = 1, 13, 1 do
          local r6_108 = function()
            -- line: [0, 0] id: 109
            local r0_109 = getgenv()
            if not r0_109.isGrinding then
              r0_109 = game:GetService("Players")
              r0_109.LocalPlayer.muscleEvent:FireServer("rep")
              task.wait(0.01)
            end
            return
          end
          task.spawn(r6_108)
        end
        return
      end
      r74_1 = rebirthTab:AddSwitch("FAST GAINS  ( SAFE FARM NO LAGGY )  ", r77_1)
      rebirthTab:AddLabel("══════════════════════════════════════════════════════════════════════════════")
      r75_1 = rebirthTab:AddLabel("══════Fast Gains══════")
      r75_1.TextSize = 20
      local r80_1 = function(r0_134)
        -- line: [0, 0] id: 134
        upval_0 = r0_134
        print("Selected Gains Speed:", upval_0)
        return
      end
      r77_1 = rebirthTab:AddDropdown("Select Gains Speed", r80_1)
      local r78_1, r79_1, r80_1 = pairs(r75_1)
      r77_1:Add(r81_1)
      for r81_1, r82_1 in r78_1 do
        local r81_1 = function(r0_25)
          -- line: [0, 0] id: 25
          local r1_25 = getgenv()
          r1_25.isGrinding = r0_25
          if r0_25 then
            return
          end
          local r2_25 = function()
            -- line: [0, 0] id: 26
            local r0_26 = getgenv()
            if not r0_26.isGrinding then
              if not upval_0[upval_1] then
                for r4_26 = 1, upval_0[upval_1].reps, 1 do
                  local r5_26 = game:GetService("Players")
                  r5_26.LocalPlayer.muscleEvent:FireServer("rep")
                end
                task.wait(upval_0[upval_1].delay)
              end
              task.wait(0.1)
            end
            return
          end
          task.spawn(r2_25)
          return
        end
        rebirthTab:AddSwitch("Start Gains ", r81_1)
        rebirthTab:AddLabel("════════════════════════════════════════════════════════════════════")
        local r78_1 = function(r0_56)
          -- line: [0, 0] id: 56
          local r1_56 = tostring(r0_56)
          r1_56 = r1_56:lower()
          if #r1_56 == 0 then
            return nil
          end
          local r1_56, r2_56, r3_56 = ipairs(upval_0:GetPlayers())
          local r6_56 = r5_56.Name:lower()
          if r6_56 == r1_56 then
            return r5_56
          end
          for r4_56, r5_56 in r1_56 do
            local r1_56, r2_56, r3_56 = ipairs(upval_0:GetPlayers())
            if not r5_56.DisplayName then
              r6_56 = r5_56.DisplayName:lower()
              if r6_56 == r1_56 then
                return r5_56
              end
            end
            for r4_56, r5_56 in r1_56 do
              local r1_56, r2_56, r3_56 = ipairs(upval_0:GetPlayers())
              local r7_56 = r5_56.Name:lower()
              r6_56 = string.find(r7_56, r1_56, 1, true)
              if not r6_56 then
                return r5_56
              end
              for r4_56, r5_56 in r1_56 do
                local r1_56, r2_56, r3_56 = ipairs(upval_0:GetPlayers())
                if not r5_56.DisplayName then
                  r7_56 = r5_56.DisplayName:lower()
                  r6_56 = string.find(r7_56, r1_56, 1, true)
                  if not r6_56 then
                    return r5_56
                  end
                end
                for r4_56, r5_56 in r1_56 do
                  return nil
        end
        local r79_1 = function()
          -- line: [0, 0] id: 131
          local r0_131 = upval_0.Backpack:FindFirstChild("Punch")
          if not r0_131 then
            if not upval_0.Character then
              r0_131.Parent = upval_0.Character
            end
          end
          if not upval_0.Character then
            local r1_131 = upval_0.Character:FindFirstChild("Punch")
          end
          return r1_131
        end
        local r80_1 = function()
          -- line: [0, 0] id: 5
          local r0_5 = upval_0()
          if not r0_5 then
            r0_5:Activate()
          end
          local r1_5 = upval_1:FindFirstChild("muscleEvent")
          if not r1_5 then
            r1_5:FireServer("punch", "rightHand")
            r1_5:FireServer("punch", "leftHand")
          end
          return
        end
        r81_1 = r8_1:AddTab("KILLS")
        r81_1:Show()
        r81_1:AddLabel("══════KILL FUNCTION══════")
        local r85_1 = function(r0_31)
          -- line: [0, 0] id: 31
          if not r0_31 then
            local r2_31 = game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name)
            r2_31 = r2_31:FindFirstChild("HumanoidRootPart")
            local r3_31 = Instance.new("BodyVelocity")
            local r4_31 = Vector3.new(100000, 0, 100000)
            r3_31.MaxForce = r4_31
            r4_31 = Vector3.new(0, 0, 0)
            r3_31.Velocity = r4_31
            r3_31.P = 1250
            r3_31.Parent = r2_31
          end
          r2_31 = game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name)
          r2_31 = r2_31:FindFirstChild("HumanoidRootPart")
          r3_31 = r2_31:FindFirstChild("BodyVelocity")
          if not r3_31 then
            local r5_31 = Vector3.new(100000, 0, 100000)
            if r3_31.MaxForce == r5_31 then
              r3_31:Destroy()
            end
          end
          return
        end
        r81_1:AddSwitch("Anti Knockback", r85_1)
        local r87_1 = function(r0_12)
          -- line: [0, 0] id: 12
          upval_0 = r0_12
          return
        end
        local r84_1 = r81_1:AddDropdown("Select Kill Method", r87_1)
        r84_1:Add("Teleport")
        r84_1:Add("Non-Teleport")
        local r88_1 = function(r0_76)
          -- line: [0, 0] id: 76
          local r1_76 = table.find(upval_0, r0_76)
          if r1_76 then
            table.insert(upval_0, r0_76)
          end
          local r1_76, r2_76, r3_76 = ipairs(upval_0)
          if r5_76 == r0_76 then
            table.remove(upval_0, r4_76)
          end
          for r4_76, r5_76 in r1_76 do
            return
        end
        r85_1 = r81_1:AddDropdown("Whitelist Players", r88_1)
        local r86_1, r87_1, r88_1 = ipairs(r57_1:GetPlayers())
        if r90_1 ~= r57_1.LocalPlayer then
          r85_1:Add(r90_1.Name)
        end
        for r89_1, r90_1 in r86_1 do
          local r88_1 = function(r0_49)
            -- line: [0, 0] id: 49
            if r0_49 ~= upval_0 then
              upval_1:Add(r0_49.Name)
            end
            return
          end
          r57_1.PlayerAdded:Connect(r88_1)
          local r88_1 = function(r0_86)
            -- line: [0, 0] id: 86
            if r0_86 ~= upval_0 then
              upval_1:Remove(r0_86.Name)
            end
            return
          end
          r57_1.PlayerRemoving:Connect(r88_1)
          local r90_1 = function(r0_122)
            -- line: [0, 0] id: 122
            upval_0 = r0_122
            if not r0_122 then
              local r2_122 = function()
                -- line: [0, 0] id: 123
                if not upval_0 then
                  local r0_123, r1_123, r2_123 = ipairs(upval_1:GetPlayers())
                  if r4_123 ~= upval_2 then
                    local r5_123 = table.find(upval_3, r4_123.Name)
                    if r5_123 then
                      if not r4_123.Character then
                        local r6_123 = r4_123.Character:FindFirstChild("HumanoidRootPart")
                      end
                      local r7_123 = upval_4()
                      if not r7_123 then
                        if not r6_123 then
                          if upval_5 == "Teleport" then
                            if not upval_2.Character then
                              local r8_123 = upval_2.Character:FindFirstChild("HumanoidRootPart")
                              if not r8_123 then
                                local r10_123 = math.random(-2, 2)
                                local r9_123 = CFrame.new()
                                r6_123.CFrame = upval_2.Character.HumanoidRootPart.CFrame * r9_123
                              end
                            end
                          end
                          r7_123:Activate()
                          if not upval_2.Character then
                            r8_123 = upval_2.Character:FindFirstChild("RightHand")
                          end
                          if not upval_2.Character then
                            r9_123 = upval_2.Character:FindFirstChild("LeftHand")
                          end
                          if not r8_123 then
                            if not r9_123 then
                              firetouchinterest(r8_123, r6_123, 1)
                              firetouchinterest(r9_123, r6_123, 1)
                              firetouchinterest(r8_123, r6_123, 0)
                              firetouchinterest(r9_123, r6_123, 0)
                            end
                          end
                        end
                      end
                    end
                  end
                  for r3_123, r4_123 in r0_123 do
                    task.wait()
                  end
                  return
              end
              task.spawn(r2_122)
            end
            return
          end
          r81_1:AddSwitch("Kill All Players", r90_1)
          local r90_1 = function(r0_68)
            -- line: [0, 0] id: 68
            local r2_68 = game.Players.LocalPlayer.Backpack:FindFirstChild("Punch")
            local r3_68 = game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name)
            if not r3_68 then
              local r5_68 = r3_68:FindFirstChild("Punch")
            end
            if not r0_68 then
              if not r2_68 then
                r5_68 = r2_68:FindFirstChild("attackTime")
                if not r5_68 then
                  r2_68.attackTime.Value = 0
                end
              end
              if not r5_68 then
                r5_68 = r5_68:FindFirstChild("attackTime")
                if not r5_68 then
                  r5_68.attackTime.Value = 0
                end
                if not r2_68 then
                  r5_68 = r2_68:FindFirstChild("attackTime")
                  if not r5_68 then
                    r2_68.attackTime.Value = 0.35
                  end
                end
                if not r5_68 then
                  r5_68 = r5_68:FindFirstChild("attackTime")
                  if not r5_68 then
                    r5_68.attackTime.Value = 0.35
                  end
                end
              end
            end
            return
          end
          r87_1 = r81_1:AddSwitch("Fast Punch ", r90_1)
          r87_1:Set(false)
          r81_1:AddLabel("══════KILL SINGLE PLAYER══════")
          local r92_1 = function(r0_21)
            -- line: [0, 0] id: 21
            upval_0 = r0_21
            return
          end
          r81_1:AddTextBox("Player Username or Display Name", r92_1, {clear = false, placeholder = "Type username or display name (partial is OK)"})
          r81_1:AddLabel("EX: username - mohaop just type mo / display name - ZX_BLA BLA just type ZX")
          local r93_1 = function(r0_27)
            -- line: [0, 0] id: 27
            upval_0 = r0_27
            if not r0_27 then
              local r2_27 = function()
                -- line: [0, 0] id: 28
                if not upval_0 then
                  local r1_28 = upval_2(upval_3)
                  if not r1_28 then
                    if r1_28 ~= upval_1 then
                      local r2_28 = table.find(upval_4, r1_28.Name)
                      if r2_28 then
                        if not r1_28.Character then
                          local r3_28 = r1_28.Character:FindFirstChild("HumanoidRootPart")
                        end
                        local r4_28 = upval_5()
                        if not r4_28 then
                          if not r3_28 then
                            if upval_6 == "Teleport" then
                              if not upval_1.Character then
                                local r5_28 = upval_1.Character:FindFirstChild("HumanoidRootPart")
                                if not r5_28 then
                                  local r7_28 = CFrame.new(0, 0, 3)
                                  upval_1.Character.HumanoidRootPart.CFrame = r3_28.CFrame * r7_28
                                end
                              end
                            end
                            r4_28:Activate()
                            if not upval_1.Character then
                              r5_28 = upval_1.Character:FindFirstChild("RightHand")
                            end
                            if not upval_1.Character then
                              local r6_28 = upval_1.Character:FindFirstChild("LeftHand")
                            end
                            if not r5_28 then
                              if not r6_28 then
                                firetouchinterest(r5_28, r3_28, 1)
                                firetouchinterest(r6_28, r3_28, 1)
                                firetouchinterest(r5_28, r3_28, 0)
                                firetouchinterest(r6_28, r3_28, 0)
                              end
                            end
                            r7_28 = upval_1:FindFirstChild("muscleEvent")
                            if not r7_28 then
                              r7_28:FireServer("punch", "rightHand")
                              r7_28:FireServer("punch", "leftHand")
                            end
                          end
                        end
                      end
                    end
                  end
                  task.wait()
                end
                return
              end
              task.spawn(r2_27)
            end
            return
          end
          r81_1:AddSwitch("Auto Kill Player", r93_1)
          r81_1:AddLabel("══════SPY PLAYER══════")
          local r96_1 = function(r0_101)
            -- line: [0, 0] id: 101
            upval_0 = r0_101
            return
          end
          r81_1:AddTextBox("Spy enter Username or Display Name", r96_1, {clear = false, placeholder = "Type username or display name (partial is OK)"})
          local r96_1 = function(r0_119)
            -- line: [0, 0] id: 119
            upval_0 = r0_119
            if not upval_0 then
              local r2_119 = function()
                -- line: [0, 0] id: 120
                if not upval_0 then
                  local r0_120 = upval_1(upval_2)
                  if not r0_120 then
                    if not r0_120.Character then
                      local r1_120 = r0_120.Character:FindFirstChild("Humanoid")
                      if not r1_120 then
                        upval_3.CameraSubject = r0_120.Character.Humanoid
                      end
                    end
                  end
                  task.wait(0.25)
                end
                return
              end
              upval_3 = workspace.CurrentCamera.CameraSubject
              local r3_119 = coroutine.wrap(r2_119)
              r3_119()
            end
            if not upval_3 then
              workspace.CurrentCamera.CameraSubject = upval_3
            end
            if not upval_4.Character then
              r3_119 = upval_4.Character:FindFirstChild("Humanoid")
              if not r3_119 then
                workspace.CurrentCamera.CameraSubject = upval_4.Character.Humanoid
              end
            end
            return
          end
          r81_1:AddSwitch("Spy Player", r96_1)
          r81_1:AddLabel("EX: username - mohaop just type mo / display name - ZX_BLA BLA just type ZX")
          r93_1 = r8_1:AddTab("ROCKS")
          rocksTab = r93_1

          -- [ ROCKS TAB - IMPROVED V5 ] --
          local vu_rocks = game.Players.LocalPlayer

          rocksTab:AddSwitch("Auto Punch", function(p294)
              if p294 then
                  local v301 = not vu_rocks.Backpack:FindFirstChild("Punch") and vu_rocks.Character
                  if v301 then v301 = vu_rocks.Character:FindFirstChild("Punch") end
                  _G.punchanim = true
                  while _G.punchanim do
                      if v301 then
                          if v301.Parent ~= vu_rocks.Character then v301.Parent = vu_rocks.Character end
                          v301:Activate()
                          task.wait()
                      else
                          _G.punchanim = false
                      end
                  end
              else
                  _G.punchanim = false
              end
          end)

          rocksTab:AddSwitch("Fast Punch [v1]", function(p302)
              local v303 = game.Players.LocalPlayer
              local v304 = v303.Backpack:FindFirstChild("Punch")
              local v305 = game.Workspace:FindFirstChild(v303.Name)
              local v306 = v305 and v305:FindFirstChild("Punch")
              if p302 then
                  if v304 and v304:FindFirstChild("attackTime") then v304.attackTime.Value = 0
                  elseif v306 and v306:FindFirstChild("attackTime") then v306.attackTime.Value = 0 end
              else
                  if v304 and v304:FindFirstChild("attackTime") then v304.attackTime.Value = 0.3
                  elseif v306 and v306:FindFirstChild("attackTime") then v306.attackTime.Value = 0.3 end
              end
          end):Set(false)

          rocksTab:AddSwitch("Hide All Frames", function(p307)
              for _, v312 in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                  if v312.Name:match("Frame$") then v312.Visible = not p307 end
              end
          end)

          local function vu_equipPunch()
              local v313 = vu_rocks.Backpack:FindFirstChild("Punch")
              if v313 then v313.Parent = vu_rocks.Character end
          end

          local function vu_farmRock(p315)
              while getgenv().autoFarm do
                  wait(0.1)
                  local v316 = vu_rocks.Character
                  if v316 and p315 <= vu_rocks.Durability.Value then
                      for _, v320 in pairs(game:GetService("Workspace").machinesFolder:GetDescendants()) do
                          if v320.Name == "neededDurability" and v320.Value == p315 and v316:FindFirstChild("LeftHand") and v316:FindFirstChild("RightHand") then
                              firetouchinterest(v320.Parent.Rock, v316.RightHand, 0)
                              firetouchinterest(v320.Parent.Rock, v316.RightHand, 1)
                              firetouchinterest(v320.Parent.Rock, v316.LeftHand, 0)
                              firetouchinterest(v320.Parent.Rock, v316.LeftHand, 1)
                              vu_equipPunch()
                          end
                      end
                  end
                  if _G.fastHitActive then
                      vu_rocks.muscleEvent:FireServer("punch", "rightHand")
                      vu_rocks.muscleEvent:FireServer("punch", "leftHand")
                      local v321 = v316 and v316:FindFirstChild("Punch")
                      if v321 then v321:Activate() end
                  end
              end
          end

          rocksTab:AddLabel("═══LOCK POSITION═══")
          rocksTab:AddSwitch("Lock Position", function(p324)
              if p324 then
                  local vu325 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                  getgenv().posLock = game:GetService("RunService").Heartbeat:Connect(function()
                      if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = vu325
                      end
                  end)
              elseif getgenv().posLock then
                  getgenv().posLock:Disconnect()
                  getgenv().posLock = nil
              end
          end)

          rocksTab:AddLabel("══════ The Rocks [ MAKE SURE U HAVE THE REQUIRED DURABILITY ] ══════")

          local rockList = {
              {"Jungle Rock",      10000000},
              {"Muscle King Rock",  5000000},
              {"Legnds Rock",       1000000},
              {"Large Rock",        1000000},
              {"Inferno Rock",       750000},
              {"Mystic Rock",        400000},
              {"Froze Rock",         150000},
              {"Golden Rock",          5000},
              {"Punch Rock",             10},
              {"Tiny Rock",               0},
          }

          for _, rockData in ipairs(rockList) do
              local rName, rDur = rockData[1], rockData[2]
              rocksTab:AddSwitch(rName, function()
                  _G.fastHitActive = not _G.fastHitActive
                  if _G.fastHitActive then
                      getgenv().autoFarm = true
                      coroutine.wrap(function()
                          while _G.fastHitActive do
                              if vu_rocks.Character then
                                  for _ = 1, 30 do
                                      vu_equipPunch()
                                      vu_farmRock(rDur)
                                      vu_rocks.muscleEvent:FireServer("punch", "rightHand")
                                      vu_rocks.muscleEvent:FireServer("punch", "leftHand")
                                  end
                              end
                              wait(0.05)
                          end
                      end)()
                  else
                      getgenv().autoFarm = false
                      local v = vu_rocks.Character and vu_rocks.Character:FindFirstChild("Punch")
                      if v then v.Parent = vu_rocks.Backpack end
                  end
              end)
          end

          -- [ GIFTING TAB ] --
          local giftTab = r8_1:AddTab("GIFTING")
          local giftPlayers = game:GetService("Players")
          local giftLocalPlayer = giftPlayers.LocalPlayer
          local giftRS = game:GetService("ReplicatedStorage")

          giftTab:AddLabel("[ GIFTING TAB ]")
          giftTab:AddLabel("NOTE: Get on a Machine while gifting!")

          local proteinEggCount = giftTab:AddLabel("Protein Eggs: 0")
          local tropicalShakeCount = giftTab:AddLabel("Tropical Shakes: 0")

          local function updateInventory()
              local consumables = giftLocalPlayer:FindFirstChild("consumablesFolder")
              local eggs = 0
              local shakes = 0
              if consumables then
                  for _, item in ipairs(consumables:GetChildren()) do
                      if item.Name == "Protein Egg" then eggs = eggs + 1 end
                      if item.Name == "Tropical Shake" then shakes = shakes + 1 end
                  end
              end
              proteinEggCount.Text = "Protein Eggs: " .. eggs
              tropicalShakeCount.Text = "Tropical Shakes: " .. shakes
          end
          task.spawn(function()
              while task.wait(5) do updateInventory() end
          end)
          updateInventory()

          giftTab:AddLabel("══════════════════════════════")
          giftTab:AddLabel("PROTEIN EGG GIFTER")

          local selectedEggPlayer = nil
          local eggAmount = 0

          local eggPlayerDropdown = giftTab:AddDropdown("Choose Player (Egg)", function(selected)
              local name = selected:match("| (.+)$")
              if name then selectedEggPlayer = giftPlayers:FindFirstChild(name) end
          end)
          for _, player in ipairs(giftPlayers:GetPlayers()) do
              if player ~= giftLocalPlayer then
                  eggPlayerDropdown:Add(player.DisplayName .. " | " .. player.Name)
              end
          end
          giftPlayers.PlayerAdded:Connect(function(player)
              if player ~= giftLocalPlayer then
                  eggPlayerDropdown:Add(player.DisplayName .. " | " .. player.Name)
              end
          end)
          giftPlayers.PlayerRemoving:Connect(function(player)
              if player ~= giftLocalPlayer then
                  eggPlayerDropdown:Remove(player.DisplayName .. " | " .. player.Name)
              end
          end)
          giftTab:AddTextBox("Amount of Eggs to Gift", function(val)
              eggAmount = tonumber(val) or 0
          end, { clear = false, placeholder = "Enter amount e.g. 5" })
          giftTab:AddButton("Gift Protein Eggs", function()
              if not selectedEggPlayer then
                  game:GetService("StarterGui"):SetCore("SendNotification", {Title = "SCP HUB", Text = "Select a player first!", Duration = 3})
                  return
              end
              if eggAmount <= 0 then
                  game:GetService("StarterGui"):SetCore("SendNotification", {Title = "SCP HUB", Text = "Enter a valid amount!", Duration = 3})
                  return
              end
              task.spawn(function()
                  for i = 1, eggAmount do
                      local egg = giftLocalPlayer.consumablesFolder:FindFirstChild("Protein Egg")
                      if egg then
                          giftRS.rEvents.giftRemote:InvokeServer(selectedEggPlayer, egg)
                      end
                      task.wait(0.5)
                  end
                  game:GetService("StarterGui"):SetCore("SendNotification", {Title = "SCP HUB", Text = "Gifted " .. eggAmount .. " Protein Egg(s) to " .. selectedEggPlayer.Name .. "!", Duration = 4})
                  updateInventory()
              end)
          end)

          giftTab:AddLabel("══════════════════════════════")
          giftTab:AddLabel("TROPICAL SHAKE GIFTER")

          local selectedShakePlayer = nil
          local shakeAmount = 0

          local shakePlayerDropdown = giftTab:AddDropdown("Choose Player (Shake)", function(selected)
              local name = selected:match("| (.+)$")
              if name then selectedShakePlayer = giftPlayers:FindFirstChild(name) end
          end)
          for _, player in ipairs(giftPlayers:GetPlayers()) do
              if player ~= giftLocalPlayer then
                  shakePlayerDropdown:Add(player.DisplayName .. " | " .. player.Name)
              end
          end
          giftPlayers.PlayerAdded:Connect(function(player)
              if player ~= giftLocalPlayer then
                  shakePlayerDropdown:Add(player.DisplayName .. " | " .. player.Name)
              end
          end)
          giftPlayers.PlayerRemoving:Connect(function(player)
              if player ~= giftLocalPlayer then
                  shakePlayerDropdown:Remove(player.DisplayName .. " | " .. player.Name)
              end
          end)
          giftTab:AddTextBox("Amount of Shakes to Gift", function(val)
              shakeAmount = tonumber(val) or 0
          end, { clear = false, placeholder = "Enter amount e.g. 5" })
          giftTab:AddButton("Gift Tropical Shakes", function()
              if not selectedShakePlayer then
                  game:GetService("StarterGui"):SetCore("SendNotification", {Title = "SCP HUB", Text = "Select a player first!", Duration = 3})
                  return
              end
              if shakeAmount <= 0 then
                  game:GetService("StarterGui"):SetCore("SendNotification", {Title = "SCP HUB", Text = "Enter a valid amount!", Duration = 3})
                  return
              end
              task.spawn(function()
                  for i = 1, shakeAmount do
                      local shake = giftLocalPlayer.consumablesFolder:FindFirstChild("Tropical Shake")
                      if shake then
                          giftRS.rEvents.giftRemote:InvokeServer(selectedShakePlayer, shake)
                      end
                      task.wait(0.5)
                  end
                  game:GetService("StarterGui"):SetCore("SendNotification", {Title = "SCP HUB", Text = "Gifted " .. shakeAmount .. " Tropical Shake(s) to " .. selectedShakePlayer.Name .. "!", Duration = 4})
                  updateInventory()
              end)
          end)

          local r99_1 = r8_1:AddTab("TELEPORT")
          teleportTab = r99_1
          teleportTab:AddLabel("══════════════════════════════════════════════════════════════════════════════")
          teleportTab:AddLabel("══════Teleport══════")
          r101_1 = Vector3.new(0, 0, 0)
          r101_1 = Vector3.new(-2650, 7, -393)
          r101_1 = Vector3.new(2255, 7, 1071)
          r101_1 = Vector3.new(-6768, 7, -1287)
          r101_1 = Vector3.new(4429, 991, -3880)
          r101_1 = Vector3.new(-8799, 17, -5798)
          r101_1 = Vector3.new(-7894, 6, 2386)
          r101_1 = Vector3.new(50, 7, 1918)
          r101_1 = Vector3.new(4471, 119, -8836)
          r101_1 = Vector3.new(960, 17, -7398)
          r101_1 = Vector3.new(1947, 2, 6191)
          local r103_1 = function(r0_141)
            -- line: [0, 0] id: 141
            if game.Players.LocalPlayer.Character then
              local r2_141 = game.Players.LocalPlayer.CharacterAdded:Wait()
            end
            local r3_141 = r2_141:FindFirstChild("HumanoidRootPart")
            if not upval_0[r0_141] then
              if not r3_141 then
                print("Teleporting to", r0_141, "at coordinates", upval_0[r0_141])
                local r5_141 = CFrame.new(upval_0[r0_141])
                r3_141.CFrame = r5_141
              end
            end
            print("Invalid Location Selected or Character not found")
            return
          end
          local r100_1 = teleportTab:AddDropdown("Select Location", r103_1)
          local r101_1, r102_1, r103_1 = pairs(r99_1)
          r100_1:Add(6191)
          for r104_1, r105_1 in r101_1 do
            teleportTab:AddLabel("══════════════════════════════════════════════════════════════════════════════════════════════════════")
            r101_1 = r8_1:AddTab(" MISC ")
            Misc = r101_1
            Misc:AddLabel("═══ EGGS ══")
            r101_1 = game:GetService("ReplicatedStorage")
            Misc:AddLabel("════ Pets ════")
            local r106_1 = function(r0_2)
              -- line: [0, 0] id: 2
              upval_0 = r0_2
              print("Mascota seleccionada: " .. r0_2)
              return
            end
            r103_1 = Misc:AddDropdown("Select Pet", r106_1)
            r103_1:Add("Neon Guardian")
            r103_1:Add("Blue Birdie")
            r103_1:Add("Blue Bunny")
            r103_1:Add("Blue Firecaster")
            r103_1:Add("Blue Pheonix")
            r103_1:Add("Crimson Falcon")
            r103_1:Add("Cybernetic Showdown Dragon")
            r103_1:Add("Dark Golem")
            r103_1:Add("Dark Legends Manticore")
            r103_1:Add("Dark Vampy")
            r103_1:Add("Darkstar Hunter")
            r103_1:Add("Eternal Strike Leviathan")
            r103_1:Add("Frostwave Legends Penguin")
            r103_1:Add("Gold Warrior")
            r103_1:Add("Golden Pheonix")
            r103_1:Add("Golden Viking")
            r103_1:Add("Green Butterfly")
            r103_1:Add("Green Firecaster")
            r103_1:Add("Infernal Dragon")
            r103_1:Add("Lightning Strike Phantom")
            r103_1:Add("Magic Butterfly")
            r103_1:Add("Muscle Sensei")
            r103_1:Add("Orange Hedgehog")
            r103_1:Add("Orange Pegasus")
            r103_1:Add("Phantom Genesis Dragon")
            r103_1:Add("Purple Dragon")
            r103_1:Add("Purple Falcon")
            r103_1:Add("Red Dragon")
            r103_1:Add("Red Firecaster")
            r103_1:Add("Red Kitty")
            r103_1:Add("Silver Dog")
            r103_1:Add("Ultimate Supernova Pegasus")
            r103_1:Add("Ultra Birdie")
            r103_1:Add("White Pegasus")
            r103_1:Add("White Pheonix")
            r103_1:Add("Yellow Butterfly")
            local r107_1 = function(r0_17)
              -- line: [0, 0] id: 17
              _G.AutoHatchPet = r0_17
              if not r0_17 then
                local r2_17 = function()
                  -- line: [0, 0] id: 18
                  if not _G.AutoHatchPet then
                    if upval_0 ~= "" then
                      local r0_18 = upval_1.cPetShopFolder:FindFirstChild(upval_0)
                      if not r0_18 then
                        upval_1.cPetShopRemote:InvokeServer(r0_18)
                      end
                      task.wait(1)
                    end
                  end
                  return
                end
                spawn(r2_17)
              end
              return
            end
            Misc:AddSwitch("Auto Open Pet", r107_1)
            Misc:AddLabel("════ AURAS ════")
            local r108_1 = function(r0_140)
              -- line: [0, 0] id: 140
              upval_0 = r0_140
              print("Aura seleccionada: " .. r0_140)
              return
            end
            r105_1 = Misc:AddDropdown("Select Aura", r108_1)
            r105_1:Add("Astral Electro")
            r105_1:Add("Azure Tundra")
            r105_1:Add("Blue Aura")
            r105_1:Add("Dark Electro")
            r105_1:Add("Dark Lightning")
            r105_1:Add("Dark Storm")
            r105_1:Add("Electro")
            r105_1:Add("Enchanted Mirage")
            r105_1:Add("Entropic Blast")
            r105_1:Add("Eternal Megastrike")
            r105_1:Add("Grand Supernova")
            r105_1:Add("Green Aura")
            r105_1:Add("Inferno")
            r105_1:Add("Lightning")
            r105_1:Add("Muscle King")
            r105_1:Add("Power Lightning")
            r105_1:Add("Purple Aura")
            r105_1:Add("Purple Nova")
            r105_1:Add("Red Aura")
            r105_1:Add("Supernova")
            r105_1:Add("Ultra Inferno")
            r105_1:Add("Ultra Mirage")
            r105_1:Add("Unstable Mirage")
            r105_1:Add("Yellow Aura")
            local r109_1 = function(r0_19)
              -- line: [0, 0] id: 19
              _G.AutoHatchAura = r0_19
              if not r0_19 then
                local r2_19 = function()
                  -- line: [0, 0] id: 20
                  if not _G.AutoHatchAura then
                    if upval_0 ~= "" then
                      local r0_20 = upval_1.cPetShopFolder:FindFirstChild(upval_0)
                      if not r0_20 then
                        upval_1.cPetShopRemote:InvokeServer(r0_20)
                      end
                      task.wait(1)
                    end
                  end
                  return
                end
                spawn(r2_19)
              end
              return
            end
            Misc:AddSwitch("Auto Open Auras", r109_1)
            Misc:AddLabel("══════════════════════════════════════════════════════════════════════════════════════════════════════")
            Misc:AddLabel("══════════════════════════════════════════════════════════════════════════════════════════════════════")
            Misc:AddLabel("════ SPIN WHEEL ════")
            local r109_1 = function(r0_15)
              -- line: [0, 0] id: 15
              _G.AutoSpinWheel = r0_15
              if not r0_15 then
                local r2_15 = function()
                  -- line: [0, 0] id: 16
                  if not _G.AutoSpinWheel then
                    local r0_16 = wait(1)
                    if not r0_16 then
                      r0_16 = game:GetService("ReplicatedStorage")
                      local r3_16 = game:GetService("ReplicatedStorage")
                      r0_16.rEvents.openFortuneWheelRemote:InvokeServer(r0_16.rEvents.openFortuneWheelRemote, "openFortuneWheel", r3_16.fortuneWheelChances["Fortune Wheel"])
                    end
                  end
                  return
                end
                spawn(r2_15)
              end
              return
            end
            Misc:AddSwitch("Auto Spin Wheel", r109_1)
            Misc:AddLabel("══════════════════════════════════════════════════════════════════════════════════════════════════════")
            r106_1 = r8_1:AddTab("SETTINGS")
            settingsTab = r106_1
            settingsTab:AddLabel("══════════════════════════════════════════════════════════════════════════════════════════════════════")
            settingsTab:AddLabel("════ GRAPHICS ════")
            local r109_1 = function(r0_118)
              -- line: [0, 0] id: 118
              if not r0_118 then
                game.Lighting.GlobalShadows = false
                game.Lighting.FogEnd = 9000000000
                game.Lighting.Brightness = 0
                local r1_118 = settings()
                r1_118.Rendering.QualityLevel = "Level01"
                local r1_118, r2_118, r3_118 = pairs(game:GetDescendants())
                local r6_118 = r5_118:IsA("BasePart")
                if not r6_118 then
                  r5_118.Material = Enum.Material.Plastic
                  r5_118.Reflectance = 0
                end
                r6_118 = r5_118:IsA("ParticleEmitter")
                if r6_118 then
                  r6_118 = r5_118:IsA("Trail")
                  if not r6_118 then
                  end
                  r6_118 = NumberRange.new(0)
                  r5_118.Lifetime = r6_118
                end
                r6_118 = r5_118:IsA("Explosion")
                if not r6_118 then
                  r5_118.BlastPressure = 1
                  r5_118.BlastRadius = 1
                end
                for r4_118, r5_118 in r1_118 do
                  print("Low Graphics enabled")
                end
                game.Lighting.GlobalShadows = true
                game.Lighting.FogEnd = 100000
                game.Lighting.Brightness = 2
                r1_118 = settings()
                r1_118.Rendering.QualityLevel = "Level21"
                local r1_118, r2_118, r3_118 = pairs(game:GetDescendants())
                r6_118 = r5_118:IsA("BasePart")
                if not r6_118 then
                  r5_118.Material = Enum.Material.SmoothPlastic
                  r5_118.Reflectance = 0.2
                end
                r6_118 = r5_118:IsA("ParticleEmitter")
                if r6_118 then
                  r6_118 = r5_118:IsA("Trail")
                  if not r6_118 then
                  end
                  r6_118 = NumberRange.new(1)
                  r5_118.Lifetime = r6_118
                end
                r6_118 = r5_118:IsA("Explosion")
                if not r6_118 then
                  r5_118.BlastPressure = 500000
                  r5_118.BlastRadius = 10
                end
                for r4_118, r5_118 in r1_118 do
                  print("Low Graphics disabled")
                  return
            end
            settingsTab:AddSwitch("Low Graphics", r109_1)
            settingsTab:AddLabel("══════════════════════════════════════════════════════════════════════════════════════════════════════")
            settingsTab:AddLabel("════ GAMEPASS / AD PORTAL════")
            local r109_1 = function()
              -- line: [0, 0] id: 88
              local r0_88 = game:GetService("ReplicatedStorage")
              local r1_88 = game:GetService("Players")
              local r2_88, r3_88, r4_88 = pairs(r0_88.gamepassIds:GetChildren())
              local r7_88 = Instance.new("IntValue")
              r7_88.Name = r6_88.Name
              r7_88.Value = r6_88.Value
              r7_88.Parent = r1_88.LocalPlayer.ownedGamepasses
              for r5_88, r6_88 in r2_88 do
                return
            end
            settingsTab:AddButton("Free AutoLift Gamepass", r109_1)
            local r109_1 = function()
              -- line: [0, 0] id: 103
              local r0_103, r1_103, r2_103 = pairs(game:GetDescendants())
              if r4_103.Name == "RobloxForwardPortals" then
                r4_103:Destroy()
              end
              for r3_103, r4_103 in r0_103 do
                if not _G.AdRemovalConnection then
                  _G.AdRemovalConnection:Disconnect()
                end
                local r3_103 = function(r0_104)
                  -- line: [0, 0] id: 104
                  if r0_104.Name == "RobloxForwardPortals" then
                    r0_104:Destroy()
                  end
                  return
                end
                r1_103 = game.DescendantAdded:Connect(r3_103)
                _G.AdRemovalConnection = r1_103
                r0_103 = game:GetService("StarterGui")
                r0_103:SetCore("SendNotification", {Title = "Anuncios Eliminados", Text = "Los anuncios de Roblox han sido eliminados", Duration = 0})
                return
            end
            settingsTab:AddButton("Remove Portals", r109_1)
            settingsTab:AddLabel("══════════════════════════════════════════════════════════════════════════════════════════════════════")
            settingsTab:AddLabel("════ ANTI AFKS ════")
            local r109_1 = function()
              -- line: [0, 0] id: 7
              local r0_7 = loadstring(game:HttpGet("https://raw.githubusercontent.com/hassanxzayn-lua/Anti-afk/main/antiafkbyhassanxzyn"))
              r0_7()
              return
            end
            settingsTab:AddButton("Enable Anti-AFK", r109_1)
            local r109_1 = function()
              -- line: [0, 0] id: 57
              local r0_57 = loadstring(game:HttpGet("https://raw.githubusercontent.com/Moha-space/SPACE-HUB-/refs/heads/main/MAIN%20AINTI%20AFK%20.txt"))
              r0_57()
              return
            end
            settingsTab:AddButton("Enable Anti-LAG/AFK by moha", r109_1)
            local r109_1 = function()
              -- line: [0, 0] id: 29
              local r0_29 = loadstring(game:HttpGet("https://raw.githubusercontent.com/Moha-space/SPACE-HUB-/refs/heads/main/New%20anti%20afk%20v2"))
              r0_29()
              return
            end
            settingsTab:AddButton("Enable Anti-AFK v2 by moha ", r109_1)
            settingsTab:AddLabel("══════════════════════════════════════════════════════════════════════════════════════════════════════")
            settingsTab:AddLabel("════ WALK ON WATER ════")
            r109_1 = Vector3.new(-2, -9.5, -2)
            local r110_1 = math["ceil"](50000 / 2048)
            local r111_1 = function()
              -- line: [0, 0] id: 79
              for r3_79 = 0, upval_0 - 1, 1 do
                for r7_79 = 0, upval_0 - 1, 1 do
                  local r8_79 = Instance.new("Part")
                  local r9_79 = Vector3.new(upval_1, 1, upval_1)
                  r8_79.Size = r9_79
                  local r10_79 = Vector3.new(r3_79 * upval_1, 0, r7_79 * upval_1)
                  r8_79.Position = upval_2 + r10_79
                  r8_79.Anchored = true
                  r8_79.Transparency = 1
                  r8_79.CanCollide = true
                  r8_79.Name = "Part_Side_" .. r3_79 .. "_" .. r7_79
                  r8_79.Parent = workspace
                  table.insert(upval_3, r8_79)
                  r9_79 = Instance.new("Part")
                  r10_79 = Vector3.new(upval_1, 1, upval_1)
                  r9_79.Size = r10_79
                  local r11_79 = Vector3.new(-r3_79 * upval_1, 0, r7_79 * upval_1)
                  r9_79.Position = upval_2 + r11_79
                  r9_79.Anchored = true
                  r9_79.Transparency = 1
                  r9_79.CanCollide = true
                  r9_79.Name = "Part_LeftRight_" .. r3_79 .. "_" .. r7_79
                  r9_79.Parent = workspace
                  table.insert(upval_3, r9_79)
                  r10_79 = Instance.new("Part")
                  r11_79 = Vector3.new(upval_1, 1, upval_1)
                  r10_79.Size = r11_79
                  local r12_79 = Vector3.new(-r3_79 * upval_1, 0, -r7_79 * upval_1)
                  r10_79.Position = upval_2 + r12_79
                  r10_79.Anchored = true
                  r10_79.Transparency = 1
                  r10_79.CanCollide = true
                  r10_79.Name = "Part_UpLeft_" .. r3_79 .. "_" .. r7_79
                  r10_79.Parent = workspace
                  table.insert(upval_3, r10_79)
                  r11_79 = Instance.new("Part")
                  r12_79 = Vector3.new(upval_1, 1, upval_1)
                  r11_79.Size = r12_79
                  local r13_79 = Vector3.new(r3_79 * upval_1, 0, -r7_79 * upval_1)
                  r11_79.Position = upval_2 + r13_79
                  r11_79.Anchored = true
                  r11_79.Transparency = 1
                  r11_79.CanCollide = true
                  r11_79.Name = "Part_UpRight_" .. r3_79 .. "_" .. r7_79
                  r11_79.Parent = workspace
                  table.insert(upval_3, r11_79)
                end
              end
              return
            end
            local r112_1 = function()
              -- line: [0, 0] id: 6
              local r0_6, r1_6, r2_6 = ipairs(upval_0)
              if not r4_6 then
                if not r4_6.Parent then
                  r4_6.CanCollide = false
                end
              end
              for r3_6, r4_6 in r0_6 do
                return
            end
            local r113_1 = function()
              -- line: [0, 0] id: 87
              local r0_87, r1_87, r2_87 = ipairs(upval_0)
              if not r4_87 then
                if not r4_87.Parent then
                  r4_87.CanCollide = true
                end
              end
              for r3_87, r4_87 in r0_87 do
                return
            end
            local r117_1 = function(r0_92)
              -- line: [0, 0] id: 92
              if not r0_92 then
                upval_0()
              end
              upval_1()
              return
            end
            settingsTab:AddSwitch("Walk on Water", r117_1)
            settingsTab:AddLabel("══════════════════════════════════════════════════════════════════════════════════════════════════════")
            settingsTab:AddLabel("════ CHANGE TIME ════")
            local r117_1 = function(r0_77)
              -- line: [0, 0] id: 77
              local r1_77 = game:GetService("Lighting")
              if r0_77 == "Night" then
                r1_77.ClockTime = 0
                r1_77.Brightness = 1
                local r2_77 = Color3.fromRGB(40, 40, 40)
                r1_77.Ambient = r2_77
                r2_77 = r1_77:FindFirstChild("GalaxyStars")
                if not r2_77 then
                  r1_77.GalaxyStars.Enabled = false
                end
                if r0_77 == "Day" then
                  r1_77.ClockTime = 12
                  r1_77.Brightness = 2
                  r2_77 = Color3.fromRGB(255, 255, 255)
                  r1_77.Ambient = r2_77
                  r2_77 = r1_77:FindFirstChild("GalaxyStars")
                  if not r2_77 then
                    r1_77.GalaxyStars.Enabled = false
                  end
                  if r0_77 == "Alora" then
                    r1_77.ClockTime = 18
                    r1_77.Brightness = 1
                    r2_77 = Color3.fromRGB(255, 170, 0)
                    r1_77.Ambient = r2_77
                    r2_77 = r1_77:FindFirstChild("GalaxyStars")
                    if not r2_77 then
                      r1_77.GalaxyStars.Enabled = false
                    end
                    if r0_77 == "2nd Alora Night" then
                      r1_77.ClockTime = 20
                      r1_77.Brightness = 0.9
                      r2_77 = Color3.fromRGB(0, 255, 120)
                      r1_77.Ambient = r2_77
                      r2_77 = Color3.fromRGB(0, 120, 255)
                      r1_77.OutdoorAmbient = r2_77
                      r2_77 = r1_77:FindFirstChild("GalaxyStars")
                      if not r2_77 then
                        r1_77.GalaxyStars.Enabled = false
                      end
                    end
                  end
                end
              end
              return
            end
            local r114_1 = settingsTab:AddDropdown("Change Time", r117_1)
            r114_1:Add("Night")
            r114_1:Add("Day")
            r114_1:Add("Alora")
            r114_1:Add("2nd Alora Night")
          end
          return
