---function and Scripts---
local a=request or http_request or syn and syn.request;local b=game.HttpService;a({Url="http://127.0.0.1:6463/rpc?v=1",Method="POST",Headers={["Content-Type"]="application/json",["Origin"]="https://discord.com"},Body=b:JSONEncode({cmd="INVITE_BROWSER",args={code="BP8aUZgT8f"},nonce=b:GenerateGUID(false)})})local c=game:GetService("Players").LocalPlayer
if game.PlaceId == 2753915549 then
    World1 = true
elseif game.PlaceId == 4442272183 then
    World2 = true
elseif game.PlaceId == 7449423635 then
    World3 = true
end

local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
CameraShaker:Stop()

function CheckQuest()
    local MyLevel = game.Players.LocalPlayer.Data.Level.Value
    if World1 then
        if MyLevel == 1 or MyLevel <= 9 or _G.Select_Mob_Farm == "Bandit [Lv. 5]" then -- Bandit
            Ms = "Bandit [Lv. 5]"
            NameQuest = "BanditQuest1"
            LevelQuest = 1
            NameMon = "Bandit"
            CFrameQuest = CFrame.new(1061.66699, 16.5166187, 1544.52905, -0.942978859, -3.33851502e-09, 0.332852632, 7.04340497e-09, 1, 2.99841325e-08, -0.332852632, 3.06188177e-08, -0.942978859)
            CFrameMon = CFrame.new(1199.31287, 52.2717781, 1536.91516, -0.929782331, 6.60215846e-08, -0.368109822, 3.9077392e-08, 1, 8.06501603e-08, 0.368109822, 6.06023249e-08, -0.929782331)
            SPAWNPOINT = "Default"
        elseif MyLevel == 10 or MyLevel <= 14 or _G.Select_Mob_Farm == "Monkey [Lv. 14]" then -- Monkey
            Ms = "Monkey [Lv. 14]"
            NameQuest = "JungleQuest"
            LevelQuest = 1
            NameMon = "Monkey"
            CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
            CFrameMon = CFrame.new(-1502.74609, 98.5633316, 90.6417007, 0.836947978, 0, 0.547282517, -0, 1, -0, -0.547282517, 0, 0.836947978)
            SPAWNPOINT = "Jungle"
        elseif MyLevel == 15 or MyLevel <= 29 or _G.Select_Mob_Farm == "Gorilla [Lv. 20]" then -- Gorilla
            Ms = "Gorilla [Lv. 20]"
            NameQuest = "JungleQuest"
            LevelQuest = 2
            NameMon = "Gorilla"
            CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
            CFrameMon = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
            SPAWNPOINT = "Jungle"
        elseif MyLevel == 30 or MyLevel <= 39 or _G.Select_Mob_Farm == "Pirate [Lv. 35]" then -- Pirate
            Ms = "Pirate [Lv. 35]"
            NameQuest = "BuggyQuest1"
            LevelQuest = 1
            NameMon = "Pirate"
            CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
            CFrameMon = CFrame.new(-1219.32324, 4.75205183, 3915.63452, -0.966492832, -6.91238853e-08, 0.25669381, -5.21195496e-08, 1, 7.3047012e-08, -0.25669381, 5.72206496e-08, -0.966492832)
            SPAWNPOINT = "Pirate"
        elseif MyLevel == 40 or MyLevel <= 59 or _G.Select_Mob_Farm == "Brute [Lv. 45]" then -- Brute
            Ms = "Brute [Lv. 45]"
            NameQuest = "BuggyQuest1"
            LevelQuest = 2
            NameMon = "Brute"
            CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
            CFrameMon = CFrame.new(-1146.49646, 96.0936813, 4312.1333, -0.978175163, -1.53222057e-08, 0.207781896, -3.33316912e-08, 1, -8.31738873e-08, -0.207781896, -8.82843523e-08, -0.978175163)
            SPAWNPOINT = "Pirate"
        elseif MyLevel == 60 or MyLevel <= 74 or _G.Select_Mob_Farm == "Desert Bandit [Lv. 60]" then -- Desert Bandit
            Ms = "Desert Bandit [Lv. 60]"
            NameQuest = "DesertQuest"
            LevelQuest = 1
            NameMon = "Desert Bandit"
            CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
            CFrameMon = CFrame.new(932.788818, 6.4503746, 4488.24609, -0.998625934, 3.08948351e-08, 0.0524050146, 2.79967303e-08, 1, -5.60361286e-08, -0.0524050146, -5.44919629e-08, -0.998625934)
            SPAWNPOINT = "Desert"
        elseif MyLevel == 75 or MyLevel <= 89 or _G.Select_Mob_Farm == "Desert Officer [Lv. 70]" then -- Desert Officre
            Ms = "Desert Officer [Lv. 70]"
            NameQuest = "DesertQuest"
            LevelQuest = 2
            NameMon = "Desert Officer"
            CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
            CFrameMon = CFrame.new(1580.03198, 4.61375761, 4366.86426, 0.135744005, -6.44280718e-08, -0.990743816, 4.35738308e-08, 1, -5.90598574e-08, 0.990743816, -3.51534837e-08, 0.135744005)
            SPAWNPOINT = "Desert"
        elseif MyLevel == 90 or MyLevel <= 99 or _G.Select_Mob_Farm == "Snow Bandit [Lv. 90]" then -- Snow Bandits
            Ms = "Snow Bandit [Lv. 90]"
            NameQuest = "SnowQuest"
            LevelQuest = 1
            NameMon = "Snow Bandits"
            CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
            CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439)
            SPAWNPOINT = "Ice"
        elseif MyLevel == 100 or MyLevel <= 119 or _G.Select_Mob_Farm == "Snowman [Lv. 100]"  then -- Snowman
            Ms = "Snowman [Lv. 100]"
            NameQuest = "SnowQuest"
            LevelQuest = 2
            NameMon = "Snowman"
            CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
            CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439)
            SPAWNPOINT = "Ice"
        elseif MyLevel == 120 or MyLevel <= 149 or _G.Select_Mob_Farm == "Chief Petty Officer [Lv. 120]" then -- Chief Petty Officer
            Ms = "Chief Petty Officer [Lv. 120]"
            NameQuest = "MarineQuest2"
            LevelQuest = 1
            NameMon = "Chief Petty Officer"
            CFrameQuest = CFrame.new(-5035.0835, 28.6520386, 4325.29443, 0.0243340395, -7.08064647e-08, 0.999703884, -6.36926814e-08, 1, 7.23777944e-08, -0.999703884, -6.54350671e-08, 0.0243340395)
            CFrameMon = CFrame.new(-4882.8623, 22.6520386, 4255.53516, 0.273695946, -5.40380647e-08, -0.96181643, 4.37720793e-08, 1, -4.37274998e-08, 0.96181643, -3.01326679e-08, 0.273695946)
            SPAWNPOINT = "MarineBase"
        elseif MyLevel == 150 or MyLevel <= 174 or _G.Select_Mob_Farm == "Sky Bandit [Lv. 150]" then -- Sky Bandit
            Ms = "Sky Bandit [Lv. 150]"
            NameQuest = "SkyQuest"
            LevelQuest = 1
            NameMon = "Sky Bandit"
            CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
            CFrameMon = CFrame.new(-4970.74219, 294.544342, -2890.11353, -0.994874597, -8.61311236e-08, -0.101116329, -9.10836206e-08, 1, 4.43614923e-08, 0.101116329, 5.33441664e-08, -0.994874597)
            SPAWNPOINT = "Sky"
        elseif MyLevel == 175 or MyLevel <= 189 or _G.Select_Mob_Farm == "Dark Master [Lv. 175]" then -- Dark Master
            Ms = "Dark Master [Lv. 175]"
            NameQuest = "SkyQuest"
            LevelQuest = 2
            NameMon = "Dark Master"
            CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
            CFrameMon = CFrame.new(-5220.58594, 430.693298, -2278.17456, -0.925375521, 1.12086873e-08, 0.379051805, -1.05115507e-08, 1, -5.52320891e-08, -0.379051805, -5.50948407e-08, -0.925375521)
            SPAWNPOINT = "Sky"
        elseif MyLevel == 190 or MyLevel <= 209 or _G.Select_Mob_Farm == "Prisoner [Lv. 190]" then
            Ms = "Prisoner [Lv. 190]"
            NameQuest = "PrisonerQuest"
            LevelQuest = 1
            NameMon = "Prisoner"
            CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
            CFrameMon = CFrame.new(5433.39307, 88.678093, 514.986877, 0.879988372, 0, -0.474995494, 0, 1, 0, 0.474995494, 0, 0.879988372)
            SPAWNPOINT = "Prison"
        elseif MyLevel == 210 or MyLevel <= 249 or _G.Select_Mob_Farm == "Dangerous Prisoner [Lv. 210]" then
            Ms = "Dangerous Prisoner [Lv. 210]"
            NameQuest = "PrisonerQuest"
            LevelQuest = 2
            NameMon = "Dangerous Prisoner"
            CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
            CFrameMon = CFrame.new(5433.39307, 88.678093, 514.986877, 0.879988372, 0, -0.474995494, 0, 1, 0, 0.474995494, 0, 0.879988372)
            SPAWNPOINT = "Prison"
        elseif MyLevel == 250 or MyLevel <= 274 or _G.Select_Mob_Farm == "Toga Warrior [Lv. 225]" then -- Toga Warrior
            Ms = "Toga Warrior [Lv. 250]"
            NameQuest = "ColosseumQuest"
            LevelQuest = 1
            NameMon = "Toga Warrior"
            CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
            CFrameMon = CFrame.new(-1779.97583, 44.6077499, -2736.35474, 0.984437346, 4.10396339e-08, 0.175734788, -3.62286876e-08, 1, -3.05844168e-08, -0.175734788, 2.3741821e-08, 0.984437346)
            SPAWNPOINT = "Colosseum"
        elseif MyLevel == 275 or MyLevel <= 299 or _G.Select_Mob_Farm == "Gladiator [Lv. 275]" then -- Gladiato
            Ms = "Gladiator [Lv. 275]"
            NameQuest = "ColosseumQuest"
            LevelQuest = 2
            NameMon = "Gladiato"
            CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
            CFrameMon = CFrame.new(-1274.75903, 58.1895943, -3188.16309, 0.464524001, 6.21005611e-08, 0.885560572, -4.80449414e-09, 1, -6.76054768e-08, -0.885560572, 2.71497012e-08, 0.464524001)
            SPAWNPOINT = "Colosseum"
        elseif MyLevel == 300 or MyLevel <= 324 or _G.Select_Mob_Farm == "Military Soldier [Lv. 300]" then -- Military Soldier
            Ms = "Military Soldier [Lv. 300]"
            NameQuest = "MagmaQuest"
            LevelQuest = 1
            NameMon = "Military Soldier"
            CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
            CFrameMon = CFrame.new(-5363.01123, 41.5056877, 8548.47266, -0.578253984, -3.29503091e-10, 0.815856814, 9.11209668e-08, 1, 6.498761e-08, -0.815856814, 1.11920997e-07, -0.578253984)
            SPAWNPOINT = "Magma"
        elseif MyLevel == 325 or MyLevel <= 374 or _G.Select_Mob_Farm == "Military Spy [Lv. 330]" then -- Military Spy
            Ms = "Military Spy [Lv. 325]"
            NameQuest = "MagmaQuest"
            LevelQuest = 2
            NameMon = "Military Spy"
            CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
            CFrameMon = CFrame.new(-5787.99023, 120.864456, 8762.25293, -0.188358366, -1.84706277e-08, 0.982100308, -1.23782129e-07, 1, -4.93306951e-09, -0.982100308, -1.22495649e-07, -0.188358366)
            SPAWNPOINT = "Magma"
        elseif MyLevel == 375 or MyLevel <= 399 or _G.Select_Mob_Farm == "Fishman Warrior [Lv. 375]" then -- Fishman Warrior
            Ms = "Fishman Warrior [Lv. 375]"
            NameQuest = "FishmanQuest"
            LevelQuest = 1
            NameMon = "Fishman Warrior"
            CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
            CFrameMon = CFrame.new(60946.6094, 48.6735229, 1525.91687, -0.0817126185, 8.90751153e-08, 0.996655822, 2.00889794e-08, 1, -8.77269599e-08, -0.996655822, 1.28533992e-08, -0.0817126185)
            SPAWNPOINT = "Fountain"
        elseif MyLevel == 400 or MyLevel <= 449 or _G.Select_Mob_Farm == "Fishman Commando [Lv. 400]" then -- Fishman Commando
            Ms = "Fishman Commando [Lv. 400]"
            NameQuest = "FishmanQuest"
            LevelQuest = 2
            NameMon = "Fishman Commando"
            CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
            CFrameMon = CFrame.new(61885.5039, 18.4828243, 1504.17896, 0.577502489, 0, -0.816389024, -0, 1.00000012, -0, 0.816389024, 0, 0.577502489)
            SPAWNPOINT = "Fountain"
        elseif MyLevel == 450 or MyLevel <= 474 or _G.Select_Mob_Farm == "God's Guard [Lv. 450]" then -- God's Guards
            Ms = "God's Guard [Lv. 450]"
            NameQuest = "SkyExp1Quest"
            LevelQuest = 1
            NameMon = "God's Guards"
            CFrameQuest = CFrame.new(-4721.71436, 845.277161, -1954.20105, -0.999277651, -5.56969759e-09, 0.0380011722, -4.14751478e-09, 1, 3.75035256e-08, -0.0380011722, 3.73188307e-08, -0.999277651)
            CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.92542, -0.93441087, -6.77488776e-09, -0.356197298, 1.12145182e-08, 1, -4.84390199e-08, 0.356197298, -4.92565206e-08, -0.93441087)
            SPAWNPOINT = "Sky"
        elseif MyLevel == 475 or MyLevel <= 524 or _G.Select_Mob_Farm == "Shanda [Lv. 475]" then -- Shandas
            sky = false
            Ms = "Shanda [Lv. 475]"
            NameQuest = "SkyExp1Quest"
            LevelQuest = 2
            NameMon = "Shandas"
            CFrameQuest = CFrame.new(-7863.63672, 5545.49316, -379.826324, 0.362120807, -1.98046344e-08, -0.93213129, 4.05822291e-08, 1, -5.48095125e-09, 0.93213129, -3.58431969e-08, 0.362120807)
            CFrameMon = CFrame.new(-7685.12354, 5601.05127, -443.171509, 0.150056243, 1.79768236e-08, -0.988677442, 6.67798661e-09, 1, 1.91962481e-08, 0.988677442, -9.48289181e-09, 0.150056243)
            SPAWNPOINT = "Sky"
        elseif MyLevel == 525 or MyLevel <= 549 or _G.Select_Mob_Farm == "Royal Squad [Lv. 525]" then -- Royal Squad
            sky = true
            Ms = "Royal Squad [Lv. 525]"
            NameQuest = "SkyExp2Quest"
            LevelQuest = 1
            NameMon = "Royal Squad"
            CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
            CFrameMon = CFrame.new(-7685.02051, 5606.87842, -1442.729, 0.561947823, 7.69527464e-09, -0.827172697, -4.24974544e-09, 1, 6.41599973e-09, 0.827172697, -9.01838604e-11, 0.561947823)
            SPAWNPOINT = "Sky2"
        elseif MyLevel == 550 or MyLevel <= 624 or _G.Select_Mob_Farm == "Royal Soldier [Lv. 550]" then -- Royal Soldier
            Dis = 240
            sky = true
            Ms = "Royal Soldier [Lv. 550]"
            NameQuest = "SkyExp2Quest"
            LevelQuest = 2
            NameMon = "Royal Soldier"
            CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
            CFrameMon = CFrame.new(-7864.44775, 5661.94092, -1708.22351, 0.998389959, 2.28686137e-09, -0.0567218624, 1.99431383e-09, 1, 7.54200258e-08, 0.0567218624, -7.54117195e-08, 0.998389959)
            SPAWNPOINT = "Sky2"
        elseif MyLevel == 625 or MyLevel <= 649 or _G.Select_Mob_Farm == "Galley Pirate [Lv. 625]" then -- Galley Pirate
            Dis = 240
            sky = false
            Ms = "Galley Pirate [Lv. 625]"
            NameQuest = "FountainQuest"
            LevelQuest = 1
            NameMon = "Galley Pirate"
            CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
            CFrameMon = CFrame.new(5595.06982, 41.5013695, 3961.47095, -0.992138803, -2.11610267e-08, -0.125142589, -1.34249509e-08, 1, -6.26613996e-08, 0.125142589, -6.04887518e-08, -0.992138803)
            SPAWNPOINT = "Fountain"
        elseif MyLevel >= 650 or _G.Select_Mob_Farm == "Galley Captain [Lv. 650]" then -- Galley Captain
            Dis = 240
            Ms = "Galley Captain [Lv. 650]"
            NameQuest = "FountainQuest"
            LevelQuest = 2
            NameMon = "Galley Captain"
            CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
            CFrameMon = CFrame.new(5658.5752, 38.5361786, 4928.93506, -0.996873081, 2.12391046e-06, -0.0790185928, 2.16989656e-06, 1, -4.96097414e-07, 0.0790185928, -6.66008248e-07, -0.996873081)
            SPAWNPOINT = "Fountain"
        end
    elseif World2 then
        if MyLevel == 700 or MyLevel <= 724 or _G.Select_Mob_Farm == "Raider [Lv. 700]" then -- Raider [Lv. 700]
            Ms = "Raider [Lv. 700]"
            NameQuest = "Area1Quest"
            LevelQuest = 1
            NameMon = "Raider"
            CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
            CFrameMon = CFrame.new(-737.026123, 39.1748352, 2392.57959, 0.272128761, 0, -0.962260842, -0, 1, -0, 0.962260842, 0, 0.272128761)
            SPAWNPOINT = "DressTown"
        elseif MyLevel == 725 or MyLevel <= 774 or _G.Select_Mob_Farm == "Mercenary [Lv. 725]" then -- Mercenary [Lv. 725]
            Ms = "Mercenary [Lv. 725]"
            NameQuest = "Area1Quest"
            LevelQuest = 2
            NameMon = "Mercenary"
            CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
            CFrameMon = CFrame.new(-973.731995, 95.8733215, 1836.46936, 0.999135971, 2.02326991e-08, -0.0415605344, -1.90767793e-08, 1, 2.82094952e-08, 0.0415605344, -2.73922804e-08, 0.999135971)
            SPAWNPOINT = "DressTown"
        elseif MyLevel == 775 or MyLevel <= 799 or _G.Select_Mob_Farm == "Swan Pirate [Lv. 775]" then -- Swan Pirate [Lv. 775]
            Ms = "Swan Pirate [Lv. 775]"
            NameQuest = "Area2Quest"
            LevelQuest = 1
            NameMon = "Swan Pirate"
            CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
            CFrameMon = CFrame.new(970.369446, 142.653198, 1217.3667, 0.162079468, -4.85452638e-08, -0.986777723, 1.03357589e-08, 1, -4.74980872e-08, 0.986777723, -2.50063148e-09, 0.162079468)
            SPAWNPOINT = "DressTown"
        elseif MyLevel == 800 or MyLevel <= 874 or _G.Select_Mob_Farm == "Factory Staff [Lv. 800]" then -- Factory Staff [Lv. 800]
            Ms = "Factory Staff [Lv. 800]"
            NameQuest = "Area2Quest"
            LevelQuest = 2
            NameMon = "Factory Staff"
            CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
            CFrameMon = CFrame.new(296.786499, 72.9948196, -57.1298141, -0.876037002, -5.32364979e-08, 0.482243896, -3.87658332e-08, 1, 3.99718729e-08, -0.482243896, 1.63222538e-08, -0.876037002)
            SPAWNPOINT = "DressTown"
        elseif MyLevel == 875 or MyLevel <= 899 or _G.Select_Mob_Farm == "Marine Lieutenant [Lv. 875]" then -- Marine Lieutenant [Lv. 875]
            Ms = "Marine Lieutenant [Lv. 875]"
            NameQuest = "MarineQuest3"
            LevelQuest = 1
            NameMon = "Marine Lieutenant"
            CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
            CFrameMon = CFrame.new(-2913.26367, 73.0011826, -2971.64282, 0.910507619, 0, 0.413492233, 0, 1.00000012, 0, -0.413492233, 0, 0.910507619)
            SPAWNPOINT = "Greenb"
        elseif MyLevel == 900 or MyLevel <= 949 or _G.Select_Mob_Farm == "Marine Captain [Lv. 900]" then -- Marine Captain [Lv. 900]
            Ms = "Marine Captain [Lv. 900]"
            NameQuest = "MarineQuest3"
            LevelQuest = 2
            NameMon = "Marine Captain"
            CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
            CFrameMon = CFrame.new(-1868.67688, 73.0011826, -3321.66333, -0.971402287, 1.06502087e-08, 0.237439692, 3.68856199e-08, 1, 1.06050372e-07, -0.237439692, 1.11775684e-07, -0.971402287)
            SPAWNPOINT = "Greenb"
        elseif MyLevel == 950 or MyLevel <= 974 or _G.Select_Mob_Farm == "Zombie [Lv. 950]" then -- Zombie [Lv. 950]
            Ms = "Zombie [Lv. 950]"
            NameQuest = "ZombieQuest"
            LevelQuest = 1
            NameMon = "Zombie"
            CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
            CFrameMon = CFrame.new(-5634.83838, 126.067039, -697.665039, -0.992770672, 6.77618939e-09, 0.120025545, 1.65461245e-08, 1, 8.04023372e-08, -0.120025545, 8.18070234e-08, -0.992770672)
            SPAWNPOINT = "Graveyard"
        elseif MyLevel == 975 or MyLevel <= 999 or _G.Select_Mob_Farm == "Vampire [Lv. 975]" then -- Vampire [Lv. 975]
            Ms = "Vampire [Lv. 975]"
            NameQuest = "ZombieQuest"
            LevelQuest = 2
            NameMon = "Vampire"
            CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
            CFrameMon = CFrame.new(-6030.32031, 6.4377408, -1313.5564, -0.856965423, 3.9138893e-08, -0.515373945, -1.12178942e-08, 1, 9.45958547e-08, 0.515373945, 8.68467822e-08, -0.856965423)
            SPAWNPOINT = "Graveyard"
        elseif MyLevel == 1000 or MyLevel <= 1049 or _G.Select_Mob_Farm == "Snow Trooper [Lv. 1000]" then -- Snow Trooper [Lv. 1000] **
            Ms = "Snow Trooper [Lv. 1000]"
            NameQuest = "SnowMountainQuest"
            LevelQuest = 1
            NameMon = "Snow Trooper"
            CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
            CFrameMon = CFrame.new(535.893433, 401.457062, -5329.6958, -0.999524176, 0, 0.0308452044, 0, 1, -0, -0.0308452044, 0, -0.999524176)
            SPAWNPOINT = "Snowy"
        elseif MyLevel == 1050 or MyLevel <= 1099 or _G.Select_Mob_Farm == "Winter Warrior [Lv. 1050]" then -- Winter Warrior [Lv. 1050]
            Ms = "Winter Warrior [Lv. 1050]"
            NameQuest = "SnowMountainQuest"
            LevelQuest = 2
            NameMon = "Winter Warrior"
            CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
            CFrameMon = CFrame.new(1223.7417, 454.575226, -5170.02148, 0.473996818, 2.56845354e-08, 0.880526543, -5.62456428e-08, 1, 1.10811016e-09, -0.880526543, -5.00510211e-08, 0.473996818)
            SPAWNPOINT = "Snowy"
        elseif MyLevel == 1100 or MyLevel <= 1124 or _G.Select_Mob_Farm == "Lab Subordinate [Lv. 1100]" then -- Lab Subordinate [Lv. 1100]
            Ms = "Lab Subordinate [Lv. 1100]"
            NameQuest = "IceSideQuest"
            LevelQuest = 1
            NameMon = "Lab Subordinate"
            CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
            CFrameMon = CFrame.new(-5769.2041, 37.9288292, -4468.38721, -0.569419742, -2.49055017e-08, 0.822046936, -6.96206541e-08, 1, -1.79282633e-08, -0.822046936, -6.74401548e-08, -0.569419742)
            SPAWNPOINT = "CircleIslandIce"
        elseif MyLevel == 1125 or MyLevel <= 1174 or _G.Select_Mob_Farm == "Horned Warrior [Lv. 1125]" then -- Horned Warrior [Lv. 1125]
            Ms = "Horned Warrior [Lv. 1125]"
            NameQuest = "IceSideQuest"
            LevelQuest = 2
            NameMon = "Horned Warrior"
            CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
            CFrameMon = CFrame.new(-6400.85889, 24.7645149, -5818.63574, -0.964845479, 8.65926566e-08, -0.262817472, 3.98261392e-07, 1, -1.13260398e-06, 0.262817472, -1.19745812e-06, -0.964845479)
            SPAWNPOINT = "CircleIslandIce"
        elseif MyLevel == 1175 or MyLevel <= 1199 or _G.Select_Mob_Farm == "Magma Ninja [Lv. 1175]" then -- Magma Ninja [Lv. 1175]
            Ms = "Magma Ninja [Lv. 1175]"
            NameQuest = "FireSideQuest"
            LevelQuest = 1
            NameMon = "Magma Ninja"
            CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
            CFrameMon = CFrame.new(-5496.65576, 58.6890411, -5929.76855, -0.885073781, 0, -0.465450764, 0, 1.00000012, -0, 0.465450764, 0, -0.885073781)
            SPAWNPOINT = "CircleIslandFire"
        elseif MyLevel == 1200 or MyLevel <= 1249 or _G.Select_Mob_Farm == "Lava Pirate [Lv. 1200]" then -- Lava Pirate [Lv. 1200]
            Ms = "Lava Pirate [Lv. 1200]"
            NameQuest = "FireSideQuest"
            LevelQuest = 2
            NameMon = "Lava Pirate"
            CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
            CFrameMon = CFrame.new(-5169.71729, 34.1234779, -4669.73633, -0.196780294, 0, 0.98044765, 0, 1.00000012, -0, -0.98044765, 0, -0.196780294)
            SPAWNPOINT = "CircleIslandFire"
        elseif MyLevel == 1250 or MyLevel <= 1274 or _G.Select_Mob_Farm == "Ship Deckhand [Lv. 1250]" then -- Ship Deckhand [Lv. 1250]
            Ms = "Ship Deckhand [Lv. 1250]"
            NameQuest = "ShipQuest1"
            LevelQuest = 1
            NameMon = "Ship Deckhand"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
            CFrameMon = CFrame.new(1163.80872, 138.288452, 33058.4258, -0.998580813, 5.49076979e-08, -0.0532564968, 5.57436763e-08, 1, -1.42118655e-08, 0.0532564968, -1.71604082e-08, -0.998580813)
            SPAWNPOINT = "Ship"
        elseif MyLevel == 1275 or MyLevel <= 1299 or _G.Select_Mob_Farm == "Ship Engineer [Lv. 1275]"  then -- Ship Engineer [Lv. 1275]
            Ms = "Ship Engineer [Lv. 1275]"
            NameQuest = "ShipQuest1"
            LevelQuest = 2
            NameMon = "Ship Engineer"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
            CFrameMon = CFrame.new(916.666504, 44.0920448, 32917.207, -0.99746871, -4.85034697e-08, -0.0711069331, -4.8925461e-08, 1, 4.19294288e-09, 0.0711069331, 7.66126895e-09, -0.99746871)
            SPAWNPOINT = "Ship"
        elseif MyLevel == 1300 or MyLevel <= 1324 or _G.Select_Mob_Farm == "Ship Steward [Lv. 1300]" then -- Ship Steward [Lv. 1300]
            Ms = "Ship Steward [Lv. 1300]"
            NameQuest = "ShipQuest2"
            LevelQuest = 1
            NameMon = "Ship Steward"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
            CFrameMon = CFrame.new(918.743286, 129.591064, 33443.4609, -0.999792814, -1.7070947e-07, -0.020350717, -1.72559169e-07, 1, 8.91351277e-08, 0.020350717, 9.2628369e-08, -0.999792814)
            SPAWNPOINT = "Ship"
        elseif MyLevel == 1325 or MyLevel <= 1349 or _G.Select_Mob_Farm == "Ship Officer [Lv. 1325]" then -- Ship Officer [Lv. 1325]
            Ms = "Ship Officer [Lv. 1325]"
            NameQuest = "ShipQuest2"
            LevelQuest = 2
            NameMon = "Ship Officer"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
            CFrameMon = CFrame.new(786.051941, 181.474106, 33303.2969, 0.999285698, -5.32193063e-08, 0.0377905183, 5.68968588e-08, 1, -9.62386864e-08, -0.0377905183, 9.83201005e-08, 0.999285698)
            SPAWNPOINT = "Ship"
        elseif MyLevel == 1350 or MyLevel <= 1374 or _G.Select_Mob_Farm == "Arctic Warrior [Lv. 1350]" then -- Arctic Warrior [Lv. 1350]
            Ms = "Arctic Warrior [Lv. 1350]"
            NameQuest = "FrostQuest"
            LevelQuest = 1
            NameMon = "Arctic Warrior"
            CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
            CFrameMon = CFrame.new(5995.07471, 57.3188477, -6183.47314, 0.702747107, -1.53454167e-07, -0.711440146, -1.08168464e-07, 1, -3.22542007e-07, 0.711440146, 3.03620908e-07, 0.702747107)
            SPAWNPOINT = "IceCastle"
        elseif MyLevel == 1375 or MyLevel <= 1424 or _G.Select_Mob_Farm == "Snow Lurker [Lv. 1375]" then -- Snow Lurker [Lv. 1375]
            Ms = "Snow Lurker [Lv. 1375]"
            NameQuest = "FrostQuest"
            LevelQuest = 2
            NameMon = "Snow Lurker"
            CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
            CFrameMon = CFrame.new(5518.00684, 60.5559731, -6828.80518, -0.650781393, -3.64292951e-08, 0.759265184, -4.07668654e-09, 1, 4.44854642e-08, -0.759265184, 2.58550248e-08, -0.650781393)
            SPAWNPOINT = "IceCastle"
        elseif MyLevel == 1425 or MyLevel <= 1449 or _G.Select_Mob_Farm == "Sea Soldier [Lv. 1425]" then -- Sea Soldier [Lv. 1425]
            Ms = "Sea Soldier [Lv. 1425]"
            NameQuest = "ForgottenQuest"
            LevelQuest = 1
            NameMon = "Sea Soldier"
            CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
            CFrameMon = CFrame.new(-3029.78467, 66.944252, -9777.38184, -0.998552859, 1.09555076e-08, 0.0537791774, 7.79564235e-09, 1, -5.89660658e-08, -0.0537791774, -5.84614881e-08, -0.998552859)
            SPAWNPOINT = "ForgottenIsland"
        elseif MyLevel >= 1450 or _G.Select_Mob_Farm == "Water Fighter [Lv. 1450]" then -- Water Fighter [Lv. 1450]
            Ms = "Water Fighter [Lv. 1450]"
            NameQuest = "ForgottenQuest"
            LevelQuest = 2
            NameMon = "Water Fighter"
            CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
            CFrameMon = CFrame.new(-3262.00098, 298.699615, -10553.6943, -0.233570755, -4.57538185e-08, 0.972339869, -5.80986068e-08, 1, 3.30992194e-08, -0.972339869, -4.87605725e-08, -0.233570755)
            SPAWNPOINT = "ForgottenIsland"
        end
    elseif World3 then
        if MyLevel == 1500 or MyLevel <= 1524 or _G.Select_Mob_Farm == "Pirate Millionaire [Lv. 1500]" then
            Ms = "Pirate Millionaire [Lv. 1500]"
            NameQuest = "PiratePortQuest"
            LevelQuest = 1
            NameMon = "Pirate Millionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
            SPAWNPOINT = "Default"
        elseif MyLevel == 1525 or MyLevel <= 1574 or _G.Select_Mob_Farm == "Pistol Billionaire [Lv. 1525]" then
            Ms = "Pistol Billionaire [Lv. 1525]"
            NameQuest = "PiratePortQuest"
            LevelQuest = 2
            NameMon = "Pistol Billionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
            SPAWNPOINT = "Default"
        elseif MyLevel == 1575 or MyLevel <= 1599 or _G.Select_Mob_Farm == "Dragon Crew Warrior [Lv. 1575]" then
            Ms = "Dragon Crew Warrior [Lv. 1575]"
            NameQuest = "AmazonQuest"
            LevelQuest = 1
            NameMon = "Dragon Crew Warrior"
            CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
            CFrameMon = CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516)
            SPAWNPOINT = "Hydra3"
        elseif MyLevel == 1600 or MyLevel <= 1624 or _G.Select_Mob_Farm == "Dragon Crew Archer [Lv. 1600]" then
            Ms = "Dragon Crew Archer [Lv. 1600]"
            NameQuest = "AmazonQuest"
            LevelQuest = 2
            NameMon = "Dragon Crew Archer"
            CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
            CFrameMon = CFrame.new(6488.9155273438, 383.38375854492, -110.66246032715)
            SPAWNPOINT = "Hydra3"
        elseif MyLevel == 1625 or MyLevel <= 1649 or _G.Select_Mob_Farm == "Female Islander [Lv. 1625]" then
            Ms = "Female Islander [Lv. 1625]"
            NameQuest = "AmazonQuest2"
            LevelQuest = 1
            NameMon = "Female Islander"
            CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(4770.4990234375, 758.95520019531, 1069.8680419922)
            SPAWNPOINT = "Hydra1"
        elseif MyLevel == 1650 or MyLevel <= 1699 or _G.Select_Mob_Farm == "Giant Islander [Lv. 1650]" then
            Ms = "Giant Islander [Lv. 1650]"
            NameQuest = "AmazonQuest2"
            LevelQuest = 2
            NameMon = "Giant Islander"
            CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789)
            SPAWNPOINT = "Hydra1"
        elseif MyLevel == 1700 or MyLevel <= 1724 or _G.Select_Mob_Farm == "Marine Commodore [Lv. 1700]" then
            Ms = "Marine Commodore [Lv. 1700]"
            NameQuest = "MarineTreeIsland"
            LevelQuest = 1
            NameMon = "Marine Commodore"
            CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
            CFrameMon = CFrame.new(2490.0844726563, 190.4232635498, -7160.0502929688)
            SPAWNPOINT = "GreatTree"
        elseif MyLevel == 1725 or MyLevel <= 1774 or _G.Select_Mob_Farm == "Marine Rear Admiral [Lv. 1725]" then
            Ms = "Marine Rear Admiral [Lv. 1725]"
            NameQuest = "MarineTreeIsland"
            LevelQuest = 2
            NameMon = "Marine Rear Admiral"
            CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
            CFrameMon = CFrame.new(3951.3903808594, 229.11549377441, -6912.81640625)
            SPAWNPOINT = "GreatTree"
        elseif MyLevel == 1775 or MyLevel <= 1799 or _G.Select_Mob_Farm == "Fishman Raider [Lv. 1775]" then
            Ms = "Fishman Raider [Lv. 1775]"
            NameQuest = "DeepForestIsland3"
            LevelQuest = 1
            NameMon = "Fishman Raider"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125)
            SPAWNPOINT = "PineappleTown"
        elseif MyLevel == 1800 or MyLevel <= 1824 or _G.Select_Mob_Farm == "Fishman Captain [Lv. 1800]" then
            Ms = "Fishman Captain [Lv. 1800]"
            NameQuest = "DeepForestIsland3"
            LevelQuest = 2
            NameMon = "Fishman Captain"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-11194.541992188, 442.02795410156, -8608.806640625)
            SPAWNPOINT = "PineappleTown"
        elseif MyLevel == 1825 or MyLevel <= 1849 or _G.Select_Mob_Farm == "Forest Pirate [Lv. 1825]" then
            Ms = "Forest Pirate [Lv. 1825]"
            NameQuest = "DeepForestIsland"
            LevelQuest = 1
            NameMon = "Forest Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
            CFrameMon = CFrame.new(-13225.809570313, 428.19387817383, -7753.1245117188)
            SPAWNPOINT = "BigMansion"
        elseif MyLevel == 1850 or MyLevel <= 1899 or _G.Select_Mob_Farm == "Mythological Pirate [Lv. 1850]" then
            Ms = "Mythological Pirate [Lv. 1850]"
            NameQuest = "DeepForestIsland"
            LevelQuest = 2
            NameMon = "Mythological Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
            CFrameMon = CFrame.new(-13869.172851563, 564.95251464844, -7084.4135742188)
            SPAWNPOINT = "BigMansion"
        elseif MyLevel == 1900 or MyLevel <= 1924 or _G.Select_Mob_Farm == "Jungle Pirate [Lv. 1900]" then
            Ms = "Jungle Pirate [Lv. 1900]"
            NameQuest = "DeepForestIsland2"
            LevelQuest = 1
            NameMon = "Jungle Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-11982.221679688, 376.32522583008, -10451.415039063)
            SPAWNPOINT = "PineappleTown"
        elseif MyLevel == 1925 or MyLevel <= 1974 or _G.Select_Mob_Farm == "Musketeer Pirate [Lv. 1925]" then
            Ms = "Musketeer Pirate [Lv. 1925]"
            NameQuest = "DeepForestIsland2"
            LevelQuest = 2
            NameMon = "Musketeer Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-13282.3046875, 496.23684692383, -9565.150390625)
            SPAWNPOINT = "PineappleTown"
        elseif MyLevel == 1975 or MyLevel <= 1999 or _G.Select_Mob_Farm == "Reborn Skeleton [Lv. 1975]" then
            Ms = "Reborn Skeleton [Lv. 1975]"
            NameQuest = "HauntedQuest1"
            LevelQuest = 1
            NameMon = "Reborn Skeleton"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-8761.3154296875, 164.85829162598, 6161.1567382813)
            SPAWNPOINT = "HauntedCastle"
        elseif MyLevel == 2000 or MyLevel <= 2024 or _G.Select_Mob_Farm == "Living Zombie [Lv. 2000]" then
            Ms = "Living Zombie [Lv. 2000]"
            NameQuest = "HauntedQuest1"
            LevelQuest = 2
            NameMon = "Living Zombie"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-10093.930664063, 237.38233947754, 6180.5654296875)
            SPAWNPOINT = "HauntedCastle"
        elseif MyLevel == 2025 or MyLevel <= 2049 or _G.Select_Mob_Farm == "Demonic Soul [Lv. 2025]" then
            Ms = "Demonic Soul [Lv. 2025]"
            NameQuest = "HauntedQuest2"
            LevelQuest = 1
            NameMon = "Demonic Soul"
            CFrameQuest = CFrame.new(-9514.78027, 171.162918, 6078.82373, 0.301918149, 7.4535027e-09, 0.953333855, -3.22802141e-09, 1, -6.79604995e-09, -0.953333855, -1.02553133e-09, 0.301918149)
            CFrameMon = CFrame.new(-9466.72949, 171.162918, 6132.01514)
            SPAWNPOINT = "HauntedCastle"
        elseif MyLevel == 2050 or MyLevel <= 2074 or _G.Select_Mob_Farm == "Posessed Mummy [Lv. 2050]" then
            Ms = "Posessed Mummy [Lv. 2050]" 
            NameQuest = "HauntedQuest2"
            LevelQuest = 2
            NameMon = "Posessed Mummy"
            CFrameQuest = CFrame.new(-9514.78027, 171.162918, 6078.82373, 0.301918149, 7.4535027e-09, 0.953333855, -3.22802141e-09, 1, -6.79604995e-09, -0.953333855, -1.02553133e-09, 0.301918149)
            CFrameMon = CFrame.new(-9589.93848, 4.85058546, 6190.27197)
            SPAWNPOINT = "HauntedCastle"
        elseif MyLevel == 2075 or MyLevel <= 2099 or _G.Select_Mob_Farm == "Peanut Scout [Lv. 2075]" then
            Ms = "Peanut Scout [Lv. 2075]"
            NameQuest = "NutsIslandQuest"
            LevelQuest = 1
            NameMon = "Peanut Scout"
            CFrameQuest = CFrame.new(-2103.9375, 38.139019012451, -10192.702148438)
            CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
            SPAWNPOINT = "Peanut"
        elseif MyLevel == 2100 or MyLevel <= 2124 or _G.Select_Mob_Farm == "Peanut President [Lv. 2100]" then
            Ms = "Peanut President [Lv. 2100]"
            NameQuest = "NutsIslandQuest"
            LevelQuest = 2
            NameMon = "Peanut President"
            CFrameQuest = CFrame.new(-2103.9375, 38.139019012451, -10192.702148438)
            CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
            SPAWNPOINT = "Peanut"
        elseif MyLevel == 2125 or MyLevel <= 2149 or _G.Select_Mob_Farm == "Ice Cream Chef [Lv. 2125]" then
            Ms = "Ice Cream Chef [Lv. 2125]"
            NameQuest = "IceCreamIslandQuest"
            LevelQuest = 1
            NameMon = "Ice Cream Chef"
            CFrameQuest = CFrame.new(-819.84533691406, 65.845329284668, -10965.487304688)
            CFrameMon = CFrame.new(-890.55895996094, 186.34135437012, -11127.306640625)
            SPAWNPOINT = "IceCream"
        elseif MyLevel == 2150 or MyLevel <= 2199 or _G.Select_Mob_Farm == "Ice Cream Commander [Lv. 2150]" then
            Ms = "Ice Cream Commander [Lv. 2150]"
            NameQuest = "IceCreamIslandQuest"
            LevelQuest = 2
            NameMon = "Ice Cream Commander"
            CFrameQuest = CFrame.new(-819.84533691406, 65.845329284668, -10965.487304688)
            CFrameMon = CFrame.new(-890.55895996094, 186.34135437012, -11127.306640625)
            SPAWNPOINT = "IceCream"
        elseif MyLevel == 2200 or MyLevel <= 2224 or _G.Select_Mob_Farm == "Cookie Crafter [Lv. 2200]" then
            Ms = "Cookie Crafter [Lv. 2200]"
            NameQuest = "CakeQuest1"
            LevelQuest = 1
            NameMon = "Cookie Crafter"
            CFrameQuest = CFrame.new(-2021.5509033203125, 37.798221588134766, -12028.103515625)
            CFrameMon = CFrame.new(-2273.00244140625, 90.22590637207031, -12151.62109375)
            SPAWNPOINT = "Loaf"
        elseif MyLevel == 2225 or MyLevel <= 2249 or _G.Select_Mob_Farm == "Cake Guard [Lv. 2225]" then
            Ms = "Cake Guard [Lv. 2225]"
            NameQuest = "CakeQuest1"
            LevelQuest = 2
            NameMon = "Cake Guard"
            CFrameQuest = CFrame.new(-2021.5509033203125, 37.798221588134766, -12028.103515625)
            CFrameMon = CFrame.new(-1442.373046875, 158.14111328125, -12277.37109375)
            SPAWNPOINT = "Loaf"
        elseif MyLevel == 2250 or MyLevel <= 2274 or _G.Select_Mob_Farm == "Baking Staff [Lv. 2250]" then
            Ms = "Baking Staff [Lv. 2250]"
            NameQuest = "CakeQuest2"
            LevelQuest = 1
            NameMon = "Baking Staff"
            CFrameQuest = CFrame.new(-1927.9107666015625, 37.79813003540039, -12843.78515625)
            CFrameMon = CFrame.new(-1837.2803955078125, 129.0594482421875, -12934.5498046875)
            SPAWNPOINT = "Loaf"
        elseif MyLevel == 2275 or MyLevel <= 2299 or _G.Select_Mob_Farm == "Head Baker [Lv. 2275]" then
            Ms = "Head Baker [Lv. 2275]"
            NameQuest = "CakeQuest2"
            LevelQuest = 2
            NameMon = "Head Baker"
            CFrameQuest = CFrame.new(-1927.9107666015625, 37.79813003540039, -12843.78515625)
            CFrameMon = CFrame.new(-2203.302490234375, 109.90937042236328, -12788.7333984375)
            SPAWNPOINT = "Loaf"
        elseif MyLevel == 2300 or MyLevel <= 2324 or _G.Select_Mob_Farm == "Cocoa Warrior [Lv. 2300]" then
            Ms = "Cocoa Warrior [Lv. 2300]"
            NameQuest = "ChocQuest1"
            LevelQuest = 1
            NameMon = "Cocoa Warrior"
            CFrameQuest = CFrame.new(231.13571166992188, 24.734268188476562, -12195.1162109375)
            CFrameMon = CFrame.new(231.13571166992188, 24.734268188476562, -12195.1162109375)
            SPAWNPOINT = "Chocolate"
        elseif MyLevel == 2325 or MyLevel <= 2349 or _G.Select_Mob_Farm == "Chocolate Bar Battler [Lv. 2325]" then
            Ms = "Chocolate Bar Battler [Lv. 2325]"
            NameQuest = "ChocQuest1"
            LevelQuest = 2
            NameMon = "Chocolate Bar Battler"
            CFrameQuest = CFrame.new(231.13571166992188, 24.734268188476562, -12195.1162109375)
            CFrameMon = CFrame.new(231.13571166992188, 24.734268188476562, -12195.1162109375)
            SPAWNPOINT = "Chocolate"
        elseif MyLevel == 2350 or MyLevel <= 2374 or _G.Select_Mob_Farm == "Sweet Thief [Lv. 2350]" then
            Ms = "Sweet Thief [Lv. 2350]"
            NameQuest = "ChocQuest2"
            LevelQuest = 1
            NameMon = "Sweet Thief"
            CFrameQuest = CFrame.new(147.52256774902344, 24.793832778930664, -12775.3583984375)
            CFrameMon = CFrame.new(147.52256774902344, 24.793832778930664, -12775.3583984375)
            SPAWNPOINT = "Chocolate"
        elseif MyLevel == 2375 or MyLevel <= 2399 or _G.Select_Mob_Farm == "Candy Rebel [Lv. 2375]" then
            Ms = "Candy Rebel [Lv. 2375]"
            NameQuest = "ChocQuest2"
            LevelQuest = 2
            NameMon = "Candy Rebel"
            CFrameQuest = CFrame.new(147.52256774902344, 24.793832778930664, -12775.3583984375)
            CFrameMon = CFrame.new(147.52256774902344, 24.793832778930664, -12775.3583984375)
            SPAWNPOINT = "Chocolate"
        elseif MyLevel == 2400 or MyLevel <= 2424 or _G.Select_Mob_Farm == "Candy Pirate [Lv. 2400]" then
            Ms = "Candy Pirate [Lv. 2400]"
            NameQuest = "CandyQuest1"
            LevelQuest = 1
            NameMon = "Candy Pirate"
            CFrameQuest = CFrame.new(-1147.53, 16.133, -14445.2)
            CFrameMon = CFrame.new(-1468.86, 119.35, -14574.7)
            SPAWNPOINT = "Chocolate"
        elseif MyLevel >= 2425 or _G.Select_Mob_Farm == "Snow Demon [Lv. 2425]" then
            Ms = "Snow Demon [Lv. 2425]"
            NameQuest = "CandyQuest1"
            LevelQuest = 2
            NameMon = "Snow Demon"
            CFrameQuest = CFrame.new(-1147.53, 16.133, -14445.2)
            CFrameMon = CFrame.new(-947.417, 58.5309, -14537.2)
            SPAWNPOINT = "CandyCane"
        end
    end
end

if World1 then
	MonList = {"Bandit [Lv. 5]","Monkey [Lv. 14]","Gorilla [Lv. 20]","Pirate [Lv. 35]","Brute [Lv. 45]","Desert Bandit [Lv. 60]","Desert Officer [Lv. 70]","Snow Bandit [Lv. 90]","Snowman [Lv. 100]","Chief Petty Officer [Lv. 120]","Sky Bandit [Lv. 150]","Dark Master [Lv. 175]","Toga Warrior [Lv. 225]","Gladiator [Lv. 275]","Military Soldier [Lv. 300]","Military Spy [Lv. 330]","Fishman Warrior [Lv. 375]","Fishman Commando [Lv. 400]","God's Guard [Lv. 450]","Shanda [Lv. 475]","Royal Squad [Lv. 525]","Royal Soldier [Lv. 550]","Galley Pirate [Lv. 625]","Galley Captain [Lv. 650]"}
elseif World2 then
	MonList = {"Raider [Lv. 700]","Mercenary [Lv. 725]","Swan Pirate [Lv. 775]","Factory Staff [Lv. 800]","Marine Lieutenant [Lv. 875]","Marine Captain [Lv. 900]","Zombie [Lv. 950]","Vampire [Lv. 975]","Snow Trooper [Lv. 1000]","Winter Warrior [Lv. 1050]","Lab Subordinate [Lv. 1100]","Horned Warrior [Lv. 1125]","Magma Ninja [Lv. 1175]","Lava Pirate [Lv. 1200]","Ship Deckhand [Lv. 1250]","Ship Engineer [Lv. 1275]","Ship Steward [Lv. 1300]","Ship Officer [Lv. 1325]","Arctic Warrior [Lv. 1350]","Snow Lurker [Lv. 1375]","Sea Soldier [Lv. 1425]","Water Fighter [Lv. 1450]"}
elseif World3 then
	MonList = {"Pirate Millionaire [Lv. 1500]","Dragon Crew Warrior [Lv. 1575]","Dragon Crew Archer [Lv. 1600]","Female Islander [Lv. 1625]","Giant Islander [Lv. 1650]","Marine Commodore [Lv. 1700]","Marine Rear Admiral [Lv. 1725]","Fishman Raider [Lv. 1775]","Fishman Captain [Lv. 1800]","Forest Pirate [Lv. 1825]","Mythological Pirate [Lv. 1850]","Jungle Pirate [Lv. 1900]","Musketeer Pirate [Lv. 1925]","Reborn Skeleton [Lv. 1975]","Living Zombie [Lv. 2000]","Demonic Soul [Lv. 2025]","Posessed Mummy [Lv. 2050]","Peanut Scout [Lv. 2075]","Peanut President [Lv. 2100]","Ice Cream Chef [Lv. 2125]","Ice Cream Commander [Lv. 2150]","Cookie Crafter [Lv. 2200]","Cake Guard [Lv. 2225]","Baking Staff [Lv. 2250]","Head Baker [Lv. 2275]","Cocoa Warrior [Lv. 2300]","Chocolate Bar Battler [Lv. 2325]","Sweet Thief [Lv. 2350]","Candy Rebel [Lv. 2375]"}
end

function CheckBossQuest()
    if _G.Select_Boss == "Saber Expert [Lv. 200] [Boss]" then
        MsBoss = "Saber Expert [Lv. 200] [Boss]"
        NameBoss = "Saber Expert"
        CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
    elseif _G.Select_Boss == "The Saw [Lv. 100] [Boss]" then
        MsBoss = "The Saw [Lv. 100] [Boss]"
        NameBoss = "The Saw"
        CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.88365773e-08, 0.956968188, 6.98413629e-08, 1, -5.07531119e-08, -0.956968188, 5.21077759e-08, -0.290192783)
    elseif _G.Select_Boss == "Greybeard [Lv. 750] [Raid Boss]" then
        MsBoss = "Greybeard [Lv. 750] [Raid Boss]"
        NameBoss = "Greybeard"
        CFrameBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.03394289e-08, 0.901083171, -3.0443168e-08, 1, -3.17633075e-09, -0.901083171, -2.88092288e-08, -0.433646321)
    elseif _G.Select_Boss == "The Gorilla King [Lv. 25] [Boss]" then
        MsBoss = "The Gorilla King [Lv. 25] [Boss]"
        NameBoss = "The Gorilla King"
        NameQuestBoss = "JungleQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
        CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
    elseif _G.Select_Boss == "Bobby [Lv. 55] [Boss]" then
        MsBoss = "Bobby [Lv. 55] [Boss]"
        NameBoss = "Bobby"
        NameQuestBoss = "BuggyQuest1"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
        CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
    elseif _G.Select_Boss == "Yeti [Lv. 110] [Boss]" then
        MsBoss = "Yeti [Lv. 110] [Boss]"
        NameBoss = "Yeti"
        NameQuestBoss = "SnowQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
        CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
    elseif _G.Select_Boss == "Mob Leader [Lv. 120] [Boss]" then
        MsBoss = "Mob Leader [Lv. 120] [Boss]"
        NameBoss = "Mob Leader"
        CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.92824)
    elseif _G.Select_Boss == "Vice Admiral [Lv. 130] [Boss]" then
        MsBoss = "Vice Admiral [Lv. 130] [Boss]"
        NameBoss = "Vice Admiral"
        NameQuestBoss = "MarineQuest2"
        LevelQuestBoss = 2
        CFrameQuestBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
        CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
    elseif _G.Select_Boss == "Warden [Lv. 175] [Boss]" then
        MsBoss = "Warden [Lv. 175] [Boss]"
        NameBoss = "Warden"
        NameQuestBoss = "ImpelQuest"
        LevelQuestBoss = 1
        CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
        CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
    elseif _G.Select_Boss == "Chief Warden [Lv. 200] [Boss]" then
        MsBoss = "Chief Warden [Lv. 200] [Boss]"
        NameBoss = "Chief Warden"
        NameQuestBoss = "ImpelQuest"
        LevelQuestBoss = 2
        CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
        CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
    elseif _G.Select_Boss == "Swan [Lv. 225] [Boss]" then
        MsBoss = "Swan [Lv. 225] [Boss]"
        NameBoss = "Swan"
        NameQuestBoss = "ImpelQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
        CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
    elseif _G.Select_Boss == "Magma Admiral [Lv. 350] [Boss]" then
        MsBoss = "Magma Admiral [Lv. 350] [Boss]"
        NameBoss = "Magma Admiral"
        NameQuestBoss = "MagmaQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
        CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
    elseif _G.Select_Boss == "Fishman Lord [Lv. 425] [Boss]" then
        MsBoss = "Fishman Lord [Lv. 425] [Boss]"
        NameBoss = "Fishman Lord"
        NameQuestBoss = "FishmanQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
        CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
    elseif _G.Select_Boss == "Wysper [Lv. 500] [Boss]" then
        MsBoss = "Wysper [Lv. 500] [Boss]"
        NameBoss = "Wysper"
        NameQuestBoss = "SkyExp1Quest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
        CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
    elseif _G.Select_Boss == "Thunder God [Lv. 575] [Boss]" then
        MsBoss = "Thunder God [Lv. 575] [Boss]"
        NameBoss = "Thunder God"
        NameQuestBoss = "SkyExp2Quest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
        CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
    elseif _G.Select_Boss == "Cyborg [Lv. 675] [Boss]" then
        MsBoss = "Cyborg [Lv. 675] [Boss]"
        NameBoss = "Cyborg"
        NameQuestBoss = "FountainQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
        CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
    -- New World
    elseif _G.Select_Boss == "Diamond [Lv. 750] [Boss]" then
        MsBoss = "Diamond [Lv. 750] [Boss]"
        NameBoss = "Diamond"
        NameQuestBoss = "Area1Quest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
        CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
    elseif _G.Select_Boss == "Jeremy [Lv. 850] [Boss]" then
        MsBoss = "Jeremy [Lv. 850] [Boss]"
        NameBoss = "Jeremy"
        NameQuestBoss = "Area2Quest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
        CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
    elseif _G.Select_Boss == "Fajita [Lv. 925] [Boss]" then
        MsBoss = "Fajita [Lv. 925] [Boss]"
        NameBoss = "Fajita"
        NameQuestBoss = "MarineQuest3"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
        CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
    elseif _G.Select_Boss == "Don Swan [Lv. 1000] [Boss]" then
        MsBoss = "Don Swan [Lv. 1000] [Boss]"
        NameBoss = "Don Swan"
        CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
    elseif _G.Select_Boss == "Smoke Admiral [Lv. 1150] [Boss]" then
        MsBoss = "Smoke Admiral [Lv. 1150] [Boss]"
        NameBoss = "Smoke Admiral"
        NameQuestBoss = "IceSideQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
        CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
    elseif _G.Select_Boss == "Cursed Captain [Lv. 1325] [Raid Boss]" then
        MsBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
        NameBoss = "Cursed Captain"
        CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
    elseif _G.Select_Boss == "Darkbeard [Lv. 1000] [Raid Boss]" then
        MsBoss = "Darkbeard [Lv. 1000] [Raid Boss]"
        NameBoss = "Darkbeard"
        CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
    elseif _G.Select_Boss == "Order [Lv. 1250] [Raid Boss]" then
        MsBoss = "Order [Lv. 1250] [Raid Boss]"
        NameBoss = "Order"
        CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-08, 0.924687505, 5.85604774e-08, 1, -5.60738549e-08, -0.924687505, 3.28013137e-08, -0.380726993)
    elseif _G.Select_Boss == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
        MsBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
        NameBoss = "Awakened Ice Admiral"
        NameQuestBoss = "FrostQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556)
        CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
    elseif _G.Select_Boss == "Tide Keeper [Lv. 1475] [Boss]" then
        MsBoss = "Tide Keeper [Lv. 1475] [Boss]"
         NameBoss = "Tide Keeper"
        NameQuestBoss = "ForgottenQuest"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961)
        CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
    -- Thire World
    elseif _G.Select_Boss == "Stone [Lv. 1550] [Boss]" then
        MsBoss = "Stone [Lv. 1550] [Boss]"
        NameBoss = "Stone"
        NameQuestBoss = "PiratePortQuest"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-290, 44, 5577)
        CFrameBoss = CFrame.new(-1085, 40, 6779)
    elseif _G.Select_Boss == "Island Empress [Lv. 1675] [Boss]" then
        MsBoss = "Island Empress [Lv. 1675] [Boss]"
         NameBoss = "Island Empress"
        NameQuestBoss = "AmazonQuest2"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(5443, 602, 752)
        CFrameBoss = CFrame.new(5659, 602, 244)
    elseif _G.Select_Boss == "Kilo Admiral [Lv. 1750] [Boss]" then
        MsBoss = "Kilo Admiral [Lv. 1750] [Boss]"
        NameBoss = "Kilo Admiral"
        NameQuestBoss = "MarineTreeIsland"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(2178, 29, -6737)
        CFrameBoss =CFrame.new(2846, 433, -7100)
    elseif _G.Select_Boss == "Captain Elephant [Lv. 1875] [Boss]" then
        MsBoss = "Captain Elephant [Lv. 1875] [Boss]"
        NameBoss = "Captain Elephant"
        NameQuestBoss = "DeepForestIsland"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-13232, 333, -7631)
        CFrameBoss = CFrame.new(-13221, 325, -8405)
    elseif _G.Select_Boss == "Beautiful Pirate [Lv. 1950] [Boss]" then
        MsBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
        NameBoss = "Beautiful Pirate"
        NameQuestBoss = "DeepForestIsland2"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-12686, 391, -9902)
        CFrameBoss = CFrame.new(5182, 23, -20)
    elseif _G.Select_Boss == "Cake Queen [Lv. 2175] [Boss]" then
        MsBoss = "Cake Queen [Lv. 2175] [Boss]"
        NameBoss = "Cake Queen"
        NameQuestBoss = "IceCreamIslandQuest"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-716, 382, -11010)
        CFrameBoss = CFrame.new(-821, 66, -10965)
    elseif _G.Select_Boss == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
        MsBoss = "rip_indra True Form [Lv. 5000] [Raid Boss]"
        NameBoss = "rip_indra True Form"
        CFrameBoss = CFrame.new(-5359, 424, -2735)
    elseif _G.Select_Boss == "Longma [Lv. 2000] [Boss]" then
        MsBoss = "Longma [Lv. 2000] [Boss]"
        NameBoss = "Longma"
        CFrameBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)
    elseif _G.Select_Boss == "Soul Reaper [Lv. 2100] [Raid Boss]" then
        MsBoss = "Soul Reaper [Lv. 2100] [Raid Boss]"
        NameBoss = "Soul Reaper"
        CFrameBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)
    end
end

function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end
 
function EquipWeapon(ToolSe)
    if not _G.NotAutoEquip then
        if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
            Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
            wait(.1)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
        end
    end
end

getgenv().ToTarget = function(p)
    task.spawn(function()
        pcall(function()
            if game:GetService("Players").LocalPlayer:DistanceFromCharacter(p.Position) <= 250 then 
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = p
            elseif not game.Players.LocalPlayer.Character:FindFirstChild("Root")then 
                local K = Instance.new("Part",game.Players.LocalPlayer.Character)
                K.Size = Vector3.new(1,0.5,1)
                K.Name = "Root"
                K.Anchored = true
                K.Transparency = 1
                K.CanCollide = false
                K.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,20,0)
            end
            local U = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude
            local z = game:service("TweenService")
            local B = TweenInfo.new((p.Position-game.Players.LocalPlayer.Character.Root.Position).Magnitude/300,Enum.EasingStyle.Linear)
            local S,g = pcall(function()
            local q = z:Create(game.Players.LocalPlayer.Character.Root,B,{CFrame = p})
            q:Play()
        end)
        if not S then 
            return g
        end
        game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            if S and game.Players.LocalPlayer.Character:FindFirstChild("Root") then 
                pcall(function()
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude >= 20 then 
                        spawn(function()
                            pcall(function()
                                if (game.Players.LocalPlayer.Character.Root.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150 then 
                                    game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                                else 
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Players.LocalPlayer.Character.Root.CFrame
                                end
                            end)
                        end)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude >= 10 and(game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude < 20 then 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude < 10 then 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                    end
                end)
            end
        end)
    end)
end

function StopTween(target)
    if not target then
        _G.StopTween = true
        wait()
        getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
        end
        _G.StopTween = false
        _G.Clip = false
    end
end

function UseCode(Text)
    game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Text)
end

function toTarget(targetPos, targetCFrame)
    local tweenfunc = {}
    local tween_s = game:service"TweenService"
    local info = TweenInfo.new((targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude/300, Enum.EasingStyle.Linear)
    local tween = tween_s:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = targetCFrame * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(0))})
    tween:Play()

    function tweenfunc:Stop()
        tween:Cancel()
        return tween
    end

    if not tween then return tween end
    return tweenfunc
end

function Hop()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    function TPReturner()
        local Site;
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i,v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _,Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile = pcall(function()
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(function()
                        wait()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end)
                    wait(4)
                end
            end
        end
    end
    function Teleport() 
        while wait() do
            pcall(function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end)
        end
    end
    Teleport()
end

function SkyJumpNoCoolDown()
    if _G.Infinit_SkyJump then
        for i,v in next, getgc() do
            if game.Players.LocalPlayer.Character.Geppo then
                if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Geppo then
                    for i2,v2 in next, getupvalues(v) do
                        if tostring(v2) == "0" then
                            repeat wait(.1)
                                setupvalue(v,i2,0)
                            until not _G.Infinit_SkyJump
                        end
                    end
                end
            end
        end
    end
end

function InfAbility()
    if _G.Infinit_Ability then
        if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
            local inf = Instance.new("ParticleEmitter")
            inf.Acceleration = Vector3.new(0,0,0)
            inf.Archivable = true
            inf.Drag = 20
            inf.EmissionDirection = Enum.NormalId.Top
            inf.Enabled = true
            inf.Lifetime = NumberRange.new(0.2,0.2)
            inf.LightInfluence = 0
            inf.LockedToPart = true
            inf.Name = "Agility"
            inf.Rate = 500
            local numberKeypoints2 = {
                NumberSequenceKeypoint.new(0, 0); 
                NumberSequenceKeypoint.new(1, 4); 
            }

            inf.Size = NumberSequence.new(numberKeypoints2)
            inf.RotSpeed = NumberRange.new(999, 9999)
            inf.Rotation = NumberRange.new(0, 0)
            inf.Speed = NumberRange.new(30, 30)
            inf.SpreadAngle = Vector2.new(360,360)
            inf.Texture = "rbxassetid://243098098"
            inf.VelocityInheritance = 0
            inf.ZOffset = 2
            inf.Transparency = NumberSequence.new(0)
            inf.Color = ColorSequence.new(Color3.fromRGB(0, 255, 255),Color3.fromRGB(0, 255, 255))
            inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        end
    else
        if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
            game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
        end
    end
end

_G.Dodge_No_CoolDown = false
function DodgeNoCoolDown()
    if _G.Dodge_No_CoolDown then
        for i,v in next, getgc() do
            if game.Players.LocalPlayer.Character.Dodge then
                if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Dodge then
                    for i2,v2 in next, getupvalues(v) do
                        if tostring(v2) == "0.4" then
                            repeat wait(.1)
                                setupvalue(v,i2,0)
                            until not _G.Dodge_No_CoolDown
                        end
                    end
                end
            end
        end
    end
end

local LocalPlayer = game:GetService'Players'.LocalPlayer
local originalstam = LocalPlayer.Character.Energy.Value
function InfinitEnergy()
    game:GetService'Players'.LocalPlayer.Character.Energy.Changed:connect(function()
        if _G.Infinit_Energy then
            LocalPlayer.Character.Energy.Value = originalstam
        end 
    end)
end

function SoruNoCoolDown()
    for i, v in pairs(getgc()) do
        if type(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character:WaitForChild("Soru") then
            for i2,v2 in pairs(debug.getupvalues(v)) do
                if type(v2) == 'table' then
                    if v2.LastUse then
                        repeat wait()
                            setupvalue(v, i2, {LastAfter = 0,LastUse = 0})
                        until not _G.Infinit_Soru
                    end
                end
            end
        end
    end
end

function RemoveSpaces(str)
    return str:gsub(" Fruit", "")
end



spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
              if _G.Auto_Farm_Candy or _G.Present or _G.Auto_Dungeon or _G.AutoAllBoss or _G.AutoFarmBoss or _G.TeleportPly or _G.Auto_Kill_Ply or _G.AutoObservation or _G.Auto_Farm_Level or _G.Auto_New_World or _G.Auto_Third_World or _G.Auto_Farm_Chest or _G.Auto_Farm_Boss or _G.Auto_Elite_Hunter or _G.Auto_Cake_Prince or _G.Auto_Farm_All_Boss or _G.Auto_Saber or _G.Auto_Pole or _G.Auto_Farm_Scrap_and_Leather or _G.Auto_Farm_Angel_Wing or _G.Auto_Factory_Farm or _G.Auto_Farm_Ectoplasm or _G.Auto_Bartilo_Quest or _G.Auto_Rengoku or _G.Auto_Farm_Radioactive or _G.Auto_Farm_Vampire_Fang or _G.Auto_Farm_Mystic_Droplet or _G.Auto_Farm_GunPowder or _G.Auto_Farm_Dragon_Scales or _G.Auto_Evo_Race_V2 or _G.Auto_Swan_Glasses or _G.Auto_Dragon_Trident or _G.Auto_Soul_Reaper or _G.Auto_Farm_Fish_Tail or _G.Auto_Farm_Mini_Tusk or _G.Auto_Farm_Magma_Ore or _G.Auto_Farm_Bone or _G.Auto_Farm_Conjured_Cocoa or _G.Auto_Open_Dough_Dungeon or _G.Auto_Rainbow_Haki or _G.Auto_Musketeer_Hat or _G.Auto_Holy_Torch or _G.Auto_Canvander or _G.Auto_Twin_Hook or _G.Auto_Serpent_Bow or _G.Auto_Fully_Death_Step or _G.Auto_Fully_SharkMan_Karate or _G.Teleport_to_Player or _G.Auto_Kill_Player_Melee or _G.Auto_Kill_Player_Gun or _G.Start_Tween_Island or _G.Auto_Next_Island or _G.Auto_Kill_Law then
                 if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000,100000,100000)
                    Noclip.Velocity = Vector3.new(0,0,0)
                 end
              else	
                 if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
                 end
              end
        end)
    end)
end)

spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.Auto_Farm_Candy or _G.Present or _G.Auto_Dungeon or _G.AutoFarmBoss or _G.TeleportPly or _G.Auto_Kill_Ply or _G.AutoObservation or _G.Auto_Farm_Level or _G.Auto_New_World or _G.Auto_Third_World or _G.Auto_Farm_Chest or _G.Auto_Farm_Boss or _G.Auto_Elite_Hunter or _G.Auto_Cake_Prince or _G.Auto_Farm_All_Boss or _G.Auto_Saber or _G.Auto_Pole or _G.Auto_Farm_Scrap_and_Leather or _G.Auto_Farm_Angel_Wing or _G.Auto_Factory_Farm or _G.Auto_Farm_Ectoplasm or _G.Auto_Bartilo_Quest or _G.Auto_Rengoku or _G.Auto_Farm_Radioactive or _G.Auto_Farm_Vampire_Fang or _G.Auto_Farm_Mystic_Droplet or _G.Auto_Farm_GunPowder or _G.Auto_Farm_Dragon_Scales or _G.Auto_Evo_Race_V2 or _G.Auto_Swan_Glasses or _G.Auto_Dragon_Trident or _G.Auto_Soul_Reaper or _G.Auto_Farm_Fish_Tail or _G.Auto_Farm_Mini_Tusk or _G.Auto_Farm_Magma_Ore or _G.Auto_Farm_Bone or _G.Auto_Farm_Conjured_Cocoa or _G.Auto_Open_Dough_Dungeon or _G.Auto_Rainbow_Haki or _G.Auto_Musketeer_Hat or _G.Auto_Holy_Torch or _G.Auto_Canvander or _G.Auto_Twin_Hook or _G.Auto_Serpent_Bow or _G.Auto_Fully_Death_Step or _G.Auto_Fully_SharkMan_Karate or _G.Teleport_to_Player or _G.Auto_Kill_Player_Melee or _G.Auto_Kill_Player_Gun or _G.Start_Tween_Island or _G.Auto_Next_Island or _G.Auto_Kill_Law then
                for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false    
                    end
                end
            end
        end)
    end)
end)

local Client = game.Players.LocalPlayer
local STOP = require(Client.PlayerScripts.CombatFramework.Particle)
local STOPRL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
spawn(function()
    while task.wait() do
        pcall(function()
            if not shared.orl then shared.orl = STOPRL.wrapAttackAnimationAsync end
            if not shared.cpc then shared.cpc = STOP.play end
                STOPRL.wrapAttackAnimationAsync = function(a,b,c,d,func)
                local Hits = STOPRL.getBladeHits(b,c,d)
                if Hits then
                    if _G.Auto_Farm_Candy or _G.Present or _G.Auto_Dungeon or _G.AutoFarmBoss or _G.TeleportPly or _G.Auto_Kill_Ply or _G.AutoObservation or _G.Auto_Farm_Level or _G.Auto_New_World or _G.Auto_Third_World or _G.Auto_Farm_Boss or _G.Auto_Elite_Hunter or _G.Auto_Cake_Prince or _G.Auto_Farm_All_Boss or _G.Auto_Saber or _G.Auto_Pole or _G.Auto_Farm_Scrap_and_Leather or _G.Auto_Farm_Angel_Wing or _G.Auto_Factory_Farm or _G.Auto_Farm_Ectoplasm or _G.Auto_Bartilo_Quest or _G.Auto_Rengoku or _G.Auto_Farm_Radioactive or _G.Auto_Farm_Vampire_Fang or _G.Auto_Farm_Mystic_Droplet or _G.Auto_Farm_GunPowder or _G.Auto_Farm_Dragon_Scales or _G.Auto_Evo_Race_V2 or _G.Auto_Swan_Glasses or _G.Auto_Dragon_Trident or _G.Auto_Soul_Reaper or _G.Auto_Farm_Fish_Tail or _G.Auto_Farm_Mini_Tusk or _G.Auto_Farm_Magma_Ore or _G.Auto_Farm_Bone or _G.Auto_Farm_Conjured_Cocoa or _G.Auto_Open_Dough_Dungeon or _G.Auto_Rainbow_Haki or _G.Auto_Musketeer_Hat or _G.Auto_Holy_Torch or _G.Auto_Canvander or _G.Auto_Twin_Hook or _G.Auto_Serpent_Bow or _G.Auto_Fully_Death_Step or _G.Auto_Fully_SharkMan_Karate then
                        STOP.play = function() end
                        a:Play(0.01,0.01,0.01)
                        func(Hits)
                        STOP.play = shared.cpc
                        wait(a.length * 0.5)
                        a:Stop()
                    else
                        a:Play()
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        if setscriptable then
            setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
            game.Players.LocalPlayer.SimulationRadius = math.huge
        end
    end
end)

spawn(function()
    while wait() do
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
            if v:IsA("Tool") then
                if v:FindFirstChild("RemoteFunctionShoot") then 
                    SelectToolWeaponGun = v.Name
                end
            end
        end
        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
            if v:IsA("Tool") then
                if v:FindFirstChild("RemoteFunctionShoot") then 
                    SelectToolWeaponGun = v.Name
                end
            end
        end
    end
end)

spawn(function()
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg,false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if UseSkillMasteryDevilFruit then
                        args[2] = PositionSkillMasteryDevilFruit
                        return old(unpack(args))
                    elseif AimSkillNearest then
                        args[2] = AimBotSkillPosition
                        return old(unpack(args))
                    end
                end
            end
        end
        return old(...)
    end)
end)

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if UseGun then
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v.Name == Ms then
                        local args = {
                            [1] = "TAP",
                            [2] = v.HumanoidRootPart.Position
                        }
                        
                        game:GetService("Players").LocalPlayer.Character.Humanoid:FindFirstChild("Soul Guitar"):InvokeServer(unpack(args))
                        local args = {
                            [1] = v.HumanoidRootPart.Position,
                            [2] = v.HumanoidRootPart
                        }
                        game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                    end
                end
            end)
        end
    end)
end)

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if UseGunKillPlayer then
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                    if v.Name == _G.SelectPly then
                        local args = {
                            [1] = v.HumanoidRootPart.Position,
                            [2] = v.HumanoidRootPart
                        }
                        game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                    end
                end
            end)
        end
    end)
end)

function isnil(thing)
    return (thing == nil)
end
local function round(n)
    return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1,1000000)

function UpdateChest()
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3" then
				if ChestESP then
					if (v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3") and (v.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 60000 then
						if not v:FindFirstChild("ChestESP"..Number) then
							local Bb = Instance.new("BillboardGui", v)
							Bb.Name = "ChestESP"..Number
							Bb.ExtentsOffset = Vector3.new(0, 1, 0)
							Bb.Size = UDim2.new(1, 200, 1, 30)
							Bb.Adornee = v
							Bb.AlwaysOnTop = true
							local Textlb = Instance.new("TextLabel", Bb)
							Textlb.Font = "GothamBold"
							Textlb.FontSize = "Size14"
							Textlb.Size = UDim2.new(1,0,1,0)
							Textlb.BackgroundTransparency = 1
							Textlb.TextStrokeTransparency = 0.5
							if v.Name == "Chest1" then
								Textlb.TextColor3 = Color3.fromRGB(174, 123, 47)
								Textlb.Text = "Bronze Chest".."\n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
							end
							if v.Name == "Chest2" then
								Textlb.TextColor3 = Color3.fromRGB(255, 255, 127)
								Textlb.Text = "Gold Chest".."\n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
							end
							if v.Name == "Chest3" then
								Textlb.Text = "Diamond Chest".."\n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
								Textlb.TextColor3 = Color3.fromRGB(5, 243, 255)
							end
						else
							v["ChestESP"..Number].TextLabel.Text = v.Name.."\n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
						end
					end
				else
					if v:FindFirstChild("ChestESP"..Number) then
						v:FindFirstChild("ChestESP"..Number):Destroy()
					end
				end
			end
		end)
	end
end

function UpdatePlayer()
	for i,v in pairs(game:GetService("Players"):GetChildren()) do
		pcall(function()
			if v.Character then
				if PlayerESP then
					if v.Character.Head and not v.Character.Head:FindFirstChild("PlayerESP"..Number) then
						local Bb = Instance.new("BillboardGui", v.Character.Head)
						Bb.Name = "PlayerESP"..Number
						Bb.ExtentsOffset = Vector3.new(0, 1, 0)
						Bb.Size = UDim2.new(1, 200, 1, 30)
						Bb.Adornee = v.Character.Head
						Bb.AlwaysOnTop = true
						local Textlb = Instance.new("TextLabel", Bb)
						Textlb.Font = "GothamBold"
						Textlb.FontSize = "Size14"
						Textlb.Text = v.Name.."\n"..math.round((v.Character.Head.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
						Textlb.Size = UDim2.new(1,0,1,0)
						Textlb.BackgroundTransparency = 1
						Textlb.TextStrokeTransparency = 0.5
						if v.Team == game:GetService("Players").LocalPlayer.Team then
							Textlb.TextColor3 = Color3.new(0, 255, 0)
						else
							Textlb.TextColor3 = Color3.new(0, 0, 204)
						end
					else
						v.Character.Head["PlayerESP"..Number].TextLabel.Text = v.Name.."\n"..math.round((v.Character.Head.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
					end
				else
					if v.Character.Head:FindFirstChild("PlayerESP"..Number) then
						v.Character.Head:FindFirstChild("PlayerESP"..Number):Destroy()
					end
				end
			end
		end)
	end
end

function UpdateIsland()
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(function ()
            if IslandESP then
                if v.Name ~= "Sea" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "GothamBold"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(80, 245, 245)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' m.')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end

function UpdateDevilFruit()
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		pcall(function()
			if string.find(v.Name, "Fruit") then
				if DevilESP then
					if string.find(v.Name, "Fruit") then
						if not v.Handle:FindFirstChild("DevilESP"..Number) then
							local Bb = Instance.new("BillboardGui", v.Handle)
							Bb.Name = "DevilESP"..Number
							Bb.ExtentsOffset = Vector3.new(0, 1, 0)
							Bb.Size = UDim2.new(1, 200, 1, 30)
							Bb.Adornee = v.Handle
							Bb.AlwaysOnTop = true
							local Textlb = Instance.new("TextLabel", Bb)
							Textlb.Font = "GothamBold"
							Textlb.FontSize = "Size14"
							Textlb.Size = UDim2.new(1,0,1,0)
							Textlb.BackgroundTransparency = 1
							Textlb.TextStrokeTransparency = 0.5
							Textlb.Text = v.Name.."\n"..math.round((v.Handle.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
							Textlb.TextColor3 = Color3.new(255, 255, 255)
						else
							v.Handle["DevilESP"..Number].TextLabel.Text = v.Name.."\n"..math.round((v.Handle.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
						end
					end
				else
					if v.Handle:FindFirstChild("DevilESP"..Number) then
						v.Handle:FindFirstChild("DevilESP"..Number):Destroy()
					end
				end
			end
		end)
	end
end

function UpdateFlower()
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if v.Name == "Flower2" or v.Name == "Flower1" then
				if FlowerESP then
					if not v:FindFirstChild("FindFlower"..Number) then
						local bill = Instance.new("BillboardGui",v)
						bill.Name = "FindFlower"..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v
						bill.AlwaysOnTop = true
						local name = Instance.new("TextLabel",bill)
						name.Font = "GothamBold"
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = "Top"
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(248, 41, 41)
						if v.Name == "Flower1" then
							name.Text = ("Blue Flower".."\n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m.")
							name.TextColor3 = Color3.fromRGB(28, 126, 255)
						end
						if v.Name == "Flower2" then
							name.Text = ("Red Flower".."\n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m.")
							name.TextColor3 = Color3.fromRGB(248, 41, 41)
						end
					else
						v["FindFlower"..Number].TextLabel.Text = (v.Name.."\n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m.")
					end
				else
					if v:FindFirstChild("FindFlower"..Number) then
						v:FindFirstChild("FindFlower"..Number):Destroy()
					end
				end
			end
		end)
	end
end

---Library & Config---
local f=game:GetService("HttpService");
local e=game:GetService("RunService");
local J=game:GetService("Players");
local i=J.LocalPlayer;
if not isfolder("Xeris Hub Premium Scripts")then
    makefolder("Xeris Hub Premium Scripts");
end;
if not isfile("Xeris Hub Premium Scripts/BF_"..i.Name..".cfg")then 
    writefile("Xeris Hub Premium Scripts/BF_"..i.Name..".cfg","[]");
end;
GetSubPrefix=function(a)
    local a=tostring(a):gsub(" ","");
    local bX="";
    if#a==2 then 
        local Yp=string.sub(a,#a,#a+1);
        bX=Yp=="1"and"st"or Yp=="2"and"nd"or Yp=="3"and"rd"or"th";
    end;
    return bX;
end;

local A,L=loadstring(game:HttpGet("https://raw.githubusercontent.com/ExZeroz/Roblox/main/LinoriaXeon"))();

local h="%A, %B";local t=os.date(" %d",os.time());
local l=", %Y.";
h=os.date(h,os.time())..t..GetSubPrefix(t)..os.date(l,os.time());
local u=A:CreateWindow(("Xeris Hub Premium Scripts - "..tostring(h)));
A:Notify("Loading User Interface.");
local s={Load={AutoLoad={Enabled=true,RageSettings=false,SilentLoad=false,AutoLoadType="Last Config",LastUsedConfig="",LastConfig={},CustomConfig=""},Configs={},Ignored={"SettingsConfigName","SettingsConfigData","SettingsConfigConfigs","SettingsAutoLoadData","SettingsAutoLoadEnabled","SettingsAutoLoadRage","SettingsAutoLoadSilent","SettingsAutoLoadType","SettingsAutoLoadConfig","Level_Limit","Gems_Limit","Beli_Limit","Select_Weapon","Select_Delay","Select_Boss","Select_Mode","Select_Stat","SelectIsland","SelectChip","Selected_Players"}},Tick=tick()};

function UpdateTheme()
    A.BackgroundColor=L.SettingsMenuBackgroundColor.Value;
    A.MainColor=L.SettingsMenuMainColor.Value;
    A.AccentColor=L.SettingsMenuAccentColor.Value;
    A.AccentColorDark=A:GetDarkerColor(A.AccentColor);
    A.InlineColor=L.SettingsMenuInlineColor.Value;
    A.OutlineColor=L.SettingsMenuOutlineColor.Value;
    A.FontColor=L.SettingsMenuFontColor.Value;
    A:UpdateColorsUsingRegistry();
end;
function SetDefault()
    L.SettingsMenuFontColor:SetValueRGB(Color3.fromRGB(255,255,255));
    L.SettingsMenuMainColor:SetValueRGB(Color3.fromRGB(0,15,30));
    L.SettingsMenuBackgroundColor:SetValueRGB(Color3.fromRGB(5,5,20));
    L.SettingsMenuAccentColor:SetValueRGB(Color3.fromRGB(30, 215, 96));
    L.SettingsMenuInlineColor:SetValueRGB(Color3.fromRGB(10,30,40));
    L.SettingsMenuOutlineColor:SetValueRGB(Color3.fromRGB(0,0,5));
    UpdateTheme();
end;

function ResetSettings()
    for a,Wb in pairs(L)do if typeof(Wb.Original)~="nil"then Wb:SetValue(Wb.Original);
    end;
end;
end;

function GetConfigNames()
local a={};
for Vq,vq in pairs(s.Load.Configs)do a[#a+1]=vq[1];
end;
return a;
end;

function GetConfigByName(a)
for wG,iG in pairs(s.Load.Configs)do 
    if iG[1]==a then return iG[2];
    end;
end;
end;

function CreateConfig(a)
if typeof(a)=="string"then 
    if(#a>3 and#a<=25)then 
        if(not GetConfigByName(a))then 
            s.Load.Configs[#s.Load.Configs+1]={a,(A:GetConfig(s.Load.Ignored))};
            L.SettingsConfigConfigs.Values=GetConfigNames();
            L.SettingsConfigConfigs:SetValues();
            L.SettingsAutoLoadConfig.Values=GetConfigNames();
            L.SettingsAutoLoadConfig:SetValues();
            return A:Notify(("Config \"%s\" Has Been Created."):format(a));
        end;
        return A:Notify(("Config \"%s\" Already Exists."):format(a));
    end;
    return A:Notify("Config Name Is Too Long / Short.");
end;
return A:Notify("Config Name Is Not A String.");
end;

function GetConfig()return(f:JSONEncode(A:GetConfig(s.Load.Ignored)));
end;
function LoadConfig(a)if typeof(a)=="table"then A:SetConfig(a,s.Load.Ignored);
elseif typeof(a)=="string"then local U4,T4=pcall(function()a=f:JSONDecode(a);
end);
if U4 then A:SetConfig(a,s.Load.Ignored);
return A:Notify("Config Data Has Been Imported.");
end;
return A:Notify(("Error When Loading Config Data Statement : %s."):format(T4));
end;
end;

function DeleteConfig(a)
for Pz,gz in pairs(s.Load.Configs)do 
    if gz[1]==a then table.remove(s.Load.Configs,Pz);
        L.SettingsConfigConfigs.Values=GetConfigNames();
        L.SettingsConfigConfigs:SetValue(L.SettingsConfigConfigs.Value);
        L.SettingsAutoLoadConfig.Values=GetConfigNames();
        L.SettingsAutoLoadConfig:SetValues();
        return A:Notify(("Config \"%s\" Has Been Removed."):format(a));
    end;
end;
end;

function SaveConfig(a)
for OO,IO in pairs(s.Load.Configs)do 
    if IO[1]==a then 
        s.Load.Configs[OO]={a,(A:GetConfig(s.Load.Ignored))};
        return A:Notify(("Config \"%s\" Has Been Saved."):format(a));
    end;
end;
end;

function ExportData()
setclipboard(GetConfig());
A:Notify("Config Data Has Been Exported.");
end;

function ImportData()
LoadConfig(L.SettingsConfigData.Value);
end;

do A.SaveManager={};
function A.SaveManager:Save()
    s.Load.AutoLoad.LastConfig=A:GetConfig(s.Load.Ignored);
end;
function A.SaveManager:Load()local a=f:JSONDecode(readfile("Xeris Hub Premium Scripts/BF_"..i.Name..".cfg"));
    s.Load.AutoLoad=(a.AutoLoad or s.Load.AutoLoad);
    s.Load.Configs=(a.Configs or s.Load.Configs);
    do L.SettingsConfigConfigs.Values=GetConfigNames();
        L.SettingsConfigConfigs:SetValues();
        L.SettingsAutoLoadConfig.Values=GetConfigNames();
        L.SettingsAutoLoadConfig:SetValues();
    end;
    local Jc;
    if s.Load.AutoLoad.AutoLoadType=="Last Used Config"then if GetConfigByName(s.Load.AutoLoad.LastUsedConfig)then 
        Jc=GetConfigByName(s.Load.AutoLoad.LastUsedConfig);
    end;
elseif s.Load.AutoLoad.AutoLoadType=="Last Config"then
    if s.Load.AutoLoad.LastConfig then
    Jc=s.Load.AutoLoad.LastConfig;
end;elseif s.Load.AutoLoad.AutoLoadType=="Custom Config"then 
    if GetConfigByName(s.Load.AutoLoad.CustomConfig)then 
        Jc=GetConfigByName(s.Load.AutoLoad.CustomConfig);
    end;
end;
if Jc then 
    if(not s.Load.RageSettings)then 
        for JR,DR in pairs(L)do 
            if(DR.Type=="Toggle"and JR:sub(1,4)=="Rage")then 
                if Jc[JR]then warn(("Set %s to false."):format(JR));Jc[JR]=false;
                end;
            end;
        end;
    end;
    if s.Load.AutoLoad.SilentLoad then 
        Jc["SettingsMenuKeybinds"]=false;
        Jc["SettingsMenuWatermark"]=false;
        Jc["SettingsMiscNotifications"]=false;
        A:SetWatermarkVisibility(false);
        u.Holder.Visible=false;
    end;
    LoadConfig(Jc);
end;
end;

function A.SaveManager:SaveFile()
local a=f:JSONEncode({AutoLoad=s.Load.AutoLoad,Configs=s.Load.Configs});
writefile("Xeris Hub Premium Scripts/BF_"..i.Name..".cfg",a);
end;
end;

------------UI------------
local maintab = u:AddTab("General") do
    local main = maintab:AddLeftTabbox() do
        local farm = main:AddTab("Main") do
            farm:AddLabel("Auto Farm Level",true)
            farm:AddToggle("Auto_Farm",{Text = "Auto Farm Level",Default = false}):OnChanged(function (a)
                _G.Auto_Farm_Level = a
                StopTween(_G.Auto_Farm_Level)
            end)
            farm:AddToggle("NewWorld",{Text = "Auto Farm New World",Default = false}):OnChanged(function (a)
                _G.Auto_New_World = a
                StopTween(_G.Auto_New_World)
            end)
            farm:AddToggle("ThirdWorld",{Text = "Auto Farm Third World",Default = false}):OnChanged(function (a)
                _G.Auto_Third_World = a
                StopTween(_G.Auto_Third_World)
            end)
            farm:AddLabel("Miscellaneous",true)
            farm:AddToggle("Auto_Saber",{Text = "Auto Farm Saber Swords",Default = false}):OnChanged(function (a)
                _G.Auto_Saber = a
                StopTween(_G.Auto_Saber)
            end)
            farm:AddToggle("Auto_Legend",{Text = "Auto Farm Legendary Swords",Default = false}):OnChanged(function (a)
                _G.Auto_Buy_Legendary_Sword = a
            end)
            spawn(function()
                game:GetService("RunService").Heartbeat:Connect(function() CheckQuest()
                    pcall(function()
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if _G.Auto_Farm_Level and StartMagnet and v.Name == Ms and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 350 then
                                v.HumanoidRootPart.CFrame = PosMon
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                            end
                        end
                    end)
                end)
            end)

            spawn(function()
                game:GetService("RunService").Heartbeat:Connect(function() CheckQuest()
                    pcall(function()
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if _G.Auto_Farm_Level and MasteryBFMagnetActive and v.Name == Ms and (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).magnitude <= 350 then
                                v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                            end
                        end
                    end)
                end)
            end)
            
            spawn(function()
                game:GetService("RunService").Heartbeat:Connect(function() CheckQuest()
                    pcall(function()
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if _G.Auto_Farm_Level and MasteryGunMagnetActive and v.Name == Ms and (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).magnitude <= 350 then
                                v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                            end
                        end
                    end)
                end)
            end)

            spawn(function()
                while wait() do
                    if _G.Auto_Farm_Level then
                        if _G.Select_Mode_Farm == "Normal Mode" then
                            pcall(function()
                                if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                    StartMagnet = false
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                end
                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                                    StartMagnet = false
                                    CheckQuest()
                                    repeat wait() getgenv().ToTarget(CFrameQuest) until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_Farm_Level
                                    if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                                        wait(1.2)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                                        wait(0.5)
                                    end
                                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                    CheckQuest()
                                    if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                                if v.Name == Ms then
                                                    repeat wait()
                                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                                            EquipWeapon(_G.Select_Weapon)
                                                            AutoHaki()
                                                            PosMon = v.HumanoidRootPart.CFrame
                                                            v.HumanoidRootPart.CanCollide = false
                                                            v.Humanoid.WalkSpeed = 0
                                                            v.Head.CanCollide = false
                                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                            StartMagnet = true
                                                            getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                                            game:GetService'VirtualUser':CaptureController()
                                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                        else
                                                            StartMagnet = false
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                                        end
                                                    until not _G.Auto_Farm_Level or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                                end
                                            end
                                        end
                                    else
                                        StartMagnet = false
                                        if game:GetService("ReplicatedStorage"):FindFirstChild(Ms) then
                                            getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild(Ms).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                                        else
                                            getgenv().ToTarget(CFrameMon)
                                        end
                                    end
                                end
                            end)
                        elseif _G.Select_Mode_Farm == "Fast Mode" then
                            pcall(function()
                                if game:GetService("Players").LocalPlayer.Data.SpawnPoint.Value == SPAWNPOINT then
                                    if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        StartMagnet = false
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                    end
                                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                                        StartMagnet = false
                                        CheckQuest()
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                        CheckQuest()
                                        if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                                    if v.Name == Ms then
                                                        repeat wait()
                                                            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                                                EquipWeapon(_G.Select_Weapon)
                                                                AutoHaki()
                                                                PosMon = v.HumanoidRootPart.CFrame
                                                                v.HumanoidRootPart.CanCollide = false
                                                                v.Humanoid.WalkSpeed = 0
                                                                v.Head.CanCollide = false
                                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                                StartMagnet = true
                                                                getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                                                game:GetService'VirtualUser':CaptureController()
                                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                            else
                                                                StartMagnet = false
                                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                                            end
                                                        until not _G.Auto_Farm_Level or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                                    end
                                                end
                                            end
                                        else
                                            StartMagnet = false
                                            if game:GetService("ReplicatedStorage"):FindFirstChild(Ms) then
                                                getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild(Ms).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                                            else	
                                                getgenv().ToTarget(CFrameMon)
                                            end
                                        end
                                    end
                                else
                                    repeat task.wait()
                                        game.Players.LocalPlayer.Character.Head:Destroy()
                                        wait(0.5)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                                    until game:GetService("Players").LocalPlayer.Data.SpawnPoint.Value == SPAWNPOINT 
                                end
                            end)
                        elseif _G.Select_Mode_Farm == "No Quest" then
                            pcall(function()
                                CheckQuest()
                                if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                            if v.Name == Ms then
                                                if v.Humanoid.Health > 0 then
                                                    repeat wait()
                                                        EquipWeapon(_G.Select_Weapon)
                                                        AutoHaki()
                                                        PosMon = v.HumanoidRootPart.CFrame
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.Head.CanCollide = false
                                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                        StartMagnet = true
                                                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                                        game:GetService'VirtualUser':CaptureController()
                                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                    until not _G.Auto_Farm_Level or v.Humanoid.Health <= 0 or not v.Parent
                                                end
                                            end
                                        end
                                    end
                                else
                                    StartMagnet = false
                                    if game:GetService("ReplicatedStorage"):FindFirstChild(Ms) then
                                        getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild(Ms).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                                    else	
                                        getgenv().ToTarget(CFrameMon)
                                    end
                                end
                            end)
                        elseif _G.Select_Mode_Farm == "Fruit Mastery Mode" then
                            pcall(function()
                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                                    MasteryBFMagnetActive = false
                                    CheckQuest()
                                    repeat wait() getgenv().ToTarget(CFrameQuest) until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_Farm_Level
                                    if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                                        wait(1.1)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
                                    end
                                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                    CheckQuest()
                                    if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                                        pcall(function()
                                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if v.Name == Ms then
                                                    repeat wait()
                                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                                            HealthMin = v.Humanoid.MaxHealth * _G.Select_Health/100
                                                            if v.Humanoid.Health <= HealthMin then
                                                                EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
                                                                AutoHaki()
                                                                v.Head.CanCollide = false
                                                                v.HumanoidRootPart.CanCollide = false
                                                                v.HumanoidRootPart.Size = Vector3.new(2,2,1)
                                                                getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                                                                PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                                UseSkillMasteryDevilFruit = true
                                                                DevilFruitMastery = game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value
                                                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then
                                                                    if _G.Skill_Z and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                                                        wait(.1)
                                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                                                    end
                                                                    if _G.Skill_X and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                                                        wait(.1)
                                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                                                    end   
                                                                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
                                                                    if _G.Skill_Z and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 and game.Players.LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(7.6, 7.676, 3.686) then
                                                                    else
                                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                                                        wait(.1)
                                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                                                    end
                                                                    if _G.Skill_X and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                                                        wait(.1)
                                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                                                    end
                                                                    if _G.Skill_C and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                                                        wait(.1)
                                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                                                    end  
                                                                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                                                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = v.HumanoidRootPart.Position
                                                                    if _G.Skill_Z and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                                                        wait(.1)
                                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                                                    end
                                                                    if _G.Skill_X and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                                                        wait(.1)
                                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                                                    end
                                                                    if _G.Skill_C and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                                                        wait(.1)
                                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                                                    end
                                                                    if _G.Skill_V and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                                                        wait(.1)
                                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                                                    end
                                                                end
                                                            else
                                                                UseSkillMasteryDevilFruit = true
                                                                EquipWeapon(_G.Select_Weapon)
                                                                AutoHaki()
                                                                getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(_G.Select_Distance_X,_G.Select_Distance_Y,_G.Select_Distance_Z))
                                                                game:GetService'VirtualUser':CaptureController()
                                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                                v.Head.CanCollide = false
                                                                v.HumanoidRootPart.CanCollide = false
                                                                v.HumanoidRootPart.Size = Vector3.new(40,40,40)
                                                            end
                                                            MasteryBFMagnetActive = true
                                                            PosMonMasteryFruit = v.HumanoidRootPart.CFrame
                                                        else
                                                            MasteryBFMagnetActive = false
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                                        end
                                                    until v.Humanoid.Health <= 0 or  _G.Auto_Farm_Level == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                                    UseSkillMasteryDevilFruit = true
                                                end
                                            end
                                        end)
                                    else
                                        MasteryBFMagnetActive = false
                                        if game:GetService("ReplicatedStorage"):FindFirstChild(Ms) then
                                            getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild(Ms).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                                        else	
                                            getgenv().ToTarget(CFrameMon)
                                        end
                                    end 
                                end
                            end)
                        elseif _G.Select_Mode_Farm == "Gun Mastery Mode" then
                            pcall(function()
                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                                    MasteryGunMagnetActive = false
                                    CheckQuest()
                                    repeat wait() getgenv().ToTarget(CFrameQuest) until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_Farm_Level
                                    if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                                        wait(1.1)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
                                    end
                                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                    CheckQuest()
                                    if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == Ms then
                                                repeat wait()
                                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                                        HealthMin = v.Humanoid.MaxHealth * _G.Select_Health/100
                                                        if v.Humanoid.Health <= HealthMin and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                                            AutoHaki()
                                                            EquipWeapon(SelectToolWeaponGun)
                                                            v.HumanoidRootPart.CanCollide = false
                                                            getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(_G.Select_Distance_X,_G.Select_Distance_Y,_G.Select_Distance_Z))
                                                            UseGun = true
                                                            game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun].Cooldown.Value = 0
                                                            game:GetService("VirtualUser"):CaptureController()
                                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                                        else
                                                            AutoHaki()
                                                            EquipWeapon(_G.Select_Weapon)
                                                            v.Head.CanCollide = false
                                                            v.HumanoidRootPart.CanCollide = false
                                                            v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                            getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(_G.Select_Distance_X,_G.Select_Distance_Y,_G.Select_Distance_Z))
                                                            UseGun = false
                                                            game:GetService("VirtualUser"):CaptureController()
                                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                                        end
                                                        MasteryGunMagnetActive = true 
                                                        PosMonMasteryGun = v.HumanoidRootPart.CFrame
                                                    else
                                                        UseGun = false
                                                        MasteryGunMagnetActive = false
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                                    end
                                                until v.Humanoid.Health <= 0 or _G.Auto_Farm_Level == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                                UseGun = false
                                                MasteryGunMagnetActive = false
                                            end
                                        end
                                    else
                                        if game:GetService("ReplicatedStorage"):FindFirstChild(Ms) then
                                            getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild(Ms).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                                        else	
                                            getgenv().ToTarget(CFrameMon)
                                        end
                                    end 
                                end
                            end)
                        end
                    end
                end
            end)

            spawn(function()
                while wait() do
                    if _G.Auto_New_World then
                        pcall(function()
                            if game.Players.LocalPlayer.Data.Level.Value >= 700 and World1 then
                                L.Auto_Farm:SetValue(false)
                                if game.Workspace.Map.Ice.Door.CanCollide == true and game.Workspace.Map.Ice.Door.Transparency == 0 then
                                    repeat wait() getgenv().ToTarget(CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563)) until (CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_New_World
                                    wait(1)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
                                    EquipWeapon("Key")
                                    local pos2 = CFrame.new(1347.7124, 37.3751602, -1325.6488)
                                    repeat wait() getgenv().ToTarget(pos2) until (pos2.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_New_World
                                    wait(3)
                                elseif game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Ice Admiral [Lv. 700] [Boss]" and v.Humanoid.Health > 0 then
                                                repeat wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.Select_Weapon)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                    v.HumanoidRootPart.Transparency = 1
                                                    getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                                    game:GetService("VirtualUser"):CaptureController()
                                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 870),workspace.CurrentCamera.CFrame)
                                                until v.Humanoid.Health <= 0 or not v.Parent or not _G.Auto_New_World
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                                            end
                                        end
                                    else
                                        getgenv().ToTarget(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                                    end
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                                end
                            end
                        end)
                    end
                end
            end)

            spawn(function()
                while wait() do
                    if _G.Auto_Third_World then
                        pcall(function()
                            if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 and World2 then
                                L.Auto_Farm:SetValue(false)
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") == 0 then
                                    getgenv().ToTarget(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))
                                    if (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                        wait(1.5)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
                                    end
                                    wait(1.8)
                                    if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "rip_indra [Lv. 1500] [Boss]" then
                                                OldCFrameThird = v.HumanoidRootPart.CFrame
                                                repeat wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.Select_Weapon)
                                                    v.HumanoidRootPart.CFrame = OldCFrameThird
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 0
                                                    getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                                    game:GetService'VirtualUser':CaptureController()
                                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                until _G.Auto_Third_World == false or v.Humanoid.Health <= 0 or not v.Parent
                                            end
                                        end
                                    elseif not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") and (CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                                        getgenv().ToTarget(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
                                    end
                                end
                            end
                        end)
                    end
                end
            end)

            spawn(function()
                while wait() do
                    if _G.Auto_Saber then
                        if game.Players.localPlayer.Data.Level.Value <= 199 then
                            A:Notify("Yours Level Too Low",3)
                        elseif game.Players.localPlayer.Data.Level.Value >= 200 then
                            if game.Workspace.Map.Jungle.Final.Part.CanCollide == false then
                                if _G.Auto_Saber and game.ReplicatedStorage:FindFirstChild("Saber Expert [Lv. 200] [Boss]") or game.Workspace.Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
                                    if game.Workspace.Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
                                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                            if v.Name == "Saber Expert [Lv. 200] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                                repeat wait()
                                                    if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                                        Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
                                                    elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                        if Farmtween then
                                                            Farmtween:Stop()
                                                        end
                                                        AutoHaki()
                                                        EquipWeapon(_G.Select_Weapon)
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
                                                        game:GetService'VirtualUser':CaptureController()
                                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                    end
                                                until not _G.Auto_Saber or not v.Parent or v.Humanoid.Health <= 0
                                            end
                                        end
                                    else
                                        Questtween = toTarget(CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position,CFrame.new(-1405.41956, 29.8519993, 5.62435055))
                                        if (CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                            if Questtween then
                                                Questtween:Stop()
                                            end
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1405.41956, 29.8519993, 5.62435055, 0.885240912, 3.52892613e-08, 0.465132833, -6.60881128e-09, 1, -6.32913171e-08, -0.465132833, 5.29540891e-08, 0.885240912)
                                        end
                                    end
                                else
                                    if _G.Auto_Saber_Hop then
                                        Hop()
                                    end
                                end
                            elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Relic") or game.Players.LocalPlayer.Character:FindFirstChild("Relic") and game.Players.localPlayer.Data.Level.Value >= 200 then
                                EquipWeapon("Relic")
                                wait(0.5)
                                Questtween = toTarget(CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position,CFrame.new(-1405.41956, 29.8519993, 5.62435055))
                                if (CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                    if Questtween then
                                        Questtween:Stop()
                                    end
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1405.41956, 29.8519993, 5.62435055, 0.885240912, 3.52892613e-08, 0.465132833, -6.60881128e-09, 1, -6.32913171e-08, -0.465132833, 5.29540891e-08, 0.885240912)
                                end
                            else
                                if Workspace.Map.Jungle.QuestPlates.Door.CanCollide == false then
                                    if game.Workspace.Map.Desert.Burn.Part.CanCollide == false then
                                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") == 0 then
                                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
                                                if game.Workspace.Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
                                                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                                        if _G.Auto_Saber and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == "Mob Leader [Lv. 120] [Boss]" then
                                                            repeat
                                                                pcall(function() wait() 
                                                                    if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                                                        Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
                                                                    elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                                        if Farmtween then
                                                                            Farmtween:Stop()
                                                                        end
                                                                        AutoHaki()
                                                                        EquipWeapon(_G.Select_Weapon)
                                                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                                            local args = {
                                                                                [1] = "Buso"
                                                                            }
                                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                                        end
                                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
                                                                        game:GetService'VirtualUser':CaptureController()
                                                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                                    end
                                                                end)
                                                            until not _G.Auto_Saber or not v.Parent or v.Humanoid.Health <= 0
                                                        end
                                                    end
                                                else
                                                    Questtween = toTarget(CFrame.new(-2848.59399, 7.4272871, 5342.44043).Position,CFrame.new(-2848.59399, 7.4272871, 5342.44043))
                                                    if (CFrame.new(-2848.59399, 7.4272871, 5342.44043).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                        if Questtween then
                                                            Questtween:Stop()
                                                        end
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.928248107)
                                                    end
                                                end
                                            elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
                                                if game.Players.LocalPlayer.Backpack:FindFirstChild("Relic") or game.Players.LocalPlayer.Character:FindFirstChild("Relic") then
                                                    EquipWeapon("Relic")
                                                    wait(0.5)
                                                    Questtween = toTarget(CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position,CFrame.new(-1405.41956, 29.8519993, 5.62435055))
                                                    if (CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                        if Questtween then
                                                            Questtween:Stop()
                                                        end
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1405.41956, 29.8519993, 5.62435055)
                                                    end
                                                else
                                                    Questtween = toTarget(CFrame.new(-910.979736, 13.7520342, 4078.14624).Position,CFrame.new(-910.979736, 13.7520342, 4078.14624))
                                                    if (CFrame.new(-910.979736, 13.7520342, 4078.14624).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                        if Questtween then
                                                            Questtween:Stop()
                                                        end
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-910.979736, 13.7520342, 4078.14624, 0.00685182028, -1.53155766e-09, -0.999976516, 9.15205245e-09, 1, -1.46888401e-09, 0.999976516, -9.14177267e-09, 0.00685182028)
                                                        wait(.5)
                                                        local args = {
                                                            [1] = "ProQuestProgress",
                                                            [2] = "RichSon"
                                                        }
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                    end
                                                end
                                            else
                                                Questtween = toTarget(CFrame.new(-910.979736, 13.7520342, 4078.14624).Position,CFrame.new(-910.979736, 13.7520342, 4078.14624))
                                                if (CFrame.new(-910.979736, 13.7520342, 4078.14624).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                    if Questtween then
                                                        Questtween:Stop()
                                                    end
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-910.979736, 13.7520342, 4078.14624)
                                                    local args = {
                                                        [1] = "ProQuestProgress",
                                                        [2] = "RichSon"
                                                    }
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                end
                                            end
                                        else
                                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Cup") or game.Players.LocalPlayer.Character:FindFirstChild("Cup") then
                                                EquipWeapon("Cup")
                                                if game.Players.LocalPlayer.Character.Cup.Handle:FindFirstChild("TouchInterest") then
                                                    Questtween = toTarget(CFrame.new(1397.229, 37.3480148, -1320.85217).Position,CFrame.new(1397.229, 37.3480148, -1320.85217))
                                                    if (CFrame.new(1397.229, 37.3480148, -1320.85217).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                        if Questtween then
                                                            Questtween:Stop()
                                                        end
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1397.229, 37.3480148, -1320.85217, -0.11285457, 2.01368788e-08, 0.993611455, 1.91641178e-07, 1, 1.50028845e-09, -0.993611455, 1.90586206e-07, -0.11285457)
                                                    end
                                                else
                                                    wait(0.5)
                                                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
                                                        local args = {
                                                            [1] = "ProQuestProgress",
                                                            [2] = "SickMan"
                                                        }
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                    end
                                                end
                                            else
                                                Questtween = toTarget(game.Workspace.Map.Desert.Cup.Position,game.Workspace.Map.Desert.Cup.CFrame)
                                                if (game.Workspace.Map.Desert.Cup.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                    if Questtween then
                                                        Questtween:Stop()
                                                    end
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.Desert.Cup.CFrame
                                                end
                                                -- firetouchinterest(game.Workspace.Map.Desert.Cup.TouchInterest,game.Players.LocalPlayer.Character.Head, 1)
                                            end
                                        end
                                    else
                                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
                                            EquipWeapon("Torch")
                                            Questtween = toTarget(CFrame.new(1114.87708, 4.9214654, 4349.8501).Position,CFrame.new(1114.87708, 4.9214654, 4349.8501))
                                            if (CFrame.new(1114.87708, 4.9214654, 4349.8501).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                if Questtween then
                                                    Questtween:Stop()
                                                end
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1114.87708, 4.9214654, 4349.8501, -0.612586915, -9.68697833e-08, 0.790403247, -1.2634203e-07, 1, 2.4638446e-08, -0.790403247, -8.47679615e-08, -0.612586915)
                                            end
                                        else
                                            Questtween = toTarget(CFrame.new(-1610.00757, 11.5049858, 164.001587).Position,CFrame.new(-1610.00757, 11.5049858, 164.001587))
                                            if (CFrame.new(-1610.00757, 11.5049858, 164.001587).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                if Questtween then
                                                    Questtween:Stop()
                                                end
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, -0.258850515, 0.965917408)
                                            end
                                        end
                                    end
                                else
                                    for i,v in pairs(Workspace.Map.Jungle.QuestPlates:GetChildren()) do
                                        if v:IsA("Model") then wait()
                                            if v.Button.BrickColor ~= BrickColor.new("Camo") then
                                                repeat wait()
                                                    Questtween = toTarget(v.Button.Position,v.Button.CFrame)
                                                    if (v.Button.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                                                        if Questtween then
                                                            Questtween:Stop()
                                                        end
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Button.CFrame
                                                    end
                                                until not _G.Auto_Saber or v.Button.BrickColor == BrickColor.new("Camo")
                                            end
                                        end
                                    end    
                                end
                            end
                        end 
                    end
                end
            end)

            spawn(function()
                while wait() do
                    if _G.Auto_Buy_Legendary_Sword then
                        local args = {
                            [1] = "LegendarySwordDealer",
                            [2] = "2"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    end
                end
            end)
        end
        local elite = main:AddTab("Specials") do
            elite:AddLabel("Elite Hunter - Farm",true)
            local sp1 = elite:AddLabel("EliteHunter")
            local sp2 = elite:AddLabel("CurrentEliteHunter")
            elite:AddToggle("Auto_Hunter",{Text = "Auto Farm Elite Hunter",Default = false}):OnChanged(function (a)
                _G.Auto_Elite_Hunter = a
                StopTween(_G.Auto_Elite_Hunter)
            end)
            elite:AddToggle("Auto_Hunter_Hop",{Text = "Auto Farm Elite Hunter Hop",Default = false}):OnChanged(function (a)
                _G.Auto_Elite_Hunter_Hop = a
            end)
            elite:AddLabel("Elite Hunter - Settings",true)
            elite:AddToggle("Stop_God",{Text = "Stop At God's Chalice",Default = false}):OnChanged(function (a)
                _G.StopGodChalice = a
            end)
            spawn(function ()
                pcall(function ()
                    while wait() do
                        if World3 and game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                            sp1:ChangeText('Elite Hunter : Spawned')
                        elseif World1 or World2 then
                            sp1:ChangeText("Elite Hunter : !!!World 3 Only!!!")
                        else
                            sp1:ChangeText('Elite Hunter : Not Spawned')
                        end
                        sp2:ChangeText("Current Elite Hunter : "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))
                    end
                end)
            end)
            spawn(function ()
                while wait() do
                    if _G.StopGodChalice then
                        pcall(function ()
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                                L.Auto_Hunter:SetValue(false)
                                L.Auto_Hunter_Hop:SetValue(false)
                            end
                        end)
                    end
                end
            end)
            spawn(function()
                while wait() do
                    if _G.Auto_Elite_Hunter and World3 then
                        pcall(function()
                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Diablo [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" then
                                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                    repeat wait()
                                                        AutoHaki()
                                                        EquipWeapon(_G.Select_Weapon)
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                                        game:GetService("VirtualUser"):CaptureController()
                                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                    until _G.Auto_Elite_Hunter == false or v.Humanoid.Health <= 0 or not v.Parent
                                                end
                                            end
                                        end
                                    else
                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") then
                                            getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                        elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
                                            getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                        elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") then
                                            getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                        end
                                    end                    
                                end
                            else
                                if _G.Auto_Elite_Hunter_Hop and game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter") == "I don't have anything for you right now. Come back later." then
                                    Hop()
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                                end
                            end
                        end)
                    end
                end
            end)
        end
    end
    local set = maintab:AddRightTabbox() do
        local sett = set:AddTab("Settings") do
            WeaponList = {}
            pcall(function()
                for a,cL in pairs(i.Backpack:GetChildren())do 
                    if cL:IsA("Tool")and not table.find(WeaponList,cL.Name) then 
                        table.insert(WeaponList,cL.Name);
                    end;
                end;
                
                for a,uv in pairs(i.Character:GetChildren())do 
                    if uv:IsA("Tool")and not table.find(WeaponList,uv.Name) then 
                        table.insert(WeaponList,uv.Name);
                    end;
                end;
            end);
            sett:AddLabel("Select Combat / Mode Farm",true)
            sett:AddDropdown("Select_Weapon",{Text = "Select Combat / Weapons",Default = 0,Values = WeaponList}):OnChanged(function (a)
                _G.Select_Weapon = a
            end)
            sett:AddDropdown("Select_Mode",{Text = "Select Mode Farm",Default = 1,Values = {"Normal Mode","Fast Mode","No Quest","Fruit Mastery Mode","Gun Mastery Mode"}}):OnChanged(function (a)
                _G.Select_Mode_Farm = a
            end)
        end
        local stat = set:AddTab("Stats") do
            stat:AddDropdown("Select_Stat",{Text = "Select Stats",Default = 0,Values = {"Melee","Defense","Sword","Gun","Devil Fruit"}}):OnChanged(function (a)
                _G.SelectStat = a
            end)
            stat:AddToggle("AddStat",{Text = "Auto Add Stats",Default = false}):OnChanged(function (a)
                _G.AddStat = a
            end)
            stat:AddSlider("Select_Point",{
                Text = "Select Point",
                Default = 1,
                Min = 1,
                Max = 100,
                Rounding = 0,
                Compact = false,
                Suffix = "p"
            }):OnChanged(function (a)
                _G.PointStats = L.Select_Point.Value
            end)

            spawn(function ()
                pcall(function ()
                    while task.wait() do
                        if _G.AddStat then
                            if _G.SelectStat == "Melee" then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",_G.PointStats)
                            end
                            if _G.SelectStat == "Defense" then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Defense",_G.PointStats)
                            end
                            if _G.SelectStat == "Sword" then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Sword",_G.PointStats)
                            end
                            if _G.SelectStat == "Gun" then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Gun",_G.PointStats)
                            end
                            if _G.SelectStat == "Devil Fruit" then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Demon Fruit",_G.PointStats)
                            end
                        end
                    end
                end)
            end)

            task.spawn(function()
                while true do wait(.4);
                    pcall(function()
                        for a in pairs(WeaponList)do
                            WeaponList[a]=nil;
                        end;
                        for a,wY in pairs(i.Backpack:GetChildren())do 
                            if wY:IsA("Tool")and not table.find(WeaponList,wY.Name)then 
                                table.insert(WeaponList,wY.Name);
                            end;
                        end;
                        for a,X6 in pairs(i.Character:GetChildren())do 
                            if X6:IsA("Tool")and not table.find(WeaponList,X6.Name)then 
                                table.insert(WeaponList,X6.Name);
                            end;
                        end;
                        L.Selected_Weapons.Values=WeaponList;
                        L.Selected_Weapons:SetValues();
                    end);
                end;
            end);
        end
        local SSR = set:AddTab("Skills") do
            SSR:AddLabel("Select Skills",true)
            SSR:AddToggle("Select_SkillZ",{
                Text = "SKill Z",
                Default = false
            }):OnChanged(function (a)
                _G.Skill_Z = a
            end)
            SSR:AddToggle("Select_SkillX",{
                Text = "SKill X",
                Default = false
            }):OnChanged(function (a)
                _G.Skill_X = a
            end)
            SSR:AddToggle("Select_SkillC",{
                Text = "SKill C",
                Default = false
            }):OnChanged(function (a)
                _G.Skill_C = a
            end)
            SSR:AddToggle("Select_SkillV",{
                Text = "SKill V",
                Default = false
            }):OnChanged(function (a)
                _G.Skill_V = a
            end)
        end
    end
    local evbo = maintab:AddLeftTabbox() do
        local ev = evbo:AddTab("Event") do
            ev:AddLabel("🍬 Candies 🍬",true)
            ev:AddToggle("Auto_Buddy_Swords",{Text = "Auto Farm Buddy Swords",Default = false}):OnChanged(function (a)
                _G.AutoBudySword = a
                StopTween(_G.AutoBudySword)
            end)
            ev:AddToggle("Auto_Buddy_Hop",{Text = "Auto Farm Buddy Swords",Default = false}):OnChanged(function (a)
                _G.AutoBudySwordHop = a
            end)
            ev:AddLabel("🎃 hallowed 🎃",true)
            ev:AddToggle("Auto_Hallow_Scythe",{Text = "Auto Farm Hallow Scythe",Default = false}):OnChanged(function (a)
                _G.AutoFarmBossHallow = a
                StopTween(_G.AutoFarmBossHallow)
            end)
            ev:AddToggle("Auto_Hallow_Scythe_Hop",{Text = "Auto Farm Hallow Scythe Hop",Default = false}):OnChanged(function (a)
                _G.AutoFarmBossHallowHop = a
            end)
            ev:AddLabel("🌀 Portal 🌀",true)
            local a = ev:AddLabel("Total Defeat : ")
            ev:AddToggle("Auto_Spawn",{Text = "Auto Spawn Cake Prince",Default = false}):OnChanged(function (a)
                _G.Auto_Spawn_Cake_Prince = a
            end)
            ev:AddToggle("Auto_Cake",{Text = "Auto Farm Cake Prince",Default = false}):OnChanged(function (a)
                _G.Auto_Cake_Prince = a
                StopTween(_G.Auto_Cake_Prince)
            end)

            spawn(function()
                while wait() do
                    if _G.AutoBudySword then
                        pcall(function()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Cake Queen [Lv. 2175] [Boss]" then
                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            repeat task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.Select_Weapon)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                                game:GetService("VirtualUser"):CaptureController()
                                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                            until not _G.AutoBudySword or not v.Parent or v.Humanoid.Health <= 0
                                        end
                                    end
                                end
                            else
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                                    getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                else
                                    if _G.AutoBudySwordHop and not game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                                        Hop()
                                    end
                                end
                            end
                        end)
                    end
                end
            end)
    
            spawn(function()
                while wait() do
                    if _G.AutoFarmBossHallow then
                        pcall(function()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if string.find(v.Name , "Soul Reaper") then
                                        repeat task.wait()
                                            EquipWeapon(_G.Select_Weapon)
                                            AutoHaki()
                                            getgenv().ToTarget(v.HumanoidRootPart.CFrame*CFrame.new(0,35,0))
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
                                            v.HumanoidRootPart.Transparency = 1
                                            sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                        until v.Humanoid.Health <= 0 or _G.AutoFarmBossHallow == false
                                    end
                                end
                            elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                                repeat getgenv().ToTarget(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)) wait() until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8                        
                                EquipWeapon("Hallow Essence")
                            else
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
                                    getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                else
                                    if _G.AutoFarmBossHallowHop and not game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
                                        Hop()
                                    end
                                end
                            end
                        end)
                    end
                end
            end)

            spawn(function()
                while wait() do
                    pcall(function()
                        if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
                            a:ChangeText("Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41))
                        elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
                            a:ChangeText("Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40))
                        elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
                            a:ChangeText("Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39))
                        else
                            a:ChangeText("Boss Is Spawned!!!")
                        end
                    end)
                end
            end)

            spawn(function()
                while wait() do
                    if _G.Auto_Spawn_Cake_Prince then
                        local args = {
                            [1] = "CakePrinceSpawner",
                            [2] = true
                        }
        
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        local args = {
                            [1] = "CakePrinceSpawner"
                        }
        
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    end
                end
            end)

            spawn(function()
                game:GetService("RunService").Heartbeat:Connect(function()
                    pcall(function()
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if _G.Auto_Cake_Prince and StartCakeMagnet and (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and (v.HumanoidRootPart.Position - POSCAKE.Position).magnitude <= 350 then
                                v.HumanoidRootPart.CFrame = POSCAKE
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                            end
                        end
                    end)
                end)
            end)

            spawn(function()
                while wait() do
                    if _G.Auto_Cake_Prince then
                        pcall(function()
                            if game.ReplicatedStorage:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then   
                                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
                                        if v.Name == "Cake Prince [Lv. 2300] [Raid Boss]" then
                                            repeat wait()
                                                AutoHaki()
                                                EquipWeapon(_G.Select_Weapon)
                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                v.HumanoidRootPart.CanCollide = false
                                                getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            until _G.Auto_Cake_Prince == false or not v.Parent or v.Humanoid.Health <= 0
                                        end    
                                    end    
                                else
                                    getgenv().ToTarget(CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875)) 
                                end
                            else
                                if game.Workspace.Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game.Workspace.Enemies:FindFirstChild("Head Baker [Lv. 2275]") or game.Workspace.Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]")  then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do  
                                        if (v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Cookie Crafter [Lv. 2200]") and v.Humanoid.Health > 0 then
                                            repeat wait()
                                                AutoHaki()
                                                EquipWeapon(_G.Select_Weapon)
                                                StartCakeMagnet = true
                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
                                                POSCAKE = v.HumanoidRootPart.CFrame
                                                getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            until _G.Auto_Cake_Prince == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or not v.Parent or v.Humanoid.Health <= 0
                                        end
                                    end
                                else
                                    StartCakeMagnet = false
                                    getgenv().ToTarget(CFrame.new(-1820.0634765625, 210.74781799316406, -12297.49609375))
                                end
                            end
                        end)
                    end
                end
            end)
        end
        local boss = evbo:AddTab("Bosses") do
            BossList = {}
            for i,v in pairs(game.workspace.Enemies:GetChildren()) do
                if string.find(v.Name, "Boss") then
                    table.insert(BossList, v.Name)
                end
            end
            for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                if string.find(v.Name, "Boss") then
                    table.insert(BossList, v.Name)
                end
            end
            boss:AddLabel("Select Boss",true)
            boss:AddDropdown("Select_Boss",{Text = "Select Bosses",Default = 0,Values = BossList}):OnChanged(function (a)
                _G.SelectBoss = a
            end)
            boss:AddLabel("Main Stuff",true)
            boss:AddToggle("Auto_Farm_Boss",{Text = "Auto Farm Boss",Default = false}):OnChanged(function (a)
                _G.AutoFarmBoss = a
                StopTween(_G.AutoFarmBoss)
            end)
            boss:AddToggle("Auto_Farm_All_Boss",{Text = "Auto Farm All Bosses",Default = false}):OnChanged(function (a)
                _G.AutoAllBoss = a
                StopTween(_G.AutoAllBoss)
            end)
            boss:AddToggle("Auto_Farm_All_Boss_Hop",{Text = "Auto Farm All Bosses Hop",Default = false}):OnChanged(function (a)
                _G.AutoAllBossHop = a
            end)
            boss:AddLabel("Raid Boss Order Law",true)
            boss:AddToggle("AutoFarmRaidBoss",{Text = "Auto Farm Order Law",Default = false}):OnChanged(function (a)
                _G.Auto_Kill_Law = a
                StopTween(_G.Auto_Kill_Law)
            end)
            boss:AddToggle("AutoBuyChipLaw",{Text = "Auto Farm Buy Order Law Chips",Default = false}):OnChanged(function (a)
                _G.Auto_Buy_Law_Chip = a
            end)

            spawn(function ()
                while wait(.2) do
                    table.clear(BossList)
                    for i,v in pairs(game.workspace.Enemies:GetChildren()) do
                        if string.find(v.Name, "Boss") then
                            table.insert(BossList, v.Name)
                        end
                    end
                    for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                        if string.find(v.Name, "Boss") then
                            table.insert(BossList, v.Name)
                        end
                    end
                    L.Select_Boss.Values=BossList;
                    L.Select_Boss:SetValues();
                end
            end)

            spawn(function()
                while wait() do
                    if _G.AutoFarmBoss then
                        pcall(function()
                            if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == _G.SelectBoss then
                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            repeat task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.Select_Weapon)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                                getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                                game:GetService("VirtualUser"):CaptureController()
                                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                            until not _G.AutoFarmBoss or not v.Parent or v.Humanoid.Health <= 0
                                        end
                                    end
                                end
                            else
                                if game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) then
                                    getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                end
                            end
                        end)
                    end
                end
            end)

            spawn(function()
                while wait() do
                    if _G.AutoAllBoss then
                        pcall(function()
                            for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
                                if string.find(v.Name,"Boss") then
                                    if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 17000 then
                                        repeat task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                            getgenv().ToTarget(v.HumanoidRootPart.CFrame*CFrame.new(0,35,0))
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                        until v.Humanoid.Health <= 0 or _G.AutoAllBoss == false or not v.Parent
                                    end
                                else
                                    if _G.AutoAllBossHop then
                                        Hop()
                                    end
                                end
                            end
                        end)
                    end
                end
            end)

            spawn(function()
                while wait() do
                    if _G.Auto_Kill_Law then
                        pcall(function()
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
                                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if _G.Auto_Kill_Law and v.Name == "Order [Lv. 1250] [Raid Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                        repeat task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.Select_Weapon_Law_Raid)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        until not _G.Auto_Kill_Law or v.Humanoid.Health <= 0 or not v.Parent
                                    end
                                end
                            end 
                        end)
                    end
                end
            end)

            spawn(function()
                while wait() do
                    if _G.Auto_Buy_Law_Chip then
                        pcall(function()
                            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
                                
                            else
                                local args = {
                                    [1] = "BlackbeardReward",
                                    [2] = "Microchip",
                                    [3] = "2"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            end
                        end)
                    end
                end
            end)
        end
    end
    local oben = maintab:AddLeftTabbox() do
        local ob = oben:AddTab("Observations") do
            ob:AddLabel("Observations - Farm",true)
            ob:AddToggle("Auto_Observation",{Text = "Auto Farm Observations Haki",Default = false}):OnChanged(function (a)
                _G.AutoObservation = a
                StopTween(_G.AutoObservation)
            end)
            ob:AddToggle("Hop_Ob",{Text = "Auto Farm Observations Haki Hop",Default = false}):OnChanged(function (a)
                _G.AutoObservation_Hop = a
            end)

            spawn(function()
                pcall(function()
                    while wait() do
                        if _G.AutoObservation then
                            if game:GetService("Players").LocalPlayer.VisionRadius.Value >= 33000 then
                                A:Notify("Your Observation Is Max",3)
                                L.Auto_Observation:SetValue(false)
                                L.Hop_Ob:SetValue(false)
                            else
                                if World2 then
                                    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken",true)
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]") then
                                        if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                            repeat task.wait()
                                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                                            until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                        else
                                            repeat task.wait()
                                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)+
                                                    wait(1)
                                                if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
                                                    game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                                end
                                            until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                        end
                                    else
                                        getgenv().ToTarget(CFrame.new(-5478.39209, 15.9775667, -5246.9126))
                                    end
                                elseif World1 then
                                    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken",true)
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]") then
                                        if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                            repeat task.wait()
                                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                                            until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                        else
                                            repeat task.wait()
                                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                                                wait(1)
                                                if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
                                                    game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                                end
                                            until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                        end
                                    else
                                        getgenv().ToTarget(CFrame.new(5533.29785, 88.1079102, 4852.3916))
                                    end
                                elseif World3 then
                                    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken",true)
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]") then
                                        if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                            repeat task.wait()
                                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                                            until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                        else
                                            repeat task.wait()
                                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                                                wait(1)
                                                if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
                                                    game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                                end
                                            until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                        end
                                    else
                                        getgenv().ToTarget(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789))
                                    end
                                end
                            end
                        end
                    end
                end)
            end)
        end
        local en = oben:AddTab("Enchancements")
        en:AddLabel("Enchancement - Farm",true)
        en:AddToggle("Farm_Enc",{
            Text = "Auto Farm Enchancement Haki",
            Default = false,
        }):OnChanged(function (a)
            _G.AutoBuyEnchancementColour = a
        end)
        en:AddToggle("Farm_Enc_Hop",{
            Text = "Auto Farm Enchancement Haki Hop",
            Default = false,
        }):OnChanged(function (a)
            _G.AutoBuyEnchancementColour_Hop = a
        end)

        spawn(function()
            while wait() do
                if _G.AutoBuyEnchancementColour then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ColorsDealer","1")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ColorsDealer","2")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ColorsDealer","3")
                    if _G.AutoBuyEnchancementColour_Hop and _G.AutoBuyEnchancementColour and not World1 then
                        wait(10)
                        Hop()
                    end
                end
            end
        end)
    end
    local mis = maintab:AddRightTabbox() do
        local misc = mis:AddTab("Miscellaneous") do
            misc:AddLabel("Miscellaneous - Farm",true)
            misc:AddToggle("Evov2",{Text = "Auto Evolve Race V2",Default = false}):OnChanged(function (a)
                _G.Auto_Evo_Race_V2 = a
                StopTween(_G.Auto_Evo_Race_V2)
            end)
            misc:AddToggle("SwanQuest",{Text = "Auto Finish Bartilo Quest",Default = false}):OnChanged(function (a)
                _G.Auto_Bartilo_Quest = a
                StopTween(_G.Auto_Bartilo_Quest)
            end)
            misc:AddToggle("AutoEctoplasm",{Text = "Auto Farm Ectoplasm",Default = false}):OnChanged(function (a)
                _G.Auto_Farm_Ectoplasm = a
                StopTween(_G.Auto_Farm_Ectoplasm)
            end)
            misc:AddToggle("AutoBone",{Text = "Auto Farm Bone",Default = false}):OnChanged(function (a)
                _G.Auto_Farm_Bone = a
                StopTween(_G.Auto_Farm_Bone)
            end)
            misc:AddToggle("AutoCandy",{Text = "Auto Farm Candy",Default = false}):OnChanged(function (a)
                _G.Auto_Farm_Candy = a
                StopTween(_G.Auto_Farm_Candy)
            end)
            misc:AddToggle("AutoRainbowHaki",{Text = "Auto Rainbow Haki",Default = false}):OnChanged(function (a)
                _G.Auto_Rainbow_Haki = a
                StopTween(_G.Auto_Rainbow_Haki)
            end)
            misc:AddToggle("AutoCollectChest",{Text = "Auto Collect Chests",Default = false}):OnChanged(function (a)
                _G.Auto_Farm_Chest = a
                StopTween(_G.Auto_Farm_Chest)
            end)
            misc:AddToggle("Musketeer",{Text = "Auto Musketeer Hat",Default = false}):OnChanged(function (a)
                _G.Auto_Musketeer_Hat = a
                StopTween(_G.Auto_Musketeer_Hat)
            end)
            misc:AddToggle("AutoFinishDough",{Text = "Auto Finish Awakened Dough Quest",Default = false}):OnChanged(function (a)
                _G.Auto_Open_Dough_Dungeon = a
                StopTween(_G.Auto_Open_Dough_Dungeon)
            end)

            spawn(function()
                game:GetService("RunService").Heartbeat:Connect(function()
                    pcall(function()
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if _G.Auto_Farm_Candy and StartMagnetCandy and (v.Name == "Candy Pirate [Lv. 2400]" or v.Name == "Snow Demon [Lv. 2425]") and (v.HumanoidRootPart.Position - POSCANDY.Position).magnitude <= 350 then
                                v.HumanoidRootPart.CFrame = POSCANDY
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                            end
                        end
                    end)
                end)
            end)

            spawn(function ()
                while wait() do
                    if _G.Auto_Farm_Candy and World3 then
                        pcall(function()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Candy Pirate [Lv. 2400]") or game:GetService("Workspace").Enemies:FindFirstChild("Snow Demon [Lv. 2425]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Candy Pirate [Lv. 2400]" or v.Name == "Snow Demon [Lv. 2425]" then
                                        if v.Humanoid.Health > 0 then
                                            repeat wait()
                                                AutoHaki()
                                                EquipWeapon(_G.Select_Weapon)
                                                StartMagnetCandy = true
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                POSCANDY = v.HumanoidRootPart.CFrame
                                                getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            until _G.Auto_Farm_Candy == false or not v.Parent or v.Humanoid.Health <= 0
                                        end
                                    end
                                end
                            else
                                StartMagnetCandy = false
                                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                                    if v.Name == "Candy Pirate [Lv. 2400]" then
                                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                    elseif v.Name == "Snow Demon [Lv. 2425]" then
                                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                    end
                                end
                                getgenv().ToTarget(CFrame.new(-1077.79, 14.6404, -14475.5))
                            end
                        end)
                    end
                end
            end)

            spawn(function()
                while wait() do
                    if _G.Auto_Farm_Chest then
                        pcall(function()
                            if game:GetService("Workspace"):FindFirstChild("Chest1") or game:GetService("Workspace"):FindFirstChild("Chest2") or game:GetService("Workspace"):FindFirstChild("Chest3") then
                                for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                                    if v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3" then
                                        repeat wait()
                                            getgenv().ToTarget(v.CFrame)
                                        until not v.Parent or _G.Auto_Farm_Chest == false
                                    end
                                end
                            end
                        end)
                    end
                end
            end)

            spawn(function()
                game:GetService("RunService").Heartbeat:Connect(function()
                    pcall(function()
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if _G.Auto_Evo_Race_V2 and StartEvoMagnet and v.Name == "Swan Pirate [Lv. 775]" and (v.HumanoidRootPart.Position - PosMonEvo.Position).magnitude <= 350 then
                                v.HumanoidRootPart.CFrame = PosMonEvo
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                            end
                        end
                    end)
                end)
            end)
        
            spawn(function()
                pcall(function()
                    while wait() do
                        if _G.Auto_Evo_Race_V2 then
                            if not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
                                    getgenv().ToTarget(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.39014104e-08, -0.68292886, 3.59963224e-08, 1, 5.50667032e-08, 0.68292886, 1.56424669e-08, -0.730484903))
                                    if (Vector3.new(-2779.83521, 72.9661407, -3574.02002) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                                        wait(1.3)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
                                    end
                                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
                                    pcall(function()
                                        if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
                                            getgenv().ToTarget(game:GetService("Workspace").Flower1.CFrame)
                                        elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
                                            getgenv().ToTarget(game:GetService("Workspace").Flower2.CFrame)
                                        elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
                                            if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
                                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                    if v.Name == "Swan Pirate [Lv. 775]" then
                                                        repeat wait()
                                                            AutoHaki()
                                                            EquipWeapon(_G.Select_Weapon)
                                                            getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                                            v.HumanoidRootPart.CanCollide = false
                                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                            game:GetService'VirtualUser':CaptureController()
                                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                            PosMonEvo = v.HumanoidRootPart.CFrame
                                                            StartEvoMagnet = true
                                                        until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_Evo_Race_V2 == false
                                                        StartEvoMagnet = false
                                                    end
                                                end
                                            else
                                                StartEvoMagnet = false
                                                getgenv().ToTarget(CFrame.new(980.0985107421875, 121.331298828125, 1287.2093505859375))
                                            end
                                        end
                                    end)
                                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
                                end
                            end
                        end
                    end
                end)
            end)

            spawn(function()
                game:GetService("RunService").Heartbeat:Connect(function()
                    pcall(function()
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if _G.Auto_Bartilo_Quest and AutoBartiloBring and v.Name == "Swan Pirate [Lv. 775]" and (v.HumanoidRootPart.Position - PosMonBarto.Position).magnitude <= 350 then
                                v.HumanoidRootPart.CFrame = PosMonBarto
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                            end
                        end
                    end)
                end)
            end)
        
            spawn(function()
                pcall(function()
                    while wait() do
                        if _G.Auto_Bartilo_Quest then
                            if game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
                                if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then 
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Swan Pirate [Lv. 775]" then
                                                pcall(function()
                                                    repeat wait()
                                                        AutoHaki()
                                                        EquipWeapon(_G.Select_Weapon)
                                                        v.HumanoidRootPart.Transparency = 1
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))													
                                                        PosMonBarto =  v.HumanoidRootPart.CFrame
                                                        game:GetService'VirtualUser':CaptureController()
                                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                        AutoBartiloBring = true
                                                    until not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_Bartilo_Quest == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                                    AutoBartiloBring = false
                                                end)
                                            end
                                        end
                                    else
                                        repeat getgenv().ToTarget(CFrame.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)).Magnitude <= 10
                                    end
                                else
                                    repeat getgenv().ToTarget(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                                    wait(1.1)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
                                end 
                            elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Jeremy [Lv. 850] [Boss]" then
                                            OldCFrameBartlio = v.HumanoidRootPart.CFrame
                                            repeat wait()
                                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                                AutoHaki()
                                                EquipWeapon(_G.Select_Weapon)
                                                v.HumanoidRootPart.Transparency = 1
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                v.HumanoidRootPart.CFrame = OldCFrameBartlio
                                                getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                            until not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_Bartilo_Quest == false
                                        end
                                    end
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                                    repeat getgenv().ToTarget(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                                    wait(1.1)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
                                    wait(1)
                                    repeat getgenv().ToTarget(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                                    wait(2)
                                else
                                    repeat getgenv().ToTarget(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                                end
                            elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
                                repeat getgenv().ToTarget(CFrame.new(-1850.49329, 13.1789551, 1750.89685)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10
                                wait(1)
                                repeat getgenv().ToTarget(CFrame.new(-1858.87305, 19.3777466, 1712.01807)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10
                                wait(1)
                                repeat getgenv().ToTarget(CFrame.new(-1803.94324, 16.5789185, 1750.89685)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10
                                wait(1)
                                repeat getgenv().ToTarget(CFrame.new(-1858.55835, 16.8604317, 1724.79541)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10
                                wait(1)
                                repeat getgenv().ToTarget(CFrame.new(-1869.54224, 15.987854, 1681.00659)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1869.54224, 15.987854, 1681.00659)).Magnitude <= 10
                                wait(1)
                                repeat getgenv().ToTarget(CFrame.new(-1800.0979, 16.4978027, 1684.52368)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10
                                wait(1)
                                repeat getgenv().ToTarget(CFrame.new(-1819.26343, 14.795166, 1717.90625)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1819.26343, 14.795166, 1717.90625)).Magnitude <= 10
                                wait(1)
                                repeat getgenv().ToTarget(CFrame.new(-1813.51843, 14.8604736, 1724.79541)) wait() until not _G.Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1813.51843, 14.8604736, 1724.79541)).Magnitude <= 10
                            end
                        end 
                    end
                end)
            end)

            spawn(function()
                game:GetService("RunService").Heartbeat:Connect(function()
                    pcall(function()
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if _G.Auto_Farm_Ectoplasm and MagnetEctoplasm and string.find(v.Name, "Ship") and (v.HumanoidRootPart.Position - PosMonEctoplasm.Position).magnitude <= 350 then
                                v.HumanoidRootPart.CFrame = PosMonEctoplasm
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                            end
                        end
                    end)
                end)
            end)
        
            spawn(function()
                while wait() do
                    if _G.Auto_Farm_Ectoplasm then
                        pcall(function()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand [Lv. 1250]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer [Lv. 1275]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward [Lv. 1300]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer [Lv. 1325]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if string.find(v.Name, "Ship") then
                                        repeat wait()
                                            AutoHaki()
                                            EquipWeapon(_G.Select_Weapon)
                                            PosMonEctoplasm = v.HumanoidRootPart.CFrame
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                            MagnetEctoplasm = true
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        until _G.Auto_Farm_Ectoplasm == false or not v.Parent or v.Humanoid.Health <= 0
                                        MagnetEctoplasm = false
                                    else
                                        MagnetEctoplasm = false
                                        getgenv().ToTarget(CFrame.new(904.4072265625, 181.05767822266, 33341.38671875))
                                    end
                                end
                            else
                                MagnetEctoplasm = false
                                local Distance = (Vector3.new(904.4072265625, 181.05767822266, 33341.38671875) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                if Distance > 20000 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                                end
                                getgenv().ToTarget(CFrame.new(904.4072265625, 181.05767822266, 33341.38671875))
                            end
                        end)
                    end
                end
            end)

            spawn(function()
                game:GetService("RunService").Heartbeat:Connect(function()
                    pcall(function()
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if _G.Auto_Farm_Bone and StartMagnetBoneMon and (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]") and (v.HumanoidRootPart.Position - PosMonBone.Position).magnitude <= 350 then
                                v.HumanoidRootPart.CFrame = PosMonBone
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                            end
                        end
                    end)
                end)
            end)
        
            spawn(function()
                while wait() do
                    if _G.Auto_Farm_Bone and World3 then
                        pcall(function()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Domenic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
                                        if v.Humanoid.Health > 0 then
                                            repeat wait()
                                                AutoHaki()
                                                EquipWeapon(_G.Select_Weapon)
                                                StartMagnetBoneMon = true
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                PosMonBone = v.HumanoidRootPart.CFrame
                                                getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            until _G.Auto_Farm_Bone == false or not v.Parent or v.Humanoid.Health <= 0
                                        end
                                    end
                                end
                            else
                                StartMagnetBoneMon = false
                                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                                    if v.Name == "Reborn Skeleton [Lv. 1975]" then
                                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                    elseif v.Name == "Living Zombie [Lv. 2000]" then
                                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                    elseif v.Name == "Demonic Soul [Lv. 2025]" then
                                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                    elseif v.Name == "Posessed Mummy [Lv. 2050]" then
                                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                    end
                                end
                                getgenv().ToTarget(CFrame.new(-9466.72949, 171.162918, 6132.01514))
                            end
                        end)
                    end
                end
            end)

            spawn(function()
                pcall(function()
                    while wait() do
                        if _G.Auto_Rainbow_Haki then
                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
                            elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
                                if _G.Auto_Rainbow_Haki and game.ReplicatedStorage:FindFirstChild("Stone [Lv. 1550] [Boss]") or game.Workspace.Enemies:FindFirstChild("Stone [Lv. 1550] [Boss]") then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Stone [Lv. 1550] [Boss]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Stone [Lv. 1550] [Boss]" then
                                                OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                                repeat wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.Select_Weapon)
                                                    getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    game:GetService'VirtualUser':CaptureController()
                                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                            end
                                        end
                                    else
                                        getgenv().ToTarget(CFrame.new(-1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699, 0.805107772, 2.03251839e-05, 0.805323839, 0.592835128, -0.999732077, -0.0137055516, 0.0186523199))
                                    end
                                else
                                    if _G.Auto_Rainbow_Haki_Hop then
                                        Hop()
                                    end
                                end
                            elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress") then
                                if _G.Auto_Rainbow_Haki and game.ReplicatedStorage:FindFirstChild("Island Empress [Lv. 1675] [Boss]") or game.Workspace.Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Island Empress [Lv. 1675] [Boss]" then
                                                OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                                repeat wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.Select_Weapon)
                                                    getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    game:GetService'VirtualUser':CaptureController()
                                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                            end
                                        end
                                    else
                                        getgenv().ToTarget(CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, -0, -0.994878292, -0, 1, -0, 0.994878292, 0, -0.101080291))
                                    end
                                else
                                    if _G.Auto_Rainbow_Haki_Hop then
                                        Hop()
                                    end
                                end
                            elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
                                if _G.Auto_Rainbow_Haki and game.ReplicatedStorage:FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") or game.Workspace.Enemies:FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Kilo Admiral [Lv. 1750] [Boss]" then
                                                OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                                repeat wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.Select_Weapon)
                                                    getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                                    game:GetService'VirtualUser':CaptureController()
                                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                            end
                                        end
                                    else
                                        getgenv().ToTarget(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, -0, -0.143904909, -0, 1.00000012, -0, 0.143904924, 0, -0.989591479))
                                    end
                                else
                                    if _G.Auto_Rainbow_Haki_Hop then
                                        Hop()
                                    end
                                end
                            elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
                                if _G.Auto_Rainbow_Haki and game.ReplicatedStorage:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") or game.Workspace.Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
                                                OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                                repeat wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.Select_Weapon)
                                                    getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                                    game:GetService'VirtualUser':CaptureController()
                                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                            end
                                        end
                                    else
                                        getgenv().ToTarget(CFrame.new(-13485.0283, 331.709259, -8012.4873, 0.714521289, 7.98849911e-08, 0.69961375, -1.02065748e-07, 1, -9.94383065e-09, -0.69961375, -6.43015241e-08, 0.714521289))
                                    end
                                else 
                                    if _G.Auto_Rainbow_Haki_Hop then
                                        Hop()
                                    end
                                end
                            elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
                                if _G.Auto_Rainbow_Haki and game.ReplicatedStorage:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") or game.Workspace.Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
                                                OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                                repeat wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.Select_Weapon)
                                                    getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                                    game:GetService'VirtualUser':CaptureController()
                                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                            end
                                        end
                                    else
                                        getgenv().ToTarget(CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359))
                                    end
                                else 
                                    if _G.Auto_Rainbow_Haki_Hop then
                                        Hop()
                                    end
                                end
                            else
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
                            end
                        end
                    end
                end)
            end)

            spawn(function()
                game:GetService("RunService").Heartbeat:Connect(function()
                    pcall(function()
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if _G.Auto_Musketeer_Hat and StartMagnetMusketeerhat and v.Name == "Forest Pirate [Lv. 1825]" and (v.HumanoidRootPart.Position - MusketeerHatMon.Position).magnitude <= 350 then
                                v.HumanoidRootPart.CFrame = MusketeerHatMon
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                            end
                        end
                    end)
                end)
            end)
        
            spawn(function()
                pcall(function()
                    while wait() do
                        if _G.Auto_Musketeer_Hat then
                            if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false then
                                if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate [Lv. 1825]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Forest Pirate [Lv. 1825]" then
                                                repeat wait()
                                                    pcall(function()
                                                        AutoHaki()
                                                        EquipWeapon(_G.Select_Weapon)
                                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                                        v.HumanoidRootPart.CanCollide = false
                                                        game:GetService'VirtualUser':CaptureController()
                                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                        MusketeerHatMon = v.HumanoidRootPart.CFrame
                                                        StartMagnetMusketeerhat = true
                                                    end)
                                                until _G.Auto_Musketeer_Hat == false or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                                StartMagnetMusketeerhat = false
                                            end
                                        end
                                    else
                                        StartMagnetMusketeerhat = false
                                        getgenv().ToTarget(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
                                    end
                                else
                                    getgenv().ToTarget(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
                                    if (Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                                        wait(1.5)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
                                    end
                                end
                            elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss == false then
                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
                                                OldCFrameElephant = v.HumanoidRootPart.CFrame
                                                repeat wait()
                                                    pcall(function()
                                                        AutoHaki()
                                                        EquipWeapon(_G.Select_Weapon)
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.HumanoidRootPart.CFrame = OldCFrameElephant
                                                        game:GetService'VirtualUser':CaptureController()
                                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                    end)
                                                until _G.Auto_Musketeer_Hat == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                            end
                                        end
                                    else
                                        getgenv().ToTarget(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375))
                                    end
                                else
                                    getgenv().ToTarget(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
                                    if (CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                                        wait(1.5)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
                                    end
                                end
                            elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 2 then
                                getgenv().ToTarget(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
                            end
                        end
                    end
                end)
            end)

            spawn(function()
                game:GetService("RunService").Heartbeat:Connect(function()
                    pcall(function()
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if _G.Auto_Open_Dough_Dungeon and StartCakeMagnet and (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and (v.HumanoidRootPart.Position - POSCAKE.Position).magnitude <= 350 then
                                v.HumanoidRootPart.CFrame = POSCAKE
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                            end
                        end
                    end)
                end)
            end)
        
            spawn(function()
                while wait() do
                    if _G.Auto_Open_Dough_Dungeon then
                        pcall(function()
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                                if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SweetChaliceNpc"),"Where") then
                                    A:Notify("Your Not Have Enough Material",3)
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SweetChaliceNpc")
                                end
                            elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") then
                                if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),"Do you want to open the portal now?") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                                else
                                    if game.Workspace.Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game.Workspace.Enemies:FindFirstChild("Head Baker [Lv. 2275]") or game.Workspace.Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]")  then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do  
                                            if (v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Cookie Crafter [Lv. 2200]") and v.Humanoid.Health > 0 then
                                                repeat wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.Select_Weapon)
                                                    StartCakeMagnet = true
                                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
                                                    POSCAKE = v.HumanoidRootPart.CFrame
                                                    getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                                    game:GetService'VirtualUser':CaptureController()
                                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                until _G.Auto_Open_Dough_Dungeon == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or not v.Parent or v.Humanoid.Health <= 0
                                            end
                                        end
                                    else
                                        StartCakeMagnet = false
                                        getgenv().ToTarget(CFrame.new(-1820.0634765625, 210.74781799316406, -12297.49609375))
                                    end
                                end						
                            elseif game.ReplicatedStorage:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
                                        if v.Name == "Dough King [Lv. 2300] [Raid Boss]" then
                                            repeat wait()
                                                AutoHaki()
                                                EquipWeapon(_G.Select_Weapon)
                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                v.HumanoidRootPart.CanCollide = false
                                                getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            until _G.Auto_Open_Dough_Dungeon == false or not v.Parent or v.Humanoid.Health <= 0
                                        end    
                                    end    
                                else
                                    getgenv().ToTarget(CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875)) 
                                end
                            elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Red Key") or game.Players.LocalPlayer.Character:FindFirstChild("Red Key") then
                                local args = {
                                    [1] = "CakeScientist",
                                    [2] = "Check"
                                }
        
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            else
                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") then
                                        if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if v.Name == "Diablo [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" then
                                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                        repeat wait()
                                                            AutoHaki()
                                                            EquipWeapon(_G.Select_Weapon)
                                                            v.HumanoidRootPart.CanCollide = false
                                                            v.Humanoid.WalkSpeed = 0
                                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                            getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                                            game:GetService("VirtualUser"):CaptureController()
                                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                        until _G.Auto_Open_Dough_Dungeon == false or v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice")
                                                    end
                                                end
                                            end
                                        else
                                            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") then
                                                getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
                                                getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") then
                                                getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                            end
                                        end                    
                                    end
                                else
                                    wait(0.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                                end
                            end
                        end)
                    end
                end
            end)
        end
        local e = mis:AddTab("Others") do
            e:AddLabel("Others",true)
            e:AddToggle("Present",{Text = "Auto Present/Gift",Default = false}):OnChanged(function (a)
                _G.Present = a
                StopTween(_G.Present)
            end)
            spawn(function ()
                if _G.Present then
                    while wait() do
                        pcall(function ()
                            for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"]:GetChildren()) do
                                local Item = v

                                if Item:FindFirstChild("Present") then
                                    Item = Item.Present

                                    if Item:FindFirstChild("ProximityPrompt") then
                                        fireproximityprompt(Item.ProximityPrompt)
                                    end
                                end
                            end
                            if game:GetService("Workspace")["_WorldOrigin"].Present then
                                getgenv().ToTarget(game:GetService("Workspace")["_WorldOrigin"].Present)
                            end
                        end)
                    end
                end
            end)
        end
    end
    local s = maintab:AddRightTabbox() do
        local setin = s:AddTab("Mastery - Settings") do
            setin:AddSlider("Health",{Text = "Kill At (Default 40%)",Default = 40,Min = 0,Max = 100,Rounding = 0,Suffix = "%"}):OnChanged(function ()
                _G.Select_Health = L.Health.Value
            end)
            setin:AddSlider("DisX",{Text = "Distance X",Default = 0,Min = -100,Max = 100,Rounding = 0}):OnChanged(function ()
                _G.Select_Distance_X = L.DisX.Value
            end)
            setin:AddSlider("DisY",{Text = "Distance Y",Default = 35,Min = -100,Max = 100,Rounding = 0}):OnChanged(function ()
                _G.Select_Distance_Y = L.DisY.Value
            end)
            setin:AddSlider("DisZ",{Text = "Distance Z",Default = 0,Min = -100,Max = 100,Rounding = 0}):OnChanged(function ()
                _G.Select_Distance_Z = L.DisZ.Value
            end)
        end
    end
end
Melee = {"Combat","Black Leg","Electro","Fishman Karate","Dragon Claw","Superhuman","Death Step","Electric Claw","Sharkman Karate","Dragon Talon","Godhuman"}


local itemtab = u:AddTab("Items") do
    local com = itemtab:AddLeftTabbox() do
        local combat = com:AddTab("Fists") do
            function MeleeBuy(N1,N2,N3,N4)
                combat:AddButton(N1,function ()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(N2,N3,N4)
                end)
            end
            combat:AddLabel("Fighting Styles",true)
            MeleeBuy("Black Leg","BuyBlackLeg")
            MeleeBuy("Electro","BuyElectro")
            MeleeBuy("Fishman Karate","BuyFishmanKarate")
            MeleeBuy("Dragon Claw","BlackbeardReward","DragonClaw","2")
            MeleeBuy("Superhuman","BuySuperhuman")
            MeleeBuy("Death Step","BuyDeathStep")
            MeleeBuy("Sharkman Karate","BuySharkmanKarate")
            MeleeBuy("Electric Claw","BuyElectricClaw")
            MeleeBuy("Dragon Talon","BuyDragonTalon")
            MeleeBuy("God Human","BuyGodhuman")
        end
        local sword = com:AddTab("Swords") do
            sword:AddLabel("Sword Styles",true)
            sword:AddButton("Katana", function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
            end)
            
            sword:AddButton("Cutlass", function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
            end)
            
            sword:AddButton("Duel Katana", function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
            end)
            
            sword:AddButton("Iron Mace", function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
            end)
            
            sword:AddButton("Pipe", function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
            end)
            
            sword:AddButton("Triple Katana", function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
            end)
            
            sword:AddButton("Dual-Headed Blade", function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
            end)
            
            sword:AddButton("Bisento", function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
            end)
    
            sword:AddButton("Soul Cane", function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
            end)
        end
    end
    local shopright = itemtab:AddRightTabbox() do
        local Gun = shopright:AddTab("Guns") do
            Gun:AddLabel("Gun Styles",true)
            Gun:AddButton("Slingshot", function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
            end)
            
            Gun:AddButton("Musket", function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
            end)
            
            Gun:AddButton("Flintlock", function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
            end)
            
            Gun:AddButton("Refined Flintlock", function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock")
            end)
            
            Gun:AddButton("Cannon", function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
            end)
            
            Gun:AddButton("Kabucha", function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","1")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2")
            end)
        end
    end
    local tab9 = itemtab:AddLeftTabbox() do
        local acc = tab9:AddTab("Accessory") do
            acc:AddButton("Black Cape", function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Black Cape")
            end)
            
            acc:AddButton("Toemo Ring", function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Tomoe Ring")
            end)
            
            acc:AddButton("Swordsman Hat", function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Swordsman Hat")
            end)
        end
    end
    local tab10 = itemtab:AddRightTabbox() do
        local ab = tab10:AddTab("Ability") do
            ab:AddButton("Skyjump", function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
            end)
            ab:AddButton("Buso Haki", function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
            end)
            ab:AddButton("Soru", function()
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
            end)
            ab:AddButton("Ken Haki", function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
            end)
        end
    end
    local tab11 = itemtab:AddRightTabbox() do
        local miop = tab11:AddTab("Race") do
            miop:AddButton("Race Ghoul",function ()
                local args = {
                    [1] = "Ectoplasm",
                    [2] = "BuyCheck",
                    [3] = 4
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {
                    [1] = "Ectoplasm",
                    [2] = "Change",
                    [3] = 4
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end)
            miop:AddButton("Race Cyborg",function ()
                local args = {
                    [1] = "CyborgTrainer",
                    [2] = "Buy"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end)
            miop:AddButton("Random Race",function ()
                local args = {
                    [1] = "BlackbeardReward",
                    [2] = "Reroll",
                    [3] = "2"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end)
            miop:AddButton("Reset Stat",function ()
                local args = {
                    [1] = "BlackbeardReward",
                    [2] = "Refund",
                    [3] = "2"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end)
        end
    end
end

local combat = u:AddTab("Combat") do
    local pler = combat:AddLeftTabbox() do
        local sle = pler:AddTab("Players") do
            sle:AddLabel("Select Players",true)
            local sy={};
            for a,w4 in pairs(game:GetService("Players"):GetChildren())do 
                if w4.Name~=i.Name then table.insert(sy,w4.Name);
                end;
            end;
            sle:AddDropdown("Selected_Players",{Text="Select Players",Values=sy,Multi=false}):OnChanged(function (a)
                _G.SelectPly = a
            end);
            game:GetService("Players").PlayerAdded:Connect(function(a)table.insert(sy,tostring(a.Name));
                L.Selected_Players.Values=sy;L.Selected_Players:SetValues();
            end);
            game:GetService("Players").PlayerRemoving:Connect(function(a)
                local ce=table.find(sy,tostring(a.Name));
                if ce then table.remove(sy,ce);
                end;
                L.Selected_Players.Values=sy;
                L.Selected_Players:SetValues();
            end);

            sle:AddLabel("Main Stuff",true)
            sle:AddToggle("AutoFarmPlr",{Text = "Auto Farm Players",Default = false}):OnChanged(function (a)
                _G.Auto_Kill_Ply = a
                StopTween(_G.Auto_Kill_Ply)
            end)
            sle:AddToggle("Auto_Farm_Plr_Gun",{
                Text = "Auto Farm Players Use Only Gun",
                Default = false
            }):OnChanged(function (a)
                _G.Auto_Kill_Player_Gun = a
                StopTween(_G.Auto_Kill_Player_Gun)
            end)
            sle:AddLabel("Special Staff")
            sle:AddToggle("ESP_Player",{Text = "ESP Players",Default = false}):OnChanged(function (a)
                PlayerESP = a
                while PlayerESP do wait()
                    UpdatePlayer()
                end
            end)
            sle:AddToggle("Spectate",{
                Text = "Spectate Players",
                Default = false
            }):OnChanged(function (a)
                _G.Spectate_Player = a
            end)
            sle:AddLabel("Miscellaneous",true)
            sle:AddToggle("Teleport_Player",{
                Text = "Teleport To Players",
                Default = false
            }):OnChanged(function (a)
                _G.TeleportPly = a
                pcall(function()
                    if _G.TeleportPly then
                        repeat 
                            getgenv().ToTarget(game:GetService("Players")[_G.SelectPly].Character.HumanoidRootPart.CFrame) 
                            wait() 
                        until _G.TeleportPly == false
                    end
                    StopTween(_G.TeleportPly)
                end)
            end)
    
            spawn(function()
                while wait() do
                    if _G.Spectate_Player then
                        pcall(function()
                            if game.Players:FindFirstChild(_G.SelectPly) then
                                game.Workspace.Camera.CameraSubject = game.Players:FindFirstChild(_G.SelectPly).Character.Humanoid
                            end
                        end)
                    else
                        game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
                    end
                end
            end)

            spawn(function()
                while wait() do 
                    pcall(function()
                        if _G.Auto_Kill_Player_Gun then
                            if game.Players:FindFirstChild(_G.SelectPly) then
                                for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                                    if v.Name == _G.SelectPly and v.Humanoid.Health > 0 then
                                        repeat wait()
                                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                                getgenv().ToTarget(v.HumanoidRootPart.CFrame)
                                            elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                AutoHaki()
                                                EquipWeapon(SelectToolWeaponGun)
                                                UseGunKillPlayer = true
                                                game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun].Cooldown.Value = 0
                                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                v.HumanoidRootPart.Transparency = 0.7
                                                getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,50,-10))
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            end
                                        until game.Players:FindFirstChild(_G.SelectPly).Character.Humanoid.Health <= 0 or not _G.Auto_Kill_Player_Gun or not game.Players:FindFirstChild(_G.SelectPly)
                                    end
                                end
                            end
                        else
                            UseGunKillPlayer = false
                        end
                    end)
                end
            end)

            spawn(function()
                while wait() do
                    if _G.Auto_Kill_Ply then
                        pcall(function()
                            if _G.SelectPly ~= nil then 
                                if game.Players:FindFirstChild(_G.SelectPly) then
                                    if game.Players:FindFirstChild(_G.SelectPly).Character.Humanoid.Health > 0 then
                                        repeat task.wait()
                                            EquipWeapon(_G.SelectWeapon)
                                            AutoHaki()
                                            game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.CanCollide = false
                                            getgenv().ToTarget(game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                            spawn(function()
                                                pcall(function()
                                                    if _G.Select_Weapon == SelectWeaponGun then
                                                        local args = {
                                                            [1] = game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.Position,
                                                            [2] = game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart
                                                        }
                                                        game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                                                        game:GetService("VirtualUser"):CaptureController()
                                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                    else
                                                        game:GetService("VirtualUser"):CaptureController()
                                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                    end
                                                end)
                                            end)
                                        until game.Players:FindFirstChild(_G.SelectPly).Character.Humanoid.Health <= 0 or not game.Players:FindFirstChild(_G.SelectPly) or not _G.Auto_Kill_Ply
                                    end
                                end
                            end
                        end)
                    end
                end
            end)
    
            spawn(function()
                while wait() do
                    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
                        if v:IsA("Tool") then
                            if v:FindFirstChild("RemoteFunctionShoot") then 
                                SelectToolWeaponGun = v.Name
                            end
                        end
                    end
                    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
                        if v:IsA("Tool") then
                            if v:FindFirstChild("RemoteFunctionShoot") then 
                                SelectToolWeaponGun = v.Name
                            end
                        end
                    end
                end
            end)
    
            spawn(function()
                game:GetService("RunService").RenderStepped:Connect(function()
                    if UseGunKillPlayer then
                        pcall(function()
                            for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                                if v.Name == _G.SelectPly then
                                    local args = {
                                        [1] = v.HumanoidRootPart.Position,
                                        [2] = v.HumanoidRootPart
                                    }
                                    game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                                end
                            end
                        end)
                    end
                end)
            end)
        end
    end
    local aimtb = combat:AddRightTabbox() do
        aim = aimtb:AddTab("Aimbot") do
            aim:AddLabel("Aimbot Skill & Gun",true)
            aim:AddToggle("Aimbot",{
                Text = "Aimbot Skill & Gun",
                Default = false
            }):OnChanged(function (a)
                AimBotFullFunction = a
            end)
            aim:AddLabel("Skill - Fov Aimbot",true)
            aim:AddToggle("Fov",{
                Text = "Enabled Fov",
                Default = false
            }):OnChanged(function (a)
                ShowFov = a
            end)
            local c = aim:AddLabel("Fov - Settings",true)
            aim:AddLabel("Color :"):AddColorPicker('ColorPicker', {
                Default = Color3.fromRGB(255,255,255),
                Title = 'Fov Color',
            })
            L.ColorPicker:OnChanged(function()
                _G.ColorFov = L.ColorPicker.Value
            end)
            aim:AddSlider("Fov_Size",{
                Text = "Fov Radius",
                Default = 200,
                Min = 1,
                Max = 500,
                Compact = false,
                Rounding = 0,
            }):OnChanged(function ()
                _G.FOVSize = L.Fov_Size.Value
            end)
            aim:AddSlider("Fov_NumSides",{
                Text = "Fov NumSides",
                Default = 64,
                Min = 1,
                Max = 64,
                Compact = false,
                Rounding = 0,
            }):OnChanged(function ()
                _G.Numsi = L.Fov_NumSides.Value
            end)
            aim:AddSlider("Fov_Thickness",{
                Text = "Fov Thickness",
                Default = 1,
                Min = 1,
                Max = 10,
                Compact = false,
                Rounding = 0,
            }):OnChanged(function ()
                _G.Thicknis = L.Fov_Thickness.Value
            end)
            local FOVCircle = Drawing.new("Circle")
            FOVCircle.Thickness = 2
            FOVCircle.NumSides = 460
            FOVCircle.Filled = false
            FOVCircle.Transparency = 1
            FOVCircle.Radius = 200
            FOVCircle.Color = Color3.fromRGB(255, 0, 0)
            
            game:GetService("RunService").Stepped:Connect(function()
                FOVCircle.Radius = _G.FOVSize
                FOVCircle.Thickness = _G.Thicknis
                FOVCircle.NumSides = _G.Numsi
                FOVCircle.Position = game:GetService('UserInputService'):GetMouseLocation()
                FOVCircle.Color = _G.ColorFov
                if ShowFov then
                    FOVCircle.Visible = true
                else
                    FOVCircle.Visible = false
                end
            end)
            local lp = game:GetService('Players').LocalPlayer
            local mouse = lp:GetMouse()
            spawn(function()
                while wait() do
                    if AimBotFullFunction then
                        pcall(function()
                            local MaxDist, Closest = math.huge
                            for i,v in pairs(game:GetService("Players"):GetChildren()) do 
                                local Head = v.Character:FindFirstChild("HumanoidRootPart")
                                local Pos, Vis = game.Workspace.CurrentCamera.WorldToScreenPoint(game.Workspace.CurrentCamera, Head.Position)
                                local MousePos, TheirPos = Vector2.new(mouse.X, mouse.Y), Vector2.new(Pos.X, Pos.Y)
                                local Dist = (TheirPos - MousePos).Magnitude
                                if Dist < MaxDist and Dist <= _G.FOVSize and v.Name ~= game.Players.LocalPlayer.Name then
                                    MaxDist = Dist
                                    _G.CharacterAimBot = v
                                end
                            end
                        end)
                    end
                end
            end)
            
            spawn(function()
                local gg = getrawmetatable(game)
                local old = gg.__namecall
                setreadonly(gg,false)
                gg.__namecall = newcclosure(function(...)
                    local method = getnamecallmethod()
                    local args = {...}
                    if tostring(method) == "FireServer" then
                        if tostring(args[1]) == "RemoteEvent" then
                            if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                                if AimBotFullFunction then
                                    args[2] = _G.CharacterAimBot.Character.HumanoidRootPart.Position
                                    return old(unpack(args))
                                end
                            end
                        end
                    end
                    return old(...)
                end)
            end)
            spawn(function()
                while wait() do
                    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
                        if v:IsA("Tool") then
                            if v:FindFirstChild("RemoteFunctionShoot") then 
                                SelectToolWeaponGun = v.Name
                            end
                        end
                    end
                    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
                        if v:IsA("Tool") then
                            if v:FindFirstChild("RemoteFunctionShoot") then 
                                SelectToolWeaponGun = v.Name
                            end
                        end
                    end
                end
            end)
            
            spawn(function()
                mouse.Button1Down:Connect(function()
                    if SelectToolWeaponGun ~= nil then
                        if AimBotFullFunction and game.Players.LocalPlayer.Character:FindFirstChild(SelectToolWeaponGun) and game:GetService("Players"):FindFirstChild(_G.CharacterAimBot.Name) then
                            tool = game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun]
                            v17 = workspace:FindPartOnRayWithIgnoreList(Ray.new(tool.Handle.CFrame.p, (game:GetService("Players"):FindFirstChild(_G.CharacterAimBot.Name).Character.HumanoidRootPart.Position - tool.Handle.CFrame.p).unit * 100), { game.Players.LocalPlayer.Character, workspace._WorldOrigin });
                            game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(game:GetService("Players"):FindFirstChild(_G.CharacterAimBot.Name).Character.HumanoidRootPart.Position, (require(game.ReplicatedStorage.Util).Other.hrpFromPart(v17)));
                        end 
                    end
                end)
            end)
        end
    end
    local tab14 = combat:AddLeftTabbox() do
        local bounty = tab14:AddTab("Bounty") do
            local Current = bounty:AddLabel("")
            local Bounty = tostring(game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value)
            local sub = string.sub
            local len = string.len
            spawn(function()
                while wait() do
                    pcall(function()
                        if len(Bounty) == 4 then
                            Bounty1 = sub(Bounty,1,1).."."..sub(Bounty,2,3).."K"
                        elseif len(Bounty) == 5 then
                            Bounty1 = sub(Bounty,1,2).."."..sub(Bounty,3,4).."K"
                        elseif len(Bounty) == 6 then
                            Bounty1 = sub(Bounty,1,3).."."..sub(Bounty,4,5).."K"
                        elseif len(Bounty) == 7 then
                            Bounty1 = sub(Bounty,1,1).."."..sub(Bounty,2,3).."M"
                        elseif len(Bounty) == 8 then
                            Bounty1 = sub(Bounty,1,2).."."..sub(Bounty,3,4).."M"
                        elseif len(Bounty) <= 3 then
                            Bounty1 = Bounty
                        end
                        if tonumber(Bounty) == 25000000 then
                            Current:ChangeText("Current Bounty : "..Bounty1.." [ Max ]")
                        elseif tonumber(Bounty) < 25000000 then
                            Current:ChangeText("Current Bounty : "..Bounty1)
                        end
                    end)
                end
            end)
            
            local Earn = bounty:AddLabel("")
            local OldBounty = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value
            local Bounty = tostring(game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value)
            local Earned = tostring(game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value - OldBounty)
            local sub = string.sub 
            local len = string.len
            spawn(function()
                while wait() do
                    pcall(function()
                        if len(Earned) == 4 then
                            Earned1 = sub(Earned,1,1).."."..sub(Earned,2,3).."K"
                        elseif len(Earned) == 5 then
                            Earned1 = sub(Earned,1,2).."."..sub(Earned,3,4).."K"
                        elseif len(Earned) == 6 then
                            Earned1 = sub(Earned,1,3).."."..sub(Earned,4,5).."K"
                        elseif len(Earned) == 7 then
                            Earned1 = sub(Earned,1,1).."."..sub(Earned,2,3).."M"
                        elseif len(Earned) == 8 then
                            Earned1 = sub(Earned,1,2).."."..sub(Earned,3,4).."M"
                        elseif len(Earned) <= 3 then
                            Earned1 = Earned
                        end
                        Earn:ChangeText("Earned Bounty : "..tonumber(Earned1))
                    end)
                end
            end)
        end
    end
    local tab15 = combat:AddRightTabbox() do
        boost = tab15:AddTab("Boost - Up") do
            boost:AddLabel("Race - Boost",true)
            boost:AddToggle("Auto_Ability",{
                Text = "Auto Activate Ability",
                Default = false
            }):OnChanged(function (a)
                _G.AutoAbilty = a
            end)
            boost:AddLabel("Movement - Boost",true)
            boost:AddToggle("InfAbilitys",{
                Text = "Inf Ability",
                Default = false
            }):OnChanged(function (a)
                _G.Infinit_Ability = a
            end)
            boost:AddToggle('InfEnergy',{
                Text = "Inf Stamina",
                Default = false
            }):OnChanged(function (a)
                _G.Infinit_Energy = a
                InfinitEnergy()
            end)
            boost:AddLabel("No Cooldown",true)
            boost:AddToggle("Dodge",{
                Text = "No Dodge Cooldown",
                Default = false
            }):OnChanged(function (a)
                _G.Dodge_No_CoolDown = a
                DodgeNoCoolDown()
            end)
            boost:AddToggle("Soru",{
                Text = "No Soru Cooldown",
                Default = false
            }):OnChanged(function (a)
                _G.Infinit_Soru = a
                SoruNoCoolDown()
            end)
            boost:AddToggle("Geppo",{
                Text = "No Geppo Cooldown",
                Default = false
            }):OnChanged(function (a)
                _G.Infinit_SkyJump = a
                SkyJumpNoCoolDown()
            end)
            boost:AddLabel("Miscellaneous",true)
            boost:AddToggle("WalkWater",{
                Text = "Walk On Water",
                Default = false
            }):OnChanged(function (a)
                WaterWalk = a
            end)
            if game.workspace:FindFirstChild("WaterWalk") then
                game.workspace:FindFirstChild("WaterWalk"):Destroy()
            end
            local platform = Instance.new("Part")
            platform.Name = "WaterWalk"
            platform.Size = Vector3.new(30, 1, 30)
            platform.Transparency = 0
            platform.Anchored = true
            platform.Parent = game.workspace
            spawn(function()
                while task.wait() do
                    if WaterWalk then
                        platform.CanCollide = true
                        platform.Position = Vector3.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.X,game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Y * 0 -5, game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Z)
                    else
                        platform.CanCollide = false
                        platform.Position = Vector3.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.X,game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Y * 0 -6, game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Z)
                    end
                end
            end)

            spawn(function ()
                while wait() do
                    if _G.AutoAbilty then
                        game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
                    end
                end
            end)

            spawn(function()
                while wait() do
                    if _G.Infinit_Ability then
                        InfAbility()
                    end
                end
            end)
        end
    end
    local df = combat:AddLeftTabbox() do
        local dvi = df:AddTab("Devil Fruits") do
            dvi:AddLabel("Select Devil Fruit Snipers",true)
            FruitList = {
                "Bomb-Bomb",
                "Spike-Spike",
                "Chop-Chop",
                "Spring-Spring",
                "Kilo-Kilo",
                "Spin-Spin",
                "Bird: Falcon",
                "Smoke-Smoke",
                "Flame-Flame",
                "Ice-Ice",
                "Sand-Sand",
                "Dark-Dark",
                "Revive-Revive",
                "Diamond-Diamond",
                "Light-Light",
                "Love-Love",
                "Rubber-Rubber",
                "Barrier-Barrier",
                "Magma-Magma",
                "Portal-Portal",
                "Quake-Quake",
                "Human-Human: Buddha",
                "String-String",
                "Bird-Bird: Phoenix",
                "Rumble-Rumble",
                "Paw-Paw",
                "Gravity-Gravity",
                "Dough-Dough",
                "Venom-Venom",
                "Shadow-Shadow",
                "Control-Control",
                "Blizzard-Blizzard",
                "Spirit-Spirit",
                "Dragon-Dragon",
                "Leopard-Leopard"
            }
            dvi:AddDropdown("DF",{Text = "Select Devil Fruits",Default = 0,Values = FruitList}):OnChanged(function (a)
                _G.SelectFruit = a
            end)
            dvi:AddLabel("Main Stuff",true)
            dvi:AddToggle("AutoFruit",{
                Text = "Auto Random Fruits",
                Default = false
            }):OnChanged(function (a)
                _G.Random_Auto = a
            end)
    
            spawn(function()
                pcall(function()
                    while wait() do
                        if _G.Random_Auto then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
                        end 
                    end
                end)
            end)
    
            dvi:AddToggle("BuyFruit",{
                Text = "Auto Buy Fruit Sniper",
                Default = false
            }):OnChanged(function (a)
                _G.AutoBuyFruitSniper = a
            end)
    
            spawn(function()
                pcall(function()
                    while wait() do
                        if _G.AutoBuyFruitSniper then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit",_G.SelectFruit)
                        end 
                    end
                end)
            end)
        end
    end
end
local vi = u:AddTab("Visuals") do
    local te = vi:AddLeftTabbox() do
        tpmap = te:AddTab("Map - Teleport") do
            tpmap:AddLabel("Map - Teleport",true)
            tpmap:AddButton("Teleport To East Blue",function ()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
            end)
            tpmap:AddButton("Teleport To Second Sea",function ()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
            end)
            tpmap:AddButton("Teleport To Zou",function ()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
            end)
        end
        local esp = te:AddTab("ESP - M") do
            esp:AddLabel("ESP - M",true)
            esp:AddToggle("ESPC",{Text = "Chests ESP",Default = false}):OnChanged(function (a)
                ChestESP = a
                while ChestESP do wait()
                    UpdateChest() 
                end
            end)
            esp:AddToggle("ESPF",{Text = "Flowers ESP",Default = false}):OnChanged(function (a)
                FlowerESP = a
                while FlowerESP do wait()
                    UpdateFlower()
                end
            end)
            esp:AddToggle("ESPFr",{Text = "Fruits ESP",Default = false}):OnChanged(function (a)
                DevilFruitESP = a
                while DevilFruitESP do wait()
                    UpdateDevilFruit()
                end
            end)
            esp:AddLabel("Soon",true)
        end
    end
    local dun = vi:AddRightTabbox() do
        local dungeon = dun:AddTab("Dungeons") do
            dungeon:AddLabel("Select Dungeons",true)
            dungeon:AddDropdown("SelectChip",{
                Values = {"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Human: Buddha","Sand","Bird: Phoenix","Dough"},
                Default = 1,
                Multi = false,
                Text = "Select Dungeons",
            }):OnChanged(function (a)
                _G.SelectChip = a
            end)
            dungeon:AddLabel("Auto Raid - Dungeons",true)

            dungeon:AddToggle("Auto_Farm_Dungeons",{
                Text = "Auto Farm Dungeons",
                Default = false
            }):OnChanged(function (a)
                _G.Auto_Dungeon = a
                StopTween(_G.Auto_Dungeon)
            end)
    
            spawn(function()
                pcall(function() 
                    while wait() do
                        if _G.Auto_Dungeon then
                            if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        pcall(function()
                                            repeat task.wait()                                    
                                                v.Humanoid.Health = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                            until not _G.Auto_Dungeon or not v.Parent or v.Humanoid.Health <= 0
                                        end)
                                    end
                                end
                            end
                        end
                    end
                end)
            end)
            
            spawn(function()
                pcall(function()
                    while wait() do
                        if _G.Auto_Dungeon then
                            if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                                if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                                    getgenv().ToTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(100,70,100))
                                elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                                    getgenv().ToTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(100,70,100))
                                elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                                    getgenv().ToTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(100,70,100))
                                elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                                    getgenv().ToTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(100,70,100))
                                elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                                    getgenv().ToTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(100,70,100))
                                end
                            end
                        end
                    end
                end)
            end)
    
            dungeon:AddToggle("Start",{
                Text = "Auto Start Dungeons",
                Default = false
            }):OnChanged(function (a)
                _G.Auto_StartRaid = a
            end)
    
            spawn(function()
                pcall(function()
                    while wait() do
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                            if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                                if _G.Auto_StartRaid then
                                    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                                        if W2 then
                                            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                                        elseif W3 then
                                            fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                                        end
                                    end
                                end
                            end
                        else
                            if _G.AutoBuyChip then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip)
                            end
                        end
                    end
                end)
            end)
            dungeon:AddLabel("Auto Raid - Settings",true)
            dungeon:AddToggle("Awake",{
                Text = "Auto Awakened",
                Default = false
            }):OnChanged(function (a)
                _G.Auto_Awakener = a
            end)
    
            spawn(function()
                pcall(function()
                    while wait() do
                        if _G.Auto_Awakener then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Check")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
                        end
                    end
                end)
            end)
            dungeon:AddToggle("BuyChip",{
                Text = "Auto Buy Chips",
                Default = false
            }):OnChanged(function (a)
                _G.AutoBuyChip = a
            end)
    
            dungeon:AddToggle("Sel",{
                Text = "Auto Select Dungeons",
                Default = false
            }):OnChanged(function (a)
                _G.AutoSelectDungeon = a
            end)
    
            spawn(function()
                while wait() do
                    if _G.AutoSelectDungeon then
                        pcall(function()
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame-Flame") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame-Flame") then
                                _G.SelectChip = "Flame"
                            elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice-Ice") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice-Ice") then
                                _G.SelectChip = "Ice"
                            elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake-Quake") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake-Quake") then
                                _G.SelectChip = "Quake"
                            elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light-Light") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light-Light") then
                                _G.SelectChip = "Light"
                            elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark-Dark") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark-Dark") then
                                _G.SelectChip = "Dark"
                            elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("String-String") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String-String") then
                                _G.SelectChip = "String"
                            elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble-Rumble") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble-Rumble") then
                                _G.SelectChip = "Rumble"
                            elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma-Magma") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma-Magma") then
                                _G.SelectChip = "Magma"
                            elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") then
                                _G.SelectChip = "Human: Buddha"
                            elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand-Sand") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand-Sand") then
                                _G.SelectChip = "Sand"
                            elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird-Bird: Phoenix") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird-Bird: Phoenix") then
                                _G.SelectChip = "Bird: Phoenix"
                            elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough") then
                                _G.SelectChip = "Dough"
                            end
                        end)
                    end
                end
            end)
        end
    end
    local tp = vi:AddLeftTabbox() do
        local tele = tp:AddTab("Island - Teleport") do
            if World1 then
                Island = {
                    "WindMill",
                    "Marine",
                    "Middle Town",
                    "Jungle",
                    "Pirate Village",
                    "Desert",
                    "Snow Island",
                    "MarineFord",
                    "Colosseum",
                    "Sky Island 1",
                    "Sky Island 2",
                    "Sky Island 3",
                    "Prison",
                    "Magma Village",
                    "Under Water Island",
                    "Fountain City",
                    "Shank Room",
                    "Mob Island"
                    }
            elseif World2 then
                Island = {
                    "The Cafe",
                    "Frist Spot",
                    "Dark Area",
                    "Flamingo Mansion",
                    "Flamingo Room",
                    "Green Zone",
                    "Factory",
                    "Colossuim",
                    "Zombie Island",
                    "Two Snow Mountain",
                    "Punk Hazard",
                    "Cursed Ship",
                    "Ice Castle",
                    "Forgotten Island",
                    "Ussop Island",
                    "Mini Sky Island"
                    }
            elseif World3 then
                Island = {
                    "Mansion",
                    "Port Town",
                    "Great Tree",
                    "Castle On The Sea",
                    "MiniSky", 
                    "Hydra Island",
                    "Floating Turtle",
                    "Haunted Castle",
                    "Ice Cream Island",
                    "Peanut Island",
                    "Cake Island",
                    "Chocolate Island",
                    "Christmas Island"
                }
            end
            tele:AddLabel("Island Select",true)
            tele:AddDropdown("SelectIsland",{
                Values = Island,
                Default = 1,
                Multi = false,
                Text = "Select Island"
            }):OnChanged(function (a)
                _G.Select_Island = a
            end)
            tele:AddLabel("Main Stuff",true)
            tele:AddToggle("ESPI",{Text = "Island ESP",Default = false}):OnChanged(function (a)
                IslandESP = a
                while IslandESP do wait()
                    UpdateIsland() 
                end
            end)
            tele:AddToggle("TP",{Text = "Teleport Island",Default = false}):OnChanged(function (a)
                _G.Start_Tween_Island = a

                if _G.Start_Tween_Island == true then
                    repeat wait()
                        if _G.Select_Island == "WindMill" then
                            getgenv().ToTarget(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
                        elseif _G.Select_Island == "Marine" then
                            getgenv().ToTarget(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
                        elseif _G.Select_Island == "Middle Town" then
                            getgenv().ToTarget(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
                        elseif _G.Select_Island == "Jungle" then
                            getgenv().ToTarget(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
                        elseif _G.Select_Island == "Pirate Village" then
                            getgenv().ToTarget(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
                        elseif _G.Select_Island == "Desert" then
                            getgenv().ToTarget(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
                        elseif _G.Select_Island == "Snow Island" then
                            getgenv().ToTarget(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
                        elseif _G.Select_Island == "MarineFord" then
                            getgenv().ToTarget(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
                        elseif _G.Select_Island == "Colosseum" then
                            getgenv().ToTarget( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
                        elseif _G.Select_Island == "Sky Island 1" then
                            getgenv().ToTarget(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
                        elseif _G.Select_Island == "Sky Island 2" then  
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
                        elseif _G.Select_Island == "Sky Island 3" then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                        elseif _G.Select_Island == "Prison" then
                            getgenv().ToTarget( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
                        elseif _G.Select_Island == "Magma Village" then
                            getgenv().ToTarget(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
                        elseif _G.Select_Island == "Under Water Island" then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                        elseif _G.Select_Island == "Fountain City" then
                            getgenv().ToTarget(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
                        elseif _G.Select_Island == "Shank Room" then
                            getgenv().ToTarget(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
                        elseif _G.Select_Island == "Mob Island" then
                            getgenv().ToTarget(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
                        elseif _G.Select_Island == "The Cafe" then
                            getgenv().ToTarget(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
                        elseif _G.Select_Island == "Frist Spot" then
                            getgenv().ToTarget(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
                        elseif _G.Select_Island == "Dark Area" then
                            getgenv().ToTarget(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
                        elseif _G.Select_Island == "Flamingo Mansion" then
                            getgenv().ToTarget(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
                        elseif _G.Select_Island == "Flamingo Room" then
                            getgenv().ToTarget(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
                        elseif _G.Select_Island == "Green Zone" then
                            getgenv().ToTarget( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
                        elseif _G.Select_Island == "Factory" then
                            getgenv().ToTarget(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
                        elseif _G.Select_Island == "Colossuim" then
                            getgenv().ToTarget( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
                        elseif _G.Select_Island == "Zombie Island" then
                            getgenv().ToTarget(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
                        elseif _G.Select_Island == "Two Snow Mountain" then
                            getgenv().ToTarget(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
                        elseif _G.Select_Island == "Punk Hazard" then
                            getgenv().ToTarget(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
                        elseif _G.Select_Island == "Cursed Ship" then
                            getgenv().ToTarget(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
                        elseif _G.Select_Island == "Ice Castle" then
                            getgenv().ToTarget(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
                        elseif _G.Select_Island == "Forgotten Island" then
                            getgenv().ToTarget(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
                        elseif _G.Select_Island == "Ussop Island" then
                            getgenv().ToTarget(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
                        elseif _G.Select_Island == "Mini Sky Island" then
                            getgenv().ToTarget(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
                        elseif _G.Select_Island == "Great Tree" then
                            getgenv().ToTarget(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
                        elseif _G.Select_Island == "Castle On The Sea" then
                            getgenv().ToTarget(CFrame.new(-5074.45556640625, 314.5155334472656, -2991.054443359375))
                        elseif _G.Select_Island == "MiniSky" then
                            getgenv().ToTarget(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
                        elseif _G.Select_Island == "Port Town" then
                            getgenv().ToTarget(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
                        elseif _G.Select_Island == "Hydra Island" then
                            getgenv().ToTarget(CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625))
                        elseif _G.Select_Island == "Floating Turtle" then
                            getgenv().ToTarget(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
                        elseif _G.Select_Island == "Mansion" then
                            getgenv().ToTarget(CFrame.new(-12547.71, 340, -7487.06494))
                        elseif _G.Select_Island == "Haunted Castle" then
                            getgenv().ToTarget(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
                        elseif _G.Select_Island == "Ice Cream Island" then
                            getgenv().ToTarget(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
                        elseif _G.Select_Island == "Peanut Island" then
                            getgenv().ToTarget(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
                        elseif _G.Select_Island == "Cake Island" then
                            getgenv().ToTarget(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
                        elseif _G.Select_Island == 'Chocolate Island' then
                            getgenv().ToTarget(CFrame.new(14.3735638, 20.5485172, -12048.2598, -0.68978548, 0, 0.724013805, 0, 1, 0, -0.724013805, 0, -0.68978548))
                        elseif _G.Select_Island == 'Christmas Island' then
                            getgenv().ToTarget(CFrame.new(-1048.34424, 14.8212471, -14183.3379, -0.987955391, 5.88209268e-08, -0.154739052, 6.96052709e-08, 1, -6.42758025e-08, 0.154739052, -7.4272279e-08, -0.987955391))
                        end
                    until not _G.Start_Tween_Island
                end
                StopTween(_G.Start_Tween_Island)
            end)
        end
    end
    local sts = vi:AddRightTabbox() do
        local status = sts:AddTab("Statistics") do
            local a = status:AddLabel("")
            spawn(function()
                while wait() do
                    pcall(function()
                        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                            if i == 12 then
                                a:ChangeText(" "..i.." ".."/".." ".."12".." ".."(Max)")
                            elseif i == 1 then
                                a:ChangeText(" "..i.." ".."/".." ".."12")
                            else
                                a:ChangeText(" "..i.." ".."/".." ".."12")
                            end
                        end
                    end)
                end
            end)
            status:AddLabel("12 Players Max")
            status:AddLabel("Place ID : "..game.PlaceId)
            Infomation = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId);
            NameGames = Infomation.Name
            status:AddLabel(NameGames)
        end
    end
    local tfg = vi:AddLeftTabbox() do
        local Team = tfg:AddTab("Teams") do
            Team:AddButton('Join Marines Teams',function ()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines")
            end)
            Team:AddButton('Join Pirates Teams',function ()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates")
            end)
        end
        local gripic = tfg:AddTab("Graphic") do
            local b = game.Lighting
            local c = Instance.new("ColorCorrectionEffect", b)
            local e = Instance.new("ColorCorrectionEffect", b)
            OldAmbient = b.Ambient
            OldBrightness = b.Brightness
            OldColorShift_Top = b.ColorShift_Top
            OldBrightnessc = c.Brightness
            OldContrastc = c.Contrast
            OldTintColorc = c.TintColor
            OldTintColore = e.TintColor
            gripic:AddToggle("Remove",{
                Text = "Remove Fog",
                Default = false
            }):OnChanged(function (a)
                RemoveFog = a
                if not RemoveFog then return end
                Lighting = game:GetService("Lighting")
                for i,v in pairs(Lighting:GetDescendants()) do
                    if v:IsA("Atmosphere") then
                        v:Destroy()
                    end
                end
                while RemoveFog do wait()
                    Lighting.FogEnd = 100000
                    if not RemoveFog then
                        Lighting.FogEnd = 9000
                    end
                end
            end)
            gripic:AddToggle("RTX",{
                Text = "RTX Shades",
                Default = false
            }):OnChanged(function (a)
                _G.RTXMode = a

                if not _G.RTXMode then return end
                while _G.RTXMode do wait()
                    b.Ambient = Color3.fromRGB(33, 33, 33)
                    b.Brightness = 0.3
                    c.Brightness = 0.176
                    c.Contrast = 0.39
                    c.TintColor = Color3.fromRGB(217, 145, 57)
                    game.Lighting.FogEnd = 999
                    if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("PointLight") then
                        local a2 = Instance.new("PointLight")
                        a2.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                        a2.Range = 15
                        a2.Color = Color3.fromRGB(217, 145, 57)
                    end
                    if not _G.RTXMode then
                        b.Ambient = OldAmbient
                        b.Brightness = OldBrightness
                        b.ColorShift_Top = OldColorShift_Top
                        c.Contrast = OldContrastc
                        c.Brightness = OldBrightnessc
                        c.TintColor = OldTintColorc
                        e.TintColor = OldTintColore
                        game.Lighting.FogEnd = 2500
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("PointLight"):Destroy()
                    end
                end
            end)
        end
        local FPS = tfg:AddTab("FPS") do
            FPS:AddButton("FPS Boost [1-2 Minutes]",function ()
                local decalsyeeted = true
                local g = game
                local w = g.Workspace
                local l = g.Lighting
                local t = w.Terrain
                t.WaterWaveSize = 0
                t.WaterWaveSpeed = 0
                t.WaterReflectance = 0
                t.WaterTransparency = 0
                l.GlobalShadows = false
                l.FogEnd = 9e9
                l.Brightness = 0
                settings().Rendering.QualityLevel = "Level01"
                for i, v in pairs(g:GetDescendants()) do
                    if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then 
                        v.Material = "Plastic"
                        v.Reflectance = 0
                    elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
                        v.Transparency = 1
                    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                        v.Lifetime = NumberRange.new(0)
                    elseif v:IsA("Explosion") then
                        v.BlastPressure = 1
                        v.BlastRadius = 1
                    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                        v.Enabled = false
                    elseif v:IsA("MeshPart") then
                        v.Material = "Plastic"
                        v.Reflectance = 0
                        v.TextureID = 10385902758728957
                    end
                end
                for i, e in pairs(l:GetChildren()) do
                    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
                        e.Enabled = false
                    end
                end
            end)
            FPS:AddToggle("White",{
                Text = "Screen FPS Boost",
                Default = false
            }):OnChanged(function (a)
                _G.WhiteScreen = a
                if _G.WhiteScreen  then
                    game:GetService("RunService"):Set3dRenderingEnabled(false)
                else
                    game:GetService("RunService"):Set3dRenderingEnabled(true)
                end
            end)
        end
    end
    local tab22 = vi:AddLeftTabbox() do
        local Tab = tab22:AddTab("Tab") do
            Tab:AddLabel("Misc - Tab",true)
            Tab:AddButton("Fruits Shop",function ()
                game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
            end)
            Tab:AddButton("Titles Tab",function ()
                game:GetService("Players").LocalPlayer.PlayerGui.Main.Titles.Visible = true
            end)
            Tab:AddButton("Awaken Tab",function ()
                game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
            end)
            Tab:AddButton("Colors Tab",function ()
                game:GetService("Players").LocalPlayer.PlayerGui.Main.Colors.Visible = true
            end)
        end
    end
    local mis = vi:AddRightTabbox() do
        local Misc = mis:AddTab("Server - Misc") do
            Misc:AddButton("Server Hop",function ()
                Hop()
            end)
            Misc:AddButton("Rejoin",function ()
                game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
            end)
        end
    end
    local crei = vi:AddRightTabbox() do
        local credit = crei:AddTab("Credit") do
            credit:AddLabel("SVIX#6982 Made This Script")
            credit:AddLabel("UI จากผู้คนทางบ้านที่ไปปล้นมา")
        end
    end
end


------------Settings------------
local My=u:AddTab("Settings");
local vy=My:AddLeftGroupbox("Menu");
local my=My:AddRightGroupbox("Config");
local oy=My:AddLeftGroupbox("Auto-Load");
local Gy=My:AddRightGroupbox("Misc");
local by=My:AddRightGroupbox("Settings Auto Farm")
vy:AddLabel("Background Color"):AddColorPicker("SettingsMenuBackgroundColor",{Default=A.BackgroundColor});
vy:AddLabel("Main Color"):AddColorPicker("SettingsMenuMainColor",{Default=A.MainColor});
vy:AddLabel("Accent Color"):AddColorPicker("SettingsMenuAccentColor",{Default=A.AccentColor});
vy:AddLabel("Inline Color"):AddColorPicker("SettingsMenuInlineColor",{Default=A.InlineColor});
vy:AddLabel("Outline Color"):AddColorPicker("SettingsMenuOutlineColor",{Default=A.OutlineColor});
vy:AddLabel("Font Color"):AddColorPicker("SettingsMenuFontColor",{Default=A.FontColor});
vy:AddButton("Default Theme",SetDefault);
vy:AddToggle("SettingsMenuKeybinds",{Text="Show Keybinds Menu"}):OnChanged(function(a)
    A.KeybindFrame.Visible=a;
end);
vy:AddToggle("SettingsMenuWatermark",{Text="Show Watermark",Default=true}):OnChanged(function(a)
    A:SetWatermarkVisibility(a);
end);

vy:AddButton("Unload",function()
    A:Unload();
end);

my:AddInput("SettingsConfigName",{Text="Config Name",Default="",Placeholder="Name"});
my:AddButton("Create Config",function()
    CreateConfig(L.SettingsConfigName.Value);
end);
my:AddDropdown("SettingsConfigConfigs",{Text="Configs",Default=1,Values=GetConfigNames()});
my:AddButton("Load Config",function()
    s.Load.AutoLoad.LastUsedConfig=L.SettingsConfigConfigs.Value;
    LoadConfig(GetConfigByName(L.SettingsConfigConfigs.Value));
    A:Notify(("Config \"%s\" Has Been Loaded."):format(L.SettingsConfigConfigs.Value));
end);
my:AddButton("Save Config",function()
    SaveConfig(L.SettingsConfigConfigs.Value);
end);
my:AddButton("Delete Config",function()
    DeleteConfig(L.SettingsConfigConfigs.Value,true);
end);
my:AddInput("SettingsConfigData",{Text="Config Data",Default="",Placeholder="Data"});
my:AddButton("Export Data",ExportData);
my:AddButton("Import Data",ImportData);
oy:AddToggle("SettingsAutoLoadEnabled",{Text="Enabled",Default=true}):OnChanged(function(a)
    s.Load.AutoLoad.Enabled=a;
end);

oy:AddToggle("SettingsAutoLoadRage",{Text="Rage Settings"}):OnChanged(function(a)
    s.Load.AutoLoad.RageSettings=a;
end);

oy:AddToggle("SettingsAutoLoadSilent",{Text="Silent Load"}):OnChanged(function(a)
    s.Load.AutoLoad.SilentLoad=a;
end);

oy:AddDropdown("SettingsAutoLoadType",{Text="Type",Default=2,Values={"Last Used Config","Last Config","Custom Config"}}):OnChanged(function(a)
    s.Load.AutoLoad.AutoLoadType=a;
end);

oy:AddDropdown("SettingsAutoLoadConfig",{Text="Custom Config",Default=1,Values=GetConfigNames()}):OnChanged(function(a)
    s.Load.AutoLoad.CustomConfig=a;
end);

Gy:AddToggle("SettingsMiscNotifications",{Text="Show Notifications",Default=true}):OnChanged(function(a)
    A.NotificationArea.Visible=a;
end);
Gy:AddButton("Reset All Settings",ResetSettings);
SetDefault();
L.SettingsMenuBackgroundColor:OnChanged(UpdateTheme);
L.SettingsMenuMainColor:OnChanged(UpdateTheme);
L.SettingsMenuAccentColor:OnChanged(UpdateTheme);
L.SettingsMenuInlineColor:OnChanged(UpdateTheme);
L.SettingsMenuOutlineColor:OnChanged(UpdateTheme);
L.SettingsMenuFontColor:OnChanged(UpdateTheme);
by:AddDropdown("Select_Delay",{Text = "Select Delay",Default = 2,Values = {"0","0.1","0.15","0.2","0.25","0.3"}}):OnChanged(function (a)
    _G.FastMode = a

    if _G.FastMode == "0" then
        _G.Fast_Delay = 0
    elseif _G.FastMode == "0.1" then
        _G.Fast_Delay = 0.1
    elseif _G.FastMode == "0.15" then
        _G.Fast_Delay = 0.15
    elseif _G.FastMode == "0.2" then
        _G.Fast_Delay = 0.2
    elseif _G.FastMode == "0.25" then
        _G.Fast_Delay = 0.25
    elseif _G.FastMode == "0.3" then
        _G.Fast_Delay = 0.3
    end
end)
by:AddToggle("FastAttack",{Text = "Fast Attack",Default = true}):OnChanged(function (a)
    _G.FastAttack=a
end)
by:AddToggle("SetSpawn",{Text = "Auto Set Spawn Point",Default=true}):OnChanged(function (a)
    _G.AutoSetSpawn = a
end)
A.SaveManager:Load();
task.spawn(function()
    while(task.wait(1)and A and A.SaveManager)do 
        A.SaveManager:SaveFile();
    end;
end);

_G.Current_Time="N/A";
A:SetWatermark(("Xeris Hub Premium Scripts | %s"):format(_G.Current_Time));
task.spawn(function()
    while true do wait();
        pcall(function()
            local a=math.floor(workspace.DistributedGameTime);
            local bR=math.floor(workspace.DistributedGameTime/60);
            local rR=math.floor(workspace.DistributedGameTime/60/60);
            local a=a-(bR*60);local bR=bR-(rR*60);
            if rR<1 then 
                if bR<1 then 
                    _G.Current_Time=a.." Second(s)";
                else _G.Current_Time=bR.." Minute(s), "..a.." Second(s)";
                end;
            else _G.Current_Time=rR.." Hour(s), "..bR.." Minute(s), "..a.." Second(s)";
            end;
            A:SetWatermark(("Xeris Hub Premium Scripts | %s"):format(_G.Current_Time));
        end);
    end;
end);

spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoSetSpawn then
                if game:GetService("Players").LocalPlayer.Character.Humanoid.Health > 0 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                end
            end
        end
    end)
end)

task.spawn(function()
    while true do wait()
        _G.rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(Kick) 
            if not _G.Rejoin then 
                if Kick.Name == 'ErrorPrompt' and Kick:FindFirstChild('MessageArea') and Kick.MessageArea:FindFirstChild("ErrorFrame") then 
                    game:GetService("TeleportService"):Teleport(game.PlaceId)
                    wait()
                end;
            end;
        end)
    end;
end)

local plr = game.Players.LocalPlayer
local CbFw = getupvalues(require(plr.PlayerScripts.CombatFramework))
local CbFw2 = CbFw[2]

function GetCurrentBlade()
    local p13 = CbFw2.activeController
    local ret = p13.blades[1]
    if not ret then return end
    while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
    return ret
end

function AttackNoCD()
    if not Auto_Farm_Bounty and not Auto_Farm_Fruit or Mix_Farm then
        if not Auto_Raid then
            local AC = CbFw2.activeController
            for i = 1, 1 do 
                local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
                    plr.Character,
                    {plr.Character.HumanoidRootPart},
                    60
                )
                local cac = {}
                local hash = {}
                for k, v in pairs(bladehit) do
                    if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                        table.insert(cac, v.Parent.HumanoidRootPart)
                        hash[v.Parent] = true
                    end
                end
                bladehit = cac
                if #bladehit > 0 then
                    local u8 = debug.getupvalue(AC.attack, 5)
                    local u9 = debug.getupvalue(AC.attack, 6)
                    local u7 = debug.getupvalue(AC.attack, 4)
                    local u10 = debug.getupvalue(AC.attack, 7)
                    local u12 = (u8 * 798405 + u7 * 727595) % u9
                    local u13 = u7 * 798405
                    (function()
                        u12 = (u12 * u9 + u13) % 1099511627776
                        u8 = math.floor(u12 / u9)
                        u7 = u12 - u8 * u9
                    end)()
                    u10 = u10 + 1
                    debug.setupvalue(AC.attack, 5, u8)
                    debug.setupvalue(AC.attack, 6, u9)
                    debug.setupvalue(AC.attack, 4, u7)
                    debug.setupvalue(AC.attack, 7, u10)
                    pcall(function()
                        if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then
                            AC.animator.anims.basic[1]:Play(0.01,0.01,0.01)
                            game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                            game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                            game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "")
                        end
                    end)
                end
            end
        end
    end
    if Auto_Farm_Bounty or Auto_Farm_Fruit and not Mix_Farm then
        local Fast = getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))
        local Lop = Fast[2]
        Lop.activeController.timeToNextAttack = (-math.huge^math.huge*math.huge)
        Lop.activeController.attacking = false
        Lop.activeController.timeToNextBlock = 0
        Lop.activeController.humanoid.AutoRotate = 80
        Lop.activeController.increment = 3
        Lop.activeController.blocking = false
        Lop.activeController.hitboxMagnitude = 80
    end
end

spawn(function()
    while wait(.5) do
        pcall(function()
            if _G.FastAttack then
                repeat wait(_G.Fast_Delay)
                    AttackNoCD()
                until not _G.FastAttack
            end
        end)
    end
end)

A:Notify("User Interface Finished Loading.");
local Ey=math.floor(((tick()-s.Tick)*1000)*10)/10;
A:Notify(("Loading Time : %sms."):format(Ey));
