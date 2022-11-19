local a=request or http_request or syn and syn.request;local b=game.HttpService;a({Url="http://127.0.0.1:6463/rpc?v=1",Method="POST",Headers={["Content-Type"]="application/json",["Origin"]="https://discord.com"},Body=b:JSONEncode({cmd="INVITE_BROWSER",args={code="BP8aUZgT8f"},nonce=b:GenerateGUID(false)})})local c=game:GetService("Players").LocalPlayer
repeat wait(1) until game:IsLoaded()
if game.PlaceId == 2753915549 then
    W = true
elseif game.PlaceId == 4442272183 then
    W2 = true
elseif game.PlaceId == 7449423635 then
    W3 = true
end
local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
CameraShaker:Stop()

function CheckQuest() 
    Level = game:GetService("Players").LocalPlayer.Data.Level.Value
    if W then
        if Level == 1 or Level <= 9 then
            Mon = "Bandit [Lv. 5]"
            LQuest = 1
            NQuest = "BanditQuest1"
            NameMon = "Bandit"
            CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
            CFrameMon = CFrame.new(1038.5533447266, 41.296249389648, 1576.5098876953)
        elseif Level == 10 or Level <= 14 then
            Mon = "Monkey [Lv. 14]"
            LQuest = 1
            NQuest = "JungleQuest"
            NameMon = "Monkey"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-1448.1446533203, 50.851993560791, 63.60718536377)
        elseif Level == 15 or Level <= 29 then
            Mon = "Gorilla [Lv. 20]"
            LQuest = 2
            NQuest = "JungleQuest"
            NameMon = "Gorilla"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-1142.6488037109, 40.462348937988, -515.39227294922)
        elseif Level == 30 or Level <= 39 then
            Mon = "Pirate [Lv. 35]"
            LQuest = 1
            NQuest = "BuggyQuest1"
            NameMon = "Pirate"
            CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-1201.0881347656, 40.628940582275, 3857.5966796875)
        elseif Level == 40 or Level <= 59 then
            Mon = "Brute [Lv. 45]"
            LQuest = 2
            NQuest = "BuggyQuest1"
            NameMon = "Brute"
            CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-1387.5324707031, 24.592035293579, 4100.9575195313)
        elseif Level == 60 or Level <= 74 then
            Mon = "Desert Bandit [Lv. 60]"
            LQuest = 1
            NQuest = "DesertQuest"
            NameMon = "Desert Bandit"
            CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
            CFrameMon = CFrame.new(984.99896240234, 16.109552383423, 4417.91015625)
        elseif Level == 75 or Level <= 89 then
            Mon = "Desert Officer [Lv. 70]"
            LQuest = 2
            NQuest = "DesertQuest"
            NameMon = "Desert Officer"
            CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
            CFrameMon = CFrame.new(1547.1510009766, 14.452038764954, 4381.8002929688)
        elseif Level == 90 or Level <= 99 then
            Mon = "Snow Bandit [Lv. 90]"
            LQuest = 1
            NQuest = "SnowQuest"
            NameMon = "Snow Bandit"
            CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
            CFrameMon = CFrame.new(1356.3028564453, 105.76865386963, -1328.2418212891)
        elseif Level == 100 or Level <= 119 then
            Mon = "Snowman [Lv. 100]"
            LQuest = 2
            NQuest = "SnowQuest"
            NameMon = "Snowman"
            CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
            CFrameMon = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
        elseif Level == 120 or Level <= 149 then
            Mon = "Chief Petty Officer [Lv. 120]"
            LQuest = 1
            NQuest = "MarineQuest2"
            NameMon = "Chief Petty Officer"
            CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-4931.1552734375, 65.793113708496, 4121.8393554688)
        elseif Level == 150 or Level <= 174 then
            Mon = "Sky Bandit [Lv. 150]"
            LQuest = 1
            NQuest = "SkyQuest"
            NameMon = "Sky Bandit"
            CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-4955.6411132813, 365.46365356445, -2908.1865234375)
        elseif Level == 175 or Level <= 189 then
            Mon = "Dark Master [Lv. 175]"
            LQuest = 2
            NQuest = "SkyQuest"
            NameMon = "Dark Master"
            CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-5148.1650390625, 439.04571533203, -2332.9611816406)
        elseif Level == 190 or Level <= 209 then
            Mon = "Prisoner [Lv. 190]"
            LQuest = 1
            NQuest = "PrisonerQuest"
            NameMon = "Prisoner"
            CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
            CFrameMon = CFrame.new(5132.2041, 15.6783552, 504.347626, 0.882031739, -1.24000421e-10, 0.471190035, -1.78950135e-08, 1, 3.37612605e-08, -0.471190035, -3.82104552e-08, 0.882031739)
        elseif Level == 210 or Level <= 249 then
            Mon = "Dangerous Prisoner [Lv. 210]"
            LQuest = 2
            NQuest = "PrisonerQuest"
            NameMon = "Dangerous Prisoner"
            CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
            CFrameMon = CFrame.new(5570.56543, 15.6775608, 736.577942, -0.00103166304, 2.78272561e-09, -0.999999464, -7.07709669e-09, 1, 2.79002821e-09, 0.999999464, 7.07997128e-09, -0.00103166304)
        elseif Level == 250 or Level <= 274 then
            Mon = "Toga Warrior [Lv. 250]"
            LQuest = 1
            NQuest = "ColosseumQuest"
            NameMon = "Toga Warrior"
            CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
            CFrameMon = CFrame.new(-1872.5166015625, 49.080215454102, -2913.810546875)
        elseif Level == 275 or Level <= 299 then
            Mon = "Gladiator [Lv. 275]"
            LQuest = 2
            NQuest = "ColosseumQuest"
            NameMon = "Gladiator"
            CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
            CFrameMon = CFrame.new(-1521.3740234375, 81.203170776367, -3066.3139648438)
        elseif Level == 300 or Level <= 324 then
            Mon = "Military Soldier [Lv. 300]"
            LQuest = 1
            NQuest = "MagmaQuest"
            NameMon = "Military Soldier"
            CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
            CFrameMon = CFrame.new(-5369.0004882813, 61.24352645874, 8556.4921875)
        elseif Level == 325 or Level <= 374 then
            Mon = "Military Spy [Lv. 325]"
            LQuest = 2
            NQuest = "MagmaQuest"
            NameMon = "Military Spy"
            CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
            CFrameMon = CFrame.new(-5984.0532226563, 82.14656829834, 8753.326171875)
        elseif Level == 375 or Level <= 399 then
            Mon = "Fishman Warrior [Lv. 375]"
            LQuest = 1
            NQuest = "FishmanQuest"
            NameMon = "Fishman Warrior"
            CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(60844.10546875, 98.462875366211, 1298.3985595703)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif Level == 400 or Level <= 449 then
            Mon = "Fishman Commando [Lv. 400]"
            LQuest = 2
            NQuest = "FishmanQuest"
            NameMon = "Fishman Commando"
            CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(61738.3984375, 64.207321166992, 1433.8375244141)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif Level == 450 or Level <= 474 then
            Mon = "God's Guard [Lv. 450]"
            LQuest = 1
            NQuest = "SkyExp1Quest"
            NameMon = "God's Guard"
            CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
            CFrameMon = CFrame.new(-4628.0498046875, 866.92877197266, -1931.2352294922)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
            end
        elseif Level == 475 or Level <= 524 then
            Mon = "Shanda [Lv. 475]"
            LQuest = 2
            NQuest = "SkyExp1Quest"
            NameMon = "Shanda"
            CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
            CFrameMon = CFrame.new(-7685.1474609375, 5601.0751953125, -441.38876342773)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
            end
        elseif Level == 525 or Level <= 549 then
            Mon = "Royal Squad [Lv. 525]"
            LQuest = 1
            NQuest = "SkyExp2Quest"
            NameMon = "Royal Squad"
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-7654.2514648438, 5637.1079101563, -1407.7550048828)
        elseif Level == 550 or Level <= 624 then
            Mon = "Royal Soldier [Lv. 550]"
            LQuest = 2
            NQuest = "SkyExp2Quest"
            NameMon = "Royal Soldier"
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-7760.4106445313, 5679.9077148438, -1884.8112792969)
        elseif Level == 625 or Level <= 649 then
            Mon = "Galley Pirate [Lv. 625]"
            LQuest = 1
            NQuest = "FountainQuest"
            NameMon = "Galley Pirate"
            CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
            CFrameMon = CFrame.new(5557.1684570313, 152.32717895508, 3998.7758789063)
        elseif Level >= 650 then
            Mon = "Galley Captain [Lv. 650]"
            LQuest = 2
            NQuest = "FountainQuest"
            NameMon = "Galley Captain"
            CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
            CFrameMon = CFrame.new(5677.6772460938, 92.786109924316, 4966.6323242188)
        end
    elseif W2 then
        if Level == 700 or Level <= 724 then
            Mon = "Raider [Lv. 700]"
            LQuest = 1
            NQuest = "Area1Quest"
            NameMon = "Raider"
            CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
            CFrameMon = CFrame.new(68.874565124512, 93.635643005371, 2429.6752929688)
        elseif Level == 725 or Level <= 774 then
            Mon = "Mercenary [Lv. 725]"
            LQuest = 2
            NQuest = "Area1Quest"
            NameMon = "Mercenary"
            CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
            CFrameMon = CFrame.new(-864.85009765625, 122.47104644775, 1453.1505126953)
        elseif Level == 775 or Level <= 799 then
            Mon = "Swan Pirate [Lv. 775]"
            LQuest = 1
            NQuest = "Area2Quest"
            NameMon = "Swan Pirate"
            CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
            CFrameMon = CFrame.new(1065.3669433594, 137.64012145996, 1324.3798828125)
        elseif Level == 800 or Level <= 874 then
            Mon = "Factory Staff [Lv. 800]"
            NQuest = "Area2Quest"
            LQuest = 2
            NameMon = "Factory Staff"
            CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
            CFrameMon = CFrame.new(533.22045898438, 128.46876525879, 355.62615966797)
        elseif Level == 875 or Level <= 899 then
            Mon = "Marine Lieutenant [Lv. 875]"
            LQuest = 1
            NQuest = "MarineQuest3"
            NameMon = "Marine Lieutenant"
            CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-2489.2622070313, 84.613594055176, -3151.8830566406)
        elseif Level == 900 or Level <= 949 then
            Mon = "Marine Captain [Lv. 900]"
            LQuest = 2
            NQuest = "MarineQuest3"
            NameMon = "Marine Captain"
            CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-2335.2026367188, 79.786659240723, -3245.8674316406)
        elseif Level == 950 or Level <= 974 then
            Mon = "Zombie [Lv. 950]"
            LQuest = 1
            NQuest = "ZombieQuest"
            NameMon = "Zombie"
            CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
            CFrameMon = CFrame.new(-5536.4970703125, 101.08577728271, -835.59075927734)
        elseif Level == 975 or Level <= 999 then
            Mon = "Vampire [Lv. 975]"
            LQuest = 2
            NQuest = "ZombieQuest"
            NameMon = "Vampire"
            CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
            CFrameMon = CFrame.new(-5806.1098632813, 16.722528457642, -1164.4384765625)
        elseif Level == 1000 or Level <= 1049 then
            Mon = "Snow Trooper [Lv. 1000]"
            LQuest = 1
            NQuest = "SnowMountainQuest"
            NameMon = "Snow Trooper"
            CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
            CFrameMon = CFrame.new(535.21051025391, 432.74209594727, -5484.9165039063)
        elseif Level == 1050 or Level <= 1099 then
            Mon = "Winter Warrior [Lv. 1050]"
            LQuest = 2
            NQuest = "SnowMountainQuest"
            NameMon = "Winter Warrior"
            CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
            CFrameMon = CFrame.new(1234.4449462891, 456.95419311523, -5174.130859375)
        elseif Level == 1100 or Level <= 1124 then
            Mon = "Lab Subordinate [Lv. 1100]"
            LQuest = 1
            NQuest = "IceSideQuest"
            NameMon = "Lab Subordinate"
            CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
            CFrameMon = CFrame.new(-5720.5576171875, 63.309471130371, -4784.6103515625)
        elseif Level == 1125 or Level <= 1174 then
            Mon = "Horned Warrior [Lv. 1125]"
            LQuest = 2
            NQuest = "IceSideQuest"
            NameMon = "Horned Warrior"
            CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
            CFrameMon = CFrame.new(-6292.751953125, 91.181983947754, -5502.6499023438)
        elseif Level == 1175 or Level <= 1199 then
            Mon = "Magma Ninja [Lv. 1175]"
            LQuest = 1
            NQuest = "FireSideQuest"
            NameMon = "Magma Ninja"
            CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-5461.8388671875, 130.36347961426, -5836.4702148438)
        elseif Level == 1200 or Level <= 1249 then
            Mon = "Lava Pirate [Lv. 1200]"
            LQuest = 2
            NQuest = "FireSideQuest"
            NameMon = "Lava Pirate"
            CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-5251.1889648438, 55.164535522461, -4774.4096679688)
        elseif Level == 1250 or Level <= 1274 then
            Mon = "Ship Deckhand [Lv. 1250]"
            LQuest = 1
            NQuest = "ShipQuest1"
            NameMon = "Ship Deckhand"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)       
            CFrameMon = CFrame.new(921.12365722656, 125.9839553833, 33088.328125)  
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif Level == 1275 or Level <= 1299 then
            Mon = "Ship Engineer [Lv. 1275]"
            LQuest = 2
            NQuest = "ShipQuest1"
            NameMon = "Ship Engineer"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)
            CFrameMon = CFrame.new(886.28179931641, 40.47790145874, 32800.83203125)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end             
        elseif Level == 1300 or Level <= 1324 then
            Mon = "Ship Steward [Lv. 1300]"
            LQuest = 1
            NQuest = "ShipQuest2"
            NameMon = "Ship Steward"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
            CFrameMon = CFrame.new(943.85504150391, 129.58183288574, 33444.3671875)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif Level == 1325 or Level <= 1349 then
            Mon = "Ship Officer [Lv. 1325]"
            LQuest = 2
            NQuest = "ShipQuest2"
            NameMon = "Ship Officer"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
            CFrameMon = CFrame.new(955.38458251953, 181.08335876465, 33331.890625)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif Level == 1350 or Level <= 1374 then
            Mon = "Arctic Warrior [Lv. 1350]"
            LQuest = 1
            NQuest = "FrostQuest"
            NameMon = "Arctic Warrior"
            CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
            CFrameMon = CFrame.new(5935.4541015625, 77.26016998291, -6472.7568359375)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422))
            end
        elseif Level == 1375 or Level <= 1424 then
            Mon = "Snow Lurker [Lv. 1375]"
            LQuest = 2
            NQuest = "FrostQuest"
            NameMon = "Snow Lurker"
            CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
            CFrameMon = CFrame.new(5628.482421875, 57.574996948242, -6618.3481445313)
        elseif Level == 1425 or Level <= 1449 then
            Mon = "Sea Soldier [Lv. 1425]"
            LQuest = 1
            NQuest = "ForgottenQuest"
            NameMon = "Sea Soldier"
            CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
            CFrameMon = CFrame.new(-3185.0153808594, 58.789089202881, -9663.6064453125)
        elseif Level >= 1450 then
            Mon = "Water Fighter [Lv. 1450]"
            LQuest = 2
            NQuest = "ForgottenQuest"
            NameMon = "Water Fighter"
            CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
            CFrameMon = CFrame.new(-3262.9301757813, 298.69036865234, -10552.529296875)
        end
    elseif W3 then
        if Level == 1500 or Level <= 1524 then
            Mon = "Pirate Millionaire [Lv. 1500]"
            LQuest = 1
            NQuest = "PiratePortQuest"
            NameMon = "Pirate Millionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-435.68109130859, 189.69866943359, 5551.0756835938)
        elseif Level == 1525 or Level <= 1574 then
            Mon = "Pistol Billionaire [Lv. 1525]"
            LQuest = 2
            NQuest = "PiratePortQuest"
            NameMon = "Pistol Billionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-236.53652954102, 217.46676635742, 6006.0883789063)
        elseif Level == 1575 or Level <= 1599 then
            Mon = "Dragon Crew Warrior [Lv. 1575]"
            LQuest = 1
            NQuest = "AmazonQuest"
            NameMon = "Dragon Crew Warrior"
            CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
            CFrameMon = CFrame.new(6301.9975585938, 104.77153015137, -1082.6075439453)
        elseif Level == 1600 or Level <= 1624 then 
            Mon = "Dragon Crew Archer [Lv. 1600]"
            NQuest = "AmazonQuest"
            LQuest = 2
            NameMon = "Dragon Crew Archer"
            CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
            CFrameMon = CFrame.new(6831.1171875, 441.76708984375, 446.58615112305)
        elseif Level == 1625 or Level <= 1649 then
            Mon = "Female Islander [Lv. 1625]"
            NQuest = "AmazonQuest2"
            LQuest = 1
            NameMon = "Female Islander"
            CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            CFrameMon = CFrame.new(5792.5166015625, 848.14392089844, 1084.1818847656)
        elseif Level == 1650 or Level <= 1699 then 
            Mon = "Giant Islander [Lv. 1650]"
            NQuest = "AmazonQuest2"
            LQuest = 2
            NameMon = "Giant Islander"
            CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            CFrameMon = CFrame.new(5009.5068359375, 664.11071777344, -40.960144042969)
        elseif Level == 1700 or Level <= 1724 then
            Mon = "Marine Commodore [Lv. 1700]"
            LQuest = 1
            NQuest = "MarineTreeIsland"
            NameMon = "Marine Commodore"
            CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
            CFrameMon = CFrame.new(2198.0063476563, 128.71075439453, -7109.5043945313)
        elseif Level == 1725 or Level <= 1774 then
            Mon = "Marine Rear Admiral [Lv. 1725]"
            NameMon = "Marine Rear Admiral"
            NQuest = "MarineTreeIsland"
            LQuest = 2
            CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
            CFrameMon = CFrame.new(3294.3142089844, 385.41125488281, -7048.6342773438)
        elseif Level == 1775 or Level <= 1799 then
            Mon = "Fishman Raider [Lv. 1775]"
            LQuest = 1
            NQuest = "DeepForestIsland3"
            NameMon = "Fishman Raider"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-10553.268554688, 521.38439941406, -8176.9458007813)
        elseif Level == 1800 or Level <= 1824 then
            Mon = "Fishman Captain [Lv. 1800]"
            LQuest = 2
            NQuest = "DeepForestIsland3"
            NameMon = "Fishman Captain"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
            CFrameMon = CFrame.new(-10789.401367188, 427.18637084961, -9131.4423828125)
        elseif Level == 1825 or Level <= 1849 then
            Mon = "Forest Pirate [Lv. 1825]"
            LQuest = 1
            NQuest = "DeepForestIsland"
            NameMon = "Forest Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
            CFrameMon = CFrame.new(-13489.397460938, 400.30349731445, -7770.251953125)
        elseif Level == 1850 or Level <= 1899 then
            Mon = "Mythological Pirate [Lv. 1850]"
            LQuest = 2
            NQuest = "DeepForestIsland"
            NameMon = "Mythological Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
            CFrameMon = CFrame.new(-13508.616210938, 582.46228027344, -6985.3037109375)
        elseif Level == 1900 or Level <= 1924 then
            Mon = "Jungle Pirate [Lv. 1900]"
            LQuest = 1
            NQuest = "DeepForestIsland2"
            NameMon = "Jungle Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-12267.103515625, 459.75262451172, -10277.200195313)
        elseif Level == 1925 or Level <= 1974 then
            Mon = "Musketeer Pirate [Lv. 1925]"
            LQuest = 2
            NQuest = "DeepForestIsland2"
            NameMon = "Musketeer Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-13291.5078125, 520.47338867188, -9904.638671875)
        elseif Level == 1975 or Level <= 1999 then
            Mon = "Reborn Skeleton [Lv. 1975]"
            LQuest = 1
            NQuest = "HauntedQuest1"
            NameMon = "Reborn Skeleton"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-13291.5078125, 520.47338867188, -9904.638671875)
        elseif Level == 2000 or Level <= 2024 then
            Mon = "Living Zombie [Lv. 2000]"
            LQuest = 2
            NQuest = "HauntedQuest1"
            NameMon = "Living Zombie"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-10103.7529, 238.565979, 6179.75977)
        elseif Level == 2025 or Level <= 2049 then
            Mon = "Demonic Soul [Lv. 2025]"
            LQuest = 1
            NQuest = "HauntedQuest2"
            NameMon = "Demonic Soul"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
            CFrameMon = CFrame.new(-9709.30762, 204.695892, 6044.04688)
        elseif Level == 2050 or Level <= 2074 then
            Mon = "Posessed Mummy [Lv. 2050]"
            LQuest = 2
            NQuest = "HauntedQuest2"
            NameMon = "Posessed Mummy"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-9554.11035, 65.6141663, 6041.73584)
        elseif Level == 2075 or Level <= 2099 then
            Mon = "Peanut Scout [Lv. 2075]"
            LQuest = 1
            NQuest = "NutsIslandQuest"
            NameMon = "Peanut Scout"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-2068.0949707031, 76.512603759766, -10117.150390625)
        elseif Level == 2100 or Level <= 2124 then
            Mon = "Peanut President [Lv. 2100]"
            LQuest = 2
            NQuest = "NutsIslandQuest"
            NameMon = "Peanut President"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-2067.33203125, 90.557350158691, -10552.051757812)
        elseif Level == 2125 or Level <= 2149 then
            Mon = "Ice Cream Chef [Lv. 2125]"
            LQuest = 1
            NQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Chef"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-796.37261962891, 110.95275878906, -10847.473632812)
        elseif Level == 2150 or Level <= 2199 then
            Mon = "Ice Cream Commander [Lv. 2150]"
            LQuest = 2
            NQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Commander"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-697.65338134766, 174.48368835449, -11218.38671875)
        elseif Level == 2200 or Level <= 2224 then
            Mon = "Cookie Crafter [Lv. 2200]"
            LQuest = 1
            NQuest = "CakeQuest1"
            NameMon = "Cookie Crafter"
            CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
            CFrameMon = CFrame.new(-2358.5791015625, 36.85615539550781, -12111.052734375)
        elseif Level == 2225 or Level <= 2249 then
            Mon = "Cake Guard [Lv. 2225]"
            LQuest = 2
            NQuest = "CakeQuest1"
            NameMon = "Cake Guard"
            CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
            CFrameMon = CFrame.new(-1430.4925537109375, 36.85621643066406, -12322.162109375)
        elseif Level == 2250 or Level <= 2274 then
            Mon = "Baking Staff [Lv. 2250]"
            LQuest = 1
            NQuest = "CakeQuest2"
            NameMon = "Baking Staff"
            CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
            CFrameMon = CFrame.new(-1818.165771484375, 95.19196319580078, -12879.7138671875)
        elseif Level == 2275 or Level <=2299 then
            Mon = "Head Baker [Lv. 2275]"
            LQuest = 2
            NQuest = "CakeQuest2"
            NameMon = "Head Baker"
            CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
            CFrameMon = CFrame.new(-2296.06689453125, 110.56626892089844, -12808.162109375)
     elseif Level == 2300 or Level <= 2324 then
           Mon = "Cocoa Warrior [Lv. 2300]"
           LQuest = 1
           NQuest = "ChocQuest1"
           NameMon = "Cocoa Warrior"
           CFrameQuest = CFrame.new(231.742981, 25.3354111, -12199.0537, 0.998278677, -5.16006757e-08, 0.0586484075, 4.79685092e-08, 1, 6.33390442e-08, -0.0586484075, -6.04167383e-08, 0.998278677)
           CFrameMon = CFrame.new(81.91645050048828, 73.5289077758789, -12310.2119140625)
          elseif Level == 2325 or Level <= 2349 then
           Mon = "Chocolate Bar Battler [Lv. 2325]"
           LQuest = 2
           NQuest = "ChocQuest1"
           NameMon = "Chocolate Bar Battler"
          CFrameQuest = CFrame.new(231.742981, 25.3354111, -12199.0537, 0.998278677, -5.16006757e-08, 0.0586484075, 4.79685092e-08, 1, 6.33390442e-08, -0.0586484075, -6.04167383e-08, 0.998278677)
          CFrameMon = CFrame.new(717.30322265625, 70.91798400878906, -12598.92578125)
          elseif Level == 2350 or Level <= 2374 then
           Mon = "Sweet Thief [Lv. 2350]"
           LQuest = 1
           NQuest = "ChocQuest2"
           NameMon = "Sweet Thief"
          CFrameQuest = CFrame.new(149.867218, 24.8196201, -12775.5283, -0.0371122323, -7.14229245e-08, -0.99931109, -6.93553162e-08, 1, -6.88964548e-08, 0.99931109, 6.6750637e-08, -0.0371122323)
          CFrameMon = CFrame.new(69.87836456298828, 77.24759674072266, -12635.6708984375)
         elseif Level >= 2375 then
           Mon = "Candy Rebel [Lv. 2375]"
           LQuest = 2
           NQuest = "ChocQuest2"
           NameMon = "Candy Rebel"
          CFrameQuest = CFrame.new(149.867218, 24.8196201, -12775.5283, -0.0371122323, -7.14229245e-08, -0.99931109, -6.93553162e-08, 1, -6.88964548e-08, 0.99931109, 6.6750637e-08, -0.0371122323)
          CFrameMon = CFrame.new(61.1157112121582, 64.85679626464844, -12892.638671875)
        end
    end
end

function Click()
    game:GetService'VirtualUser':CaptureController()
    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end

function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end

function EquipWeapon(ToolSe)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
    local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
    wait(.4)
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
end
end

spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoFarm == true then
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000,100000,100000)
                    Noclip.Velocity = Vector3.new(0,0,0)
                end
            end
        end
    end)
end)

spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.AutoFarm == true then
                for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false    
                    end
                end
            end
        end)
    end)
end)

function StopTween(target)
    if not target then
        _G.StopTween = true
        wait()
        topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
        end
        _G.StopTween = false
        _G.Clip = false
    end
end

function toTarget(targetPos, targetCFrame)
    if FastTween then
        Distance = (targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
        if Distance < 1000 then
            Speed = 325
        elseif Distance >= 1000 then
            Speed = 300
        end
    else
        Distance = (targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
        if Distance < 1000 then
            Speed = 325
        elseif Distance >= 1000 then
            Speed = 300
        end
    end
    local tweenfunc = {}

    local tween_s = game:service"TweenService"
    local info = TweenInfo.new((targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude/Speed, Enum.EasingStyle.Linear)
    local tween = tween_s:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = targetCFrame * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(0))})
    tween:Play()

    function tweenfunc:Stop()
        tween:Cancel()
    end 

    if not tween then return tween end
    return tweenfunc
end

function totarget(CFgo)
local tween_s = game:service"TweenService"
local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/300, Enum.EasingStyle.Linear)
local tween, err = pcall(function()
    tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
    tween:Play()
end)
if not tween then return err end
end

game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

spawn(function()
    pcall(function()
        while wait() do
            for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do  
                if v:IsA("Tool") then
                    if v:FindFirstChild("RemoteFunctionShoot") then 
                        SelectWeaponGun = v.Name
                    end
                end
            end
        end
    end)
end)

function topos(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
    pcall(function() tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/210, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
    tween:Play()
    if Distance <= 250 then
        tween:Cancel()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
    end
    if _G.StopTween == true then
        tween:Cancel()
        _G.Clip = false
    end
end

function GetDistance(target)
    return math.floor((target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
end

game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

spawn(function()
    pcall(function()
        while wait() do
            for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") then
                    if v:FindFirstChild("RemoteFunctionShoot") then
                        SelectWeaponGun = v.Name
                    end
                end
            end
        end
    end)
end)

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

local LocalPlayer = game:GetService'Players'.LocalPlayer
local originalstam = LocalPlayer.Character.Energy.Value
function infinitestam()
LocalPlayer.Character.Energy.Changed:connect(function()
    if InfiniteEnergy then
        LocalPlayer.Character.Energy.Value = originalstam
    end 
end)
end

spawn(function()
pcall(function()
    while wait() do
        if InfiniteEnergy then
            wait(0.3)
            originalstam = LocalPlayer.Character.Energy.Value
            infinitestam()
        end
    end
end)
end)

function UnEquipWeapon(Weapon)
    if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
        _G.NotAutoEquip = true
        wait(.5)
        game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
        wait(.1)
        _G.NotAutoEquip = false
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

function InfAb()
    if InfAbility then
        if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
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
            inf.Texture = "rbxassetid://7157487174"
            inf.VelocityInheritance = 0
            inf.ZOffset = 2
            inf.Transparency = NumberSequence.new(0)
            inf.Color = ColorSequence.new(Color3.fromRGB(30, 215, 96),Color3.fromRGB(30, 215, 96))
            inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        end
    else
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
        end
    end
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

spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoFarmMasDF or _G.Auto_Tushita or _G.Auto_Yama or _G.Auto_New_World or _G.TpLab or _G.AutoBossLaw or _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.Auto_Saber or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or FarmBoss or _G.AutoElitehunter or _G.AutoThirdSea or _G.AutoFarmBone == true then
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000,100000,100000)
                    Noclip.Velocity = Vector3.new(0,0,0)
                end
            end
        end
    end)
end)
    
spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.AutoFarmMasDF or _G.Auto_Tushita or _G.Auto_Yama or _G.Auto_New_World or _G.TpLab or _G.AutoBossLaw or _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.Auto_Saber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.AutoFarmBone == true then
                for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end
        end)
    end)
end)
    
spawn(function()
    while wait() do
        if _G.AutoFarmMasDF or _G.Auto_Tushita or _G.Auto_Yama or _G.Auto_New_World or _G.AutoBossLaw or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.Auto_Saber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.AutoFarmBone == true then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken",true)
            end)
        end
    end
end)
    
    
    
spawn(function()
    pcall(function()
        while wait() do
            for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do  
                if v:IsA("Tool") then
                    if v:FindFirstChild("RemoteFunctionShoot") then 
                        SelectWeaponGun = v.Name
                    end
                end
            end
        end
    end)
end)
    
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if UseGun then
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v.Name == Mon then
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

game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

if game:GetService('CoreGui'):FindFirstChild('ScreenGui') then
    game:GetService('CoreGui'):FindFirstChild('ScreenGui'):Destroy()
end
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/ExZeroz/Roblox/main/RemakelinoriahubUI.lua"))()
Library:Notify("Loading Script...",3)
local Window = Library:CreateWindow({
    Title = 'Xeris Hub Script For Everyone - '..os.date("%A, ".."%d, ".."%B, ".."%Y"),
    Center = true,
    AutoShow = true,
})

local Tabs = {
    page1 = Window:AddTab("General"),
    page2 = Window:AddTab("Items"),
    page3 = Window:AddTab("Combat"),
    page4 = Window:AddTab("Visuals"),
    page5 = Window:AddTab("Misc")
}

local tab1 = Tabs.page1:AddLeftTabbox() do
    local main = tab1:AddTab("Main") do
        local a = main:AddLabel("")
        a:Seperator([[\\ Auto Farm Level //]])
        main:AddToggle("Auto_Farm",{
            Text = "Auto Farm Level",
            Default = false,
        }):OnChanged(function ()
            _G.AutoFarm = Toggles.Auto_Farm.Value
            StopTween(_G.AutoFarm)
        end)
        main:AddToggle("Auto_Farm_Quest",{
            Text = "Auto Farm Quest",
            Default = true
        }):OnChanged(function ()
            _G.Quest = Toggles.Auto_Farm_Quest.Value
        end)

        spawn(function()
            while wait() do
                if _G.AutoFarm and _G.Quest then
                    pcall(function()
                        local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                        if not string.find(QuestTitle, NameMon) then
                            StartMagnet = false
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        end
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            StartMagnet = false
                            CheckQuest()
                            repeat wait() topos(CFrameQuest) until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoFarm
                            if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                                wait(0.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NQuest,LQuest)
                                wait(0.5)
                            end
                        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            CheckQuest()
                            if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                        if v.Name == Mon then
                                            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                                repeat task.wait()
                                                    AutoHaki()
                                                    EquipWeapon(SelectToolWeapon)                                            
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.Head.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    StartMagnet = true
                                                    game:GetService'VirtualUser':CaptureController()
                                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                            else
                                                StartMagnet = false
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                            end
                                        end
                                    end
                                end
                            else
                                topos(CFrameMon)
                                StartMagnet = false
                                if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(0,0,30))
                                else
                                    if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 15 then
                                        if PosMon ~= nil then
                                            topos(PosMon * CFrame.new(0,0,30))
                                        else
                                            if OldPos ~= nil then
                                                topos(OldPos.Position)
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end)
                elseif _G.Quest == false then
                    if _G.AutoFarm then
                        pcall(function()
                            CheckQuest()
                            if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                        if v.Name == Mon then
                                            repeat task.wait()
                                                AutoHaki()
                                                EquipWeapon(SelectToolWeapon)
                                                PosMon = v.HumanoidRootPart.CFrame
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                StartMagnet = true
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        else
                                            StartMagnet = false
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    end
                                end
                            else
                                topos(CFrameMon)
                                StartMagnet = false
                                if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(0,0,30))
                                else
                                    if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 15 then
                                        if PosMon ~= nil then
                                            topos(PosMon * CFrame.new(0,0,30))
                                        else
                                            if OldPos ~= nil then
                                                topos(OldPos.Position)
                                            end
                                        end
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
                if _G.AutoFarm and _G.Quest then
                    pcall(function()
                        local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                        if not string.find(QuestTitle, NameMon) then
                            StartMagnet = false
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        end
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            StartMagnet = false
                            CheckQuest()
                            repeat wait() topos(CFrameQuest) until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoFarm
                            if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                                wait(1.2)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                                wait(0.5)
                            end
                        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            CheckQuest()
                            if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                        if v.Name == Mon then
                                            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                                repeat task.wait()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    AutoHaki()                                            
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.Head.CanCollide = false
                                                    StartMagnet = true
                                                    game:GetService'VirtualUser':CaptureController()
                                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                            else
                                                StartMagnet = false
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                            end
                                        end
                                    end
                                end
                            else
                                topos(CFrameMon)
                                StartMagnet = false
                                if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                else
                                    if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 15 then
                                        if PosMon ~= nil then
                                            topos(PosMon * CFrame.new(0,35,0))
                                        else
                                            if OldPos ~= nil then
                                                topos(OldPos.Position)
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end)
                elseif _G.Quest == false then
                    if _G.AutoFarm then
                        pcall(function()
                            CheckQuest()
                            if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                        if v.Name == Mon then
                                            repeat task.wait()
                                                EquipWeapon(_G.SelectWeapon)
                                                AutoHaki()                                            
                                                PosMon = v.HumanoidRootPart.CFrame
                                                OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false
                                                StartMagnet = true
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        else
                                            StartMagnet = false
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    end
                                end
                            else
                                topos(CFrameMon)
                                StartMagnet = false
                                if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                else
                                    if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 15 then
                                        if PosMon ~= nil then
                                            topos(PosMon * CFrame.new(0,35,0))
                                        else
                                            if OldPos ~= nil then
                                                topos(OldPos.Position)
                                            end
                                        end
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
                if _G.AutoFarm and _G.Quest then
                    pcall(function()
                        local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                        if not string.find(QuestTitle, NameMon) then
                            StartMagnet = false
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        end
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            StartMagnet = false
                            CheckQuest()
                            repeat wait() topos(CFrameQuest) until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoFarm
                            if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                                wait(0.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NQuest,LQuest)
                                wait(0.5)
                            end
                        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            CheckQuest()
                            if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                        if v.Name == Mon then
                                            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                                repeat task.wait()
                                                    AutoHaki()
                                                    EquipWeapon(SelectToolWeapon)
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.Head.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    StartMagnet = true
                                                    game:GetService'VirtualUser':CaptureController()
                                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                            else
                                                StartMagnet = false
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                            end
                                        end
                                    end
                                end
                            else
                                topos(CFrameMon)
                                StartMagnet = false
                                if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(0,0,30))
                                else
                                    if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 15 then
                                        if PosMon ~= nil then
                                            topos(PosMon * CFrame.new(0,0,30))
                                        else
                                            if OldPos ~= nil then
                                                topos(OldPos.Position)
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end)
                elseif _G.Quest == false then
                    if _G.AutoFarm then
                        pcall(function()
                            CheckQuest()
                            if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                        if v.Name == Mon then
                                            repeat task.wait()
                                                AutoHaki()
                                                EquipWeapon(SelectToolWeapon)
                                                PosMon = v.HumanoidRootPart.CFrame
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                StartMagnet = true
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        else
                                            StartMagnet = false
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    end
                                end
                            else
                                topos(CFrameMon)
                                StartMagnet = false
                                if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(0,0,30))
                                else
                                    if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 15 then
                                        if PosMon ~= nil then
                                            topos(PosMon * CFrame.new(0,0,30))
                                        else
                                            if OldPos ~= nil then
                                                topos(OldPos.Position)
                                            end
                                        end
                                    end
                                end
                            end
                        end)
                    end
                end
            end
        end)

        main:AddToggle("Auto_Farm_New_World",{
            Text = "Auto Farm New World",
            Default = false
        }):OnChanged(function ()
            _G.Auto_New_World = Toggles.Auto_Farm_New_World.Value
            StopTween(_G.Auto_New_World)
        end)

        spawn(function()
            while wait() do
                if _G.Auto_New_World and W then
                    pcall(function()
                        if game.Players.LocalPlayer.Data.Level.Value >= 700 then
                            _G.AutoFarm = false
                            if game.Workspace.Map.Ice.Door.CanCollide == true and game.Workspace.Map.Ice.Door.Transparency == 0 then
                                repeat wait() topos(CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563)) until (CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_New_World
                                wait(1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
                                EquipWeapon("Key")
                                local pos2 = CFrame.new(1347.7124, 37.3751602, -1325.6488)
                                repeat wait() topos(pos2) until (pos2.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_New_World
                                wait(3)
                            elseif game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Ice Admiral [Lv. 700] [Boss]" and v.Humanoid.Health > 0 then
                                            repeat wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                v.HumanoidRootPart.Transparency = 1
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                                game:GetService("VirtualUser"):CaptureController()
                                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 870),workspace.CurrentCamera.CFrame)
                                            until v.Humanoid.Health <= 0 or not v.Parent or not _G.Auto_New_World
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                                        end
                                    end
                                else
                                    topos(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                                end
                            else
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                            end
                        end
                    end)
                elseif _G.Auto_New_World and W2 then
                    pcall(function()
                        if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 then
                            _G.AutoFarm = false
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") == 0 then
                                topos(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))
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
                                                EquipWeapon(_G.SelectWeapon)
                                                v.HumanoidRootPart.CFrame = OldCFrameThird
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                            until _G.Auto_Third_World == false or v.Humanoid.Health <= 0 or not v.Parent
                                        end
                                    end
                                elseif not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") and (CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                                    topos(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
                                end
                            end
                        end
                    end)
                elseif _G.Auto_New_World and W3 then
                    Library:Notify("Wait for game Update",3)
                    wait(3)
                end
            end
        end)
        local r = main:AddLabel("")
        r:Seperator([[\\ Miscellaneous //]])
        main:AddToggle("Auto_Farm_Saber",{
            Text = "Auto Farm Saber Swords",
            Default = false
        }):OnChanged(function ()
            _G.Auto_Saber = Toggles.Auto_Farm_Saber.Value
            StopTween(_G.Auto_Saber)
        end)

        spawn(function()
            while wait() do
                if _G.Auto_Saber then
                    if game.Players.localPlayer.Data.Level.Value < 200 then
                        else
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
                                                    EquipWeapon(_G.SelectWeapon)
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
                                                                    EquipWeapon(_G.SelectWeapon)
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
        main:AddToggle("Auto_Farm_Legendary",{
            Text = "Auto Legendary Swords",
            Default = false
        }):OnChanged(function ()
            _G.AutoBuyLegendarySword = Toggles.Auto_Farm_Legendary.Value
        end)

        spawn(function()
            while wait() do
                if _G.AutoBuyLegendarySword and W2 then
                    pcall(function()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","1")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","2")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","3")
                        if _G.AutoBuyLegendarySword_Hop and _G.AutoBuyLegendarySword and W2 then
                            wait(10)
                            Hop()
                        end
                    end)
                end
            end
        end)
    end
    local special = tab1:AddTab("Special") do
        local e = special:AddLabel("")
        e:Seperator([[\\ Elite Hunter - Farm //]])
        local EliteSpawn = special:AddLabel("")
        local progress = special:AddLabel("")

        spawn(function()
            pcall(function()
                while wait(.2) do
                    if W3 and game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                        EliteSpawn:SetText('Elite Hunter : Spawned')
                    elseif W or W2 then
                        EliteSpawn:SetText("Elite Hunter : World 3 Only")
                    else
                        EliteSpawn:SetText('Elite Hunter : Not Spawned')
                    end
                    progress:SetText("Elite Progress : "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))
                end
            end)
        end)

        local elite = special:AddToggle("Auto_Elite_Hunter",{
            Text = "Auto Elite Hunter",
            Default = false
        }):OnChanged(function ()
            _G.AutoElitehunter = Toggles.Auto_Elite_Hunter.Value
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
            StopTween(_G.AutoElitehunter)
        end)
        local elitehop = special:AddToggle("Auto_Elite_Hunter_Hop",{
            Text = "Auto Elite Hunter Hop",
            Default = false
        }):OnChanged(function ()
            _G.AutoEliteHunterHop = Toggles.Auto_Elite_Hunter_Hop.Value
        end)
        spawn(function ()
            while wait() do
                if _G.AutoElitehunter and W3 then
                    pcall(function ()
                        local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                        if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            wait(.5)
                            local A_1 = "EliteHunter"
                            local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
                            Event:InvokeServer(A_1)
                        elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if string.find(QuestTitle,"Diablo") or string.find(QuestTitle,"Deandre") or string.find(QuestTitle,"Urban") then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Diablo [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" then
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                repeat task.wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 0
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                                    game:GetService("VirtualUser"):CaptureController()
                                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                until _G.AutoElitehunter == false or v.Humanoid.Health <= 0 or not v.Parent
                                            end
                                        end
                                    end
                                else
                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") then
                                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
                                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") then
                                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                    else
                                        if _G.AutoEliteHunterHop then
                                            Hop()
                                        else
                                            topos(CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188))
                                        end
                                    end
                                end
                            end
                        end
                    end)
                end
            end
        end)
        local q = special:AddLabel("")
        q:Seperator([[\\ Elite Hunter - Misc //]])
        special:AddToggle("Auto_Stop_Elite",{
            Text = "Stop At God's Chalice",
            Default = false
        }):OnChanged(function ()
            _G.StopGodChalice = Toggles.Auto_Stop_Elite.Value
        end)
        spawn(function ()
            while wait() do
                if _G.StopGodChalice then
                    pcall(function ()
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                            Toggles.Auto_Elite_Hunter:SetValue(false)
                            Toggles.Auto_Elite_Hunter_Hop:Setvalue(false)
                        end
                    end)
                end
            end
        end)
    end
end

local tab2 = Tabs.page1:AddRightTabbox() do
    local setting = tab2:AddTab("Settings") do
        local a = setting:AddLabel("")
        a:Seperator([[\\ Select Weapon - Settings //]])
        WeaponList = {}
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") then
                table.insert(WeaponList ,v.Name)
            end
        end
        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Tool") then
            table.insert(WeaponList, v.Name)
            end
        end
        local SelectWeapon = setting:AddDropdown('Select_Weapon', {
            Values = WeaponList,
            Default = 0,
            Multi = false,
            Text = 'Select Weapon/Combat',
            Tooltip = 'Select Weapon For Auto Farm',
        })
        Options.Select_Weapon:OnChanged(function ()
            _G.SelectWeapon = Options.Select_Weapon.Value
        end)
        spawn(function ()
            while wait(.2) do
                table.clear(WeaponList)
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") then
                        table.insert(WeaponList ,v.Name)
                    end
                end
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA("Tool") then
                    table.insert(WeaponList, v.Name)
                    end
                end
                SelectWeapon:SetValues(WeaponList)
            end
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

        MIo = {
            "Super Fast",
            "Fast",
            "Smooth",
            "Slow",
            "Super Slow"
        }
        setting:AddDropdown("Fast_Attack_Delay",{
            Values = MIo,
            Text = "Select Fast Attack Delay",
            Default = 2,
            Multi = false,
            Tooltip = "Select Fast Attack Delay for Auto Farm or anything"
        }):OnChanged(function ()
            _G.FastMode = Options.Fast_Attack_Delay.Value

            if _G.FastMode == "Fast" then
                _G.Fast_Delay = 0.1
            elseif _G.FastMode == "Smooth" then
                _G.Fast_Delay = 0.2
            elseif _G.FastMode == "Super Fast" then
                _G.Fast_Delay = 0
            elseif _G.FastMode == "Slow" then
                _G.Fast_Delay = 0.3
            elseif _G.FastMode == "Super Slow" then
                _G.Fast_Delay = 1
            end
        end)
        setting:AddToggle("Fast_Attack",{
            Text = "Fast Attack",
            Default = true,
        }):OnChanged(function ()
            _G.FastAttack = Toggles.Fast_Attack.Value
        end)

        setting:AddToggle("Bring_Mob",{
            Text = "Bring Mob",
            Default = true,
        }):OnChanged(function ()
            _G.BringMonster = Toggles.Bring_Mob.Value
        end)

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

        spawn(function()
            while task.wait() do
                pcall(function()
                    if _G.BringMonster then
                        CheckQuest()
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if _G.AutoFarm and StartMagnet and v.Name == Mon and (Mon == "Factory Staff [Lv. 800]" or Mon == "Monkey [Lv. 14]" or Mon == "Dragon Crew Warrior [Lv. 1575]" or Mon == "Dragon Crew Archer [Lv. 1600]" or Mon == "Head Baker [Lv. 2275]" or Mon == "Baking Staff [Lv. 2250]" or Mon == "Cake Guard [Lv. 2225]") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 220 then
                                v.HumanoidRootPart.CFrame = PosMon
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                            elseif _G.AutoFarm and StartMagnet and v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 275 then
                                v.HumanoidRootPart.CFrame = PosMon
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                            end
                            if _G.AutoEctoplasm and StartEctoplasmMagnet then
                                if string.find(v.Name, "Ship") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - EctoplasmMon.Position).Magnitude <= 250 then
                                    v.HumanoidRootPart.CFrame = EctoplasmMon
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                            if _G.AutoRengoku and StartRengokuMagnet then
                                if (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and (v.HumanoidRootPart.Position - RengokuMon.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = RengokuMon
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                            if _G.AutoMusketeerHat and StartMagnetMusketeerhat then
                                if v.Name == "Forest Pirate [Lv. 1825]" and (v.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = MusketeerHatMon
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                            if _G.Auto_EvoRace and StartEvoMagnet then
                                if v.Name == "Zombie [Lv. 950]" and (v.HumanoidRootPart.Position - PosMonEvo.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonEvo
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                            if _G.AutoBartilo and AutoBartiloBring then
                                if v.Name == "Swan Pirate [Lv. 775]" and (v.HumanoidRootPart.Position - PosMonBarto.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonBarto
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                            if _G.AutoFarmGunMastery and StartMasteryGunMagnet then
                                if v.Name == "Monkey [Lv. 14]" then
                                    if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        v.Humanoid:ChangeState(14)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                    end
                                elseif v.Name == "Factory Staff [Lv. 800]" then
                                    if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        v.Humanoid:ChangeState(14)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                    end
                                elseif v.Name == Mon then
                                    if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        v.Humanoid:ChangeState(14)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                    end
                                end
                            end
                            if _G.AutoFarmBone and StartMagnetBoneMon then
                                if (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonBone
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                            if _G.AutoDoughtBoss and MagnetDought then
                                if (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and (v.HumanoidRootPart.Position - PosMonDoughtOpenDoor.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonDoughtOpenDoor
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                            if _G.AutoCandy and StartMagnetCandy then
                                if (v.HumanoidRootPart.Position - PosMonCandy.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonCandy
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                        end
                    end
                end)
            end
        end)
        setting:AddToggle("Auto_SetSpawnPoint",{
            Text = "Auto Set Spawn Point",
            Default = true,
        }):OnChanged(function ()
            _G.AutoSetSpawn = Toggles.Auto_SetSpawnPoint.Value
        end)

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
    end
    local stat = tab2:AddTab("Stat") do
        local s = stat:AddLabel("")
        s:Seperator([[\\ Auto Stat //]])
        stat:AddDropdown("Select_Stat",{
            Values = {"Melee","Defense","Sword","Gun","Devil Fruit"},
            Default = 1,
            Multi = true,
            Text = "Select Stats",
        }):OnChanged(function ()
            _G.SelectStat = Options.Select_Stat.Value
        end)
        stat:AddToggle("Add_Stat",{
            Text = "Auto Stats",
            Default = false
        }):OnChanged(function ()
            _G.AddStat = Toggles.Add_Stat.Value
        end)
        stat:AddSlider("Select_Point",{
            Text = "Select Point",
            Default = 1,
            Min = 1,
            Max = 10,
            Rounding = 0,
            Compact = false
        }):OnChanged(function ()
            _G.PointStats = Options.Select_Point.Value
        end)
        task.spawn(function ()
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
    end
    local SSR = tab2:AddTab("Skill") do
        local a = SSR:AddLabel("")
        a:Seperator([[\\ Select Skill //]])
        SSR:AddToggle("Select_SkillZ",{
            Text = "SKill Z",
            Default = false
        }):OnChanged(function ()
            _G.Skill_Z = Toggles.Select_SkillZ.Value
        end)
        SSR:AddToggle("Select_SkillX",{
            Text = "SKill X",
            Default = false
        }):OnChanged(function ()
            _G.Skill_X = Toggles.Select_SkillX.Value
        end)
        SSR:AddToggle("Select_SkillC",{
            Text = "SKill C",
            Default = false
        }):OnChanged(function ()
            _G.Skill_C = Toggles.Select_SkillC.Value
        end)
        SSR:AddToggle("Select_SkillV",{
            Text = "SKill V",
            Default = false
        }):OnChanged(function ()
            _G.Skill_V = Toggles.Select_SkillV.Value
        end)
    end
end

local tab3 = Tabs.page1:AddLeftTabbox() do
    local event = tab3:AddTab("Event") do
        local a = event:AddLabel("")
        a:Seperator([[\\ 🍬 Candies 🍬 //]])
        event:AddToggle("Auto_Farm_Buddy",{
            Text = "Auto Farm Buddy Sword",
            Default = false
        }):OnChanged(function ()
            _G.AutoBudySword = Toggles.Auto_Farm_Buddy.Value
            StopTween(_G.AutoBudySword)
        end)
        event:AddToggle("Auto_Farm_Buddy_Hop",{
            Text = "Auto Farm Buddy Sword Hop",
            Default = false,
        }):OnChanged(function ()
            _G.AutoBudySwordHop = Toggles.Auto_Farm_Buddy_Hop.Value
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
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                            sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                        until not _G.AutoBudySword or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                            else
                                if _G.AutoBudySwordHop then
                                    Hop()
                                end
                            end
                        end
                    end)
                end
            end
        end)

        local b = event:AddLabel("")
        b:Seperator([[\\ 🎃 hallowed 🎃 //]])
        event:AddToggle("Auto_Hallow_Scythe",{
            Text = "Auto Farm Hallow Scythe",
            Default = false
        }):OnChanged(function ()
            _G.AutoFarmBossHallow = Toggles.Auto_Hallow_Scythe.Value
            StopTween(_G.AutoFarmBossHallow)
        end)
        event:AddToggle("Auto_Hallow_Scythe_Hop",{
            Text = "Auto Farm Hallow Scythe Hop",
            Default = false
        }):OnChanged(function ()
            _G.AutoFarmBossHallowHop = Toggles.Auto_Hallow_Scythe_Hop.Value
        end)
        spawn(function()
            while wait() do
                if _G.AutoFarmBossHallow then
                    pcall(function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if string.find(v.Name , "Soul Reaper") then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        AutoHaki()
                                        topos(v.HumanoidRootPart.CFrame*CFrame.new(0,35,0))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
                                        v.HumanoidRootPart.Transparency = 1
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until v.Humanoid.Health <= 0 or _G.AutoFarmBossHallow == false
                                end
                            end
                        elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                            repeat topos(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)) wait() until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8                        
                            EquipWeapon("Hallow Essence")
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                            else
                                if _G.AutoFarmBossHallowHop then
                                    Hop()
                                end
                            end
                        end
                    end)
                end
            end
        end)
        local c = event:AddLabel("")
        c:Seperator([[\\ 🌀 Portal 🌀 //]])
        local d = event:AddLabel("")
        local e = event:AddLabel("")

        spawn(function()
            pcall(function()
                while wait() do
                    if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
                        d:SetText("Defeat : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41))
                    elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
                        d:SetText("Defeat : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40))
                    elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
                        d:SetText("Defeat : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39))
                    else
                        d:SetText("Defeat : 0")
                    end
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                        e:SetText("Portal : Opened")
                    else
                        e:SetText("Portal :  Not Opened")
                    end
                end
            end)
        end)

        event:AddToggle("Auto_Farm_Portal",{
            Text = "Auto Farm Cake Prince",
            Default = false
        }):OnChanged(function ()
            _G.AutoDoughtBoss = Toggles.Auto_Farm_Portal.Value
            StopTween(_G.AutoDoughtBoss)
        end)
        event:AddToggle("Break_Auto_Farm",{
            Text = "Break Auto Farm Until Door Open",
            Default = false
        }):OnChanged(function ()
            _G.BreakFarm = Toggles.Break_Auto_Farm.Value
        end)

        spawn(function()
            while wait() do
                pcall(function()
                    if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
                        KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41)) - 500)
                    elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
                        KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),40,41)) - 500)
                    elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
                        KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),41,41)) - 500)
                    end
                end)
            end
        end)

        spawn(function()
            while wait() do
                if _G.AutoDoughtBoss then
                    pcall(function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Cake Prince [Lv. 2300] [Raid Boss]" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        repeat task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                            sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                        until not _G.AutoDoughtBoss or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                            else
                                if KillMob == 0 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",true)
                                end
                                if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1 then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker [Lv. 2275]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]" then
                                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                    repeat task.wait()
                                                        AutoHaki()
                                                        EquipWeapon(_G.SelectWeapon)
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.Head.CanCollide = false 
                                                        MagnetDought = true
                                                        PosMonDoughtOpenDoor = v.HumanoidRootPart.CFrame
                                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                                        game:GetService("VirtualUser"):CaptureController()
                                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                    until not _G.AutoDoughtBoss or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or KillMob == 0
                                                end
                                            end
                                        end
                                    else
                                        MagnetDought = false
                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter [Lv. 2200]") then
                                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter [Lv. 2200]").HumanoidRootPart.CFrame * CFrame.new(0,35,0)) 
                                        else
                                            if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard [Lv. 2225]") then
                                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard [Lv. 2225]").HumanoidRootPart.CFrame * CFrame.new(0,35,0)) 
                                            else
                                                if game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff [Lv. 2250]") then
                                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff [Lv. 2250]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                                else
                                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker [Lv. 2275]") then
                                                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker [Lv. 2275]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                                    end
                                                end
                                            end
                                        end                       
                                    end
                                else
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                                        topos(game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                    else
                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                        end
                                    end
                                end
                            end
                        end
                    end)
                elseif _G.BreakFarm and _G.AutoDoughtBoss then
                    if KillMob == 0 then
                        Toggles.Auto_Farm_Portal:SetValue(false)
                    end
                    if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker [Lv. 2275]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        repeat task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false 
                                            MagnetDought = true
                                            PosMonDoughtOpenDoor = v.HumanoidRootPart.CFrame
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        until not _G.AutoDoughtBoss or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or KillMob == 0
                                    end
                                end
                            end
                        else
                            MagnetDought = false
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter [Lv. 2200]") then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter [Lv. 2200]").HumanoidRootPart.CFrame * CFrame.new(0,35,0)) 
                            else
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard [Lv. 2225]") then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard [Lv. 2225]").HumanoidRootPart.CFrame * CFrame.new(0,35,0)) 
                                else
                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff [Lv. 2250]") then
                                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff [Lv. 2250]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                    else
                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker [Lv. 2275]") then
                                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker [Lv. 2275]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                        end
                                    end
                                end
                            end                       
                        end
                    else
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                            topos(game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                            end
                        end
                    end
                end
            end
        end)        
    end

    local boss = tab3:AddTab("Bosses") do
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
        local a = boss:AddLabel("")
        a:Seperator([[\\ Select Boss - Farm //]])
        local SelectBoss = boss:AddDropdown('Select_Bosses', {
            Values = BossList,
            Default = 0,
            Multi = false,
            Text = 'Select Bosses',
            Tooltip = 'Select Boss For Auto Farm',
        })
        Options.Select_Bosses:OnChanged(function ()
            _G.SelectBoss = Options.Select_Bosses.Value
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
                SelectBoss:SetValues(BossList)
            end
        end)
        local b = boss:AddLabel("")
        b:Seperator([[\\ Auto Farm - Bosses //]])
        boss:AddToggle("Auto_Farm_Boss",{
            Text = "Auto Farm Boss",
            Default = false
        }):OnChanged(function ()
            _G.AutoFarmBoss = Toggles.Auto_Farm_Boss.Value
            StopTween(_G.AutoFarmBoss)
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
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                        until not _G.AutoFarmBoss or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                            end
                        end
                    end)
                end
            end
        end)

        boss:AddToggle("Auto_Farm_AllBosses",{
            Text = "Auto Farm All Bosses",
            Default = false
        }):OnChanged(function ()
            _G.AutoAllBoss = Toggles.Auto_Farm_AllBosses.Value
            StopTween(_G.AutoAllBoss)
        end)
        boss:AddToggle("Auto_Farm_AllBosses_Hop",{
            Text = "Auto Farm All Bosses Hop",
            Default = false
        }):OnChanged(function ()
            _G.AutoAllBossHop = Toggles.Auto_Farm_AllBosses_Hop.Value
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
                                        topos(v.HumanoidRootPart.CFrame*CFrame.new(0,35,0))
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
    end
    local mas = tab3:AddTab("Mastery") do
        local a = mas:AddLabel("")
        a:Seperator([[\\ Mastery - Farm //]])
        mas:AddToggle("Auto_Farm_MasDF",{
            Text = "Auto Farm Mastry DF",
            Default = false
        }):OnChanged(function ()
            _G.AutoFarmMasDF = Toggles.Auto_Farm_MasDF.Value
            StopTween(_G.AutoFarmMasDF)
        end)
        mas:AddLabel("Auto Farm Gun >>Coming Soon<<")
        local b = mas:AddLabel("")
        b:Seperator([[\\ Mastery - Kill At //]])
        mas:AddSlider("Select_Health",{
            Text = "Kill At",
            Default = 40,
            Min = 0,
            Max = 100,
            Rounding = 0,
            Compact = true
        }):OnChanged(function ()
            _G.Select_Health = Options.Select_Health.Value
        end)
        local c = mas:AddLabel("")
        c:Seperator([[\\ Mastery - Distance //]])
        mas:AddSlider("Select_X",{
            Text = "Distance X",
            Default = 0,
            Min = -100,
            Max = 100,
            Rounding = 0,
            Compact = false
        }):OnChanged(function ()
            _G.SelectDistanceX = Options.Select_X.Value
        end)
        mas:AddSlider("Select_Y",{
            Text = "Distance Y",
            Default = 35,
            Min = -100,
            Max = 100,
            Rounding = 0,
            Compact = false
        }):OnChanged(function ()
            _G.SelectDistanceY = Options.Select_Y.Value
        end)
        mas:AddSlider("Select_Z",{
            Text = "Distance Z",
            Default = 0,
            Min = -100,
            Max = 100,
            Rounding = 0,
            Compact = false
        }):OnChanged(function ()
            _G.SelectDistanceZ = Options.Select_Z.Value
        end)
    end

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
        game:GetService("RunService").Heartbeat:Connect(function() CheckQuest()
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if _G.AutoFarmMasDF and MasteryBFMagnetActive and v.Name == Ms and (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).magnitude <= 350 then
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
    spawn(function ()
        while task.wait() do
            if _G.AutoFarmMasDF then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        MasteryBFMagnetActive = false
                        CheckQuest()
                        repeat wait() topos(CFrameQuest) until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoFarmMasDF
                        if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                            wait(1.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NQuest, LQuest)
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        CheckQuest()
                        if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                            pcall(function()
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == Mon then
                                        repeat wait()
                                            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                                HealthMin = v.Humanoid.MaxHealth * _G.Select_Health/100
                                                if v.Humanoid.Health <= HealthMin then
                                                    EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
                                                    AutoHaki()
                                                    v.Head.CanCollide = false
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(2,2,1)
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
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
                                                    EquipWeapon(_G.SelectWeapon)
                                                    AutoHaki()
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(_G.SelectDistanceX,_G.SelectDistanceY,_G.SelectDistanceZ))
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
                                        until v.Humanoid.Health <= 0 or  _G.AutoFarmMasDF == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        UseSkillMasteryDevilFruit = true
                                    end
                                end
                            end)
                        else
                            MasteryBFMagnetActive = false
                            if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                            else
                                topos(CFrameMon)
                            end
                        end 
                    end
                end)
            end
        end
    end)
end
allcode = {
    "Redeem All Codes",
    "ADMINGIVEAWAY",
    "SUBGAMERROBOT_RESET",
    "GAMERROBOT_YT",
    "kittgaming",
    "Sub2Fer999",
    "Enyu_is_Pro",
    "Magicbus",
    "JCWK",
    "Starcodeheo",
    "Bluxxy",
    "fudd10_v2",
    "FUDD10",
    "BIGNEWS",
    "THEGREATACE",
    "SUB2GAMERROBOT_RESET1",
    "SUB2GAMERROBOT_EXP1",
    "Sub2OfficialNoobie",
    "StrawHatMaine",
    "SUB2NOOBMASTER123"
}
function UseCode(Text)
    game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Text)
end
local tab4 = Tabs.page1:AddRightTabbox() do
    local code = tab4:AddTab("Code") do
        local a = code:AddLabel("")
        a:Seperator([[\\ Redeem Codes //]])
        code:AddDropdown("Select_Code",{
            Values = allcode,
            Default = 1,
            Multi = false,
            Text = "Select Code",
        }):OnChanged(function ()
            _G.SelectCode = Options.Select_Code.Value
        end)
        code:AddInput("Select_Level",{
            Default = '',
            Numeric = true,
            Finished = true,
            Text = 'Use Code',
            Placeholder = 'Put Your Level Here',
        }):OnChanged(function ()
            _G.SelectLvl = Options.Select_Level.Value
        end)
        code:AddToggle("Auto_Code",{
            Text = "Auto Redeem Code At Level",
            Default = false,
        }):OnChanged(function ()
            _G.AutoCode = Toggles.Auto_Code.Value
        end)
        spawn(function ()
            while wait() do
                if _G.AutoCode then
                    if game:GetService("Players").LocalPlayer.Data.Level.Value >= _G.SelectLvl then
                        if _G.SelectCode == "Redeem All Codes" then
                            UseCode("ADMINGIVEAWAY")
                            UseCode("SUBGAMERROBOT_RESET")
                            UseCode("GAMERROBOT_YT")
                            UseCode("kittgaming")
                            UseCode("Sub2Fer999")
                            UseCode("Enyu_is_Pro")
                            UseCode("Magicbus")
                            UseCode("JCWK")
                            UseCode("Starcodeheo")
                            UseCode("Bluxxy")
                            UseCode("fudd10_v2")
                            UseCode("FUDD10")
                            UseCode("BIGNEWS")
                            UseCode("THEGREATACE")
                            UseCode("SUB2GAMERROBOT_RESET1")
                            UseCode("SUB2GAMERROBOT_EXP1")
                            UseCode("Sub2OfficialNoobie")
                            UseCode("StrawHatMaine")
                            UseCode("SUB2NOOBMASTER123")
                        elseif _G.SelectCode == "ADMINGIVEAWAY" then
                            UseCode("ADMINGIVEAWAY")
                        elseif _G.SelectCode == "SUBGAMERROBOT_RESET" then
                            UseCode("SUBGAMERROBOT_RESET")
                        elseif _G.SelectCode == "GAMERROBOT_YT" then
                            UseCode("GAMERROBOT_YT")
                        elseif _G.SelectCode == "kittgaming" then
                            UseCode("kittgaming")
                        elseif _G.SelectCode == "Sub2Fer999" then
                            UseCode("Sub2Fer999")
                        elseif _G.SelectCode == "Enyu_is_Pro" then
                            UseCode("Enyu_is_Pro")
                        elseif _G.SelectCode == "Magicbus" then
                            UseCode("Magicbus")
                        elseif _G.SelectCode == "JCWK" then
                            UseCode("JCWK")
                        elseif _G.SelectCode == "Starcodeheo" then
                            UseCode("Starcodeheo")
                        elseif _G.SelectCode == "Bluxxy" then
                            UseCode("Bluxxy")
                        elseif _G.SelectCode == "fudd10_v2" then
                            UseCode("fudd10_v2")
                        elseif _G.SelectCode == "FUDD10" then
                            UseCode("FUDD10")
                        elseif _G.SelectCode == "BIGNEWS" then
                            UseCode("BIGNEWS")
                        elseif _G.SelectCode == "THEGREATACE" then
                            UseCode("THEGREATACE")
                        elseif _G.SelectCode == "SUB2GAMERROBOT_RESET1" then
                            UseCode("SUB2GAMERROBOT_RESET1")
                        elseif _G.SelectCode == "SUB2GAMERROBOT_EXP1" then
                            UseCode("SUB2GAMERROBOT_EXP1")
                        elseif _G.SelectCode == "Sub2OfficialNoobie" then
                            UseCode("Sub2OfficialNoobie")
                        elseif _G.SelectCode == "StrawHatMaine" then
                            UseCode("StrawHatMaine")
                        elseif _G.SelectCode == "SUB2NOOBMASTER123" then
                            UseCode("SUB2NOOBMASTER123")
                        end
                    end
                end
            end
        end)
    end
end
local tab5 = Tabs.page1:AddLeftTabbox() do
    local ob = tab5:AddTab("Observations") do
        local a = ob:AddLabel("")
        a:Seperator([[\\ Observations - Farm //]])
        ob:AddToggle("Auto_Ob",{
            Text = "Auto Farm Observations Haki",
            Default = false,
        }):OnChanged(function ()
            _G.AutoObservation = Toggles.Auto_Ob.Value
        end)
        ob:AddToggle("Auto_Ob_Hop",{
            Text = "Auto Farm Observations Haki Hop",
            Default = false,
        }):OnChanged(function ()
            _G.AutoObservation_Hop = Toggles.Auto_Ob_Hop.Value
        end)

        spawn(function()
            pcall(function()
                while wait() do
                    if _G.AutoObservation then
                        if game:GetService("Players").LocalPlayer.VisionRadius.Value >= 3000 then
                            Nord:Notify(nil,"Observation\n\nYou Have Max","",3)
                            wait(3)
                        else
                            if W2 then
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
                                    topos(CFrame.new(-5478.39209, 15.9775667, -5246.9126))
                                end
                            elseif W then
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
                                    topos(CFrame.new(5533.29785, 88.1079102, 4852.3916))
                                end
                            elseif W3 then
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
                                    topos(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789))
                                end
                            end
                        end
                    end
                end
            end)
        end)
    end
    local enchant = tab5:AddTab("Enchancement") do
        local a = enchant:AddLabel("")
        a:Seperator([[\\ Enchancement - Farm //]])
        enchant:AddToggle("Farm_Enc",{
            Text = "Auto Farm Enchancement Haki",
            Default = false,
        }):OnChanged(function ()
            _G.AutoBuyEnchancementColour = Toggles.Farm_Enc.Value
        end)
        enchant:AddToggle("Farm_Enc_Hop",{
            Text = "Auto Farm Enchancement Haki Hop",
            Default = false,
        }):OnChanged(function ()
            _G.AutoBuyEnchancementColour_Hop = Toggles.Farm_Enc_Hop.Value
        end)

        spawn(function()
            while wait() do
                if _G.AutoBuyEnchancementColour then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ColorsDealer","1")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ColorsDealer","2")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ColorsDealer","3")
                    if _G.AutoBuyEnchancementColour_Hop and _G.AutoBuyEnchancementColour and not W then
                        wait(10)
                        Hop()
                    end
                end
            end
        end)
    end
end

local tab6 = Tabs.page1:AddRightTabbox() do
    local mista = tab6:AddTab("Miscellaneous") do
        local a = mista:AddLabel("")
        a:Seperator([[\\ Miscellaneous - Farm //]])
        mista:AddToggle("Auto_Evolve",{
            Text = "Auto Evolve Race v2",
            Default = false
        }):OnChanged(function ()
            _G.Auto_EvoRace = Toggles.Auto_Evolve.Value
            StopTween(_G.Auto_EvoRace)
        end)

        spawn(function()
            pcall(function()
                while wait() do
                    if _G.Auto_EvoRace then
                        if not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
                                topos(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.39014104e-08, -0.68292886, 3.59963224e-08, 1, 5.50667032e-08, 0.68292886, 1.56424669e-08, -0.730484903))
                                if (Vector3.new(-2779.83521, 72.9661407, -3574.02002) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                                    wait(1.3)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
                                end
                            elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
                                pcall(function()
                                    if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
                                        topos(game:GetService("Workspace").Flower1.CFrame)
                                    elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
                                        topos(game:GetService("Workspace").Flower2.CFrame)
                                    elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
                                        if game:GetService("Workspace").Enemies:FindFirstChild("Zombie [Lv. 950]") then
                                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if v.Name == "Zombie [Lv. 950]" then
                                                    repeat task.wait()
                                                        AutoHaki()
                                                        EquipWeapon(_G.SelectWeapon)
                                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                                        v.HumanoidRootPart.CanCollide = false
                                                        game:GetService("VirtualUser"):CaptureController()
                                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                                        PosMonEvo = v.HumanoidRootPart.CFrame
                                                        StartEvoMagnet = true
                                                    until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_EvoRace == false
                                                    StartEvoMagnet = false
                                                end
                                            end
                                        else
                                            StartEvoMagnet = false
                                            topos(CFrame.new(-5685.9233398438, 48.480125427246, -853.23724365234))
                                        end
                                    end
                                end)
                            else
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
                                end
                            end
                        end
                    end
                end
            end)
        end)

        mista:AddToggle("Auto_Farm_Ectoplasm",{
            Text = "Auto Farm Ectoplasm",
            Default = false
        }):OnChanged(function ()
            _G.AutoEctoplasm = Toggles.Auto_Farm_Ectoplasm.Value
            StopTween(_G.AutoEctoplasm)
        end)

        spawn(function()
            pcall(function()
                while wait() do
                    if _G.AutoEctoplasm and W2 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand [Lv. 1250]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer [Lv. 1275]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward [Lv. 1300]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer [Lv. 1325]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if string.find(v.Name, "Ship") then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        AutoHaki()
                                        if string.find(v.Name,"Ship") then
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            EctoplasmMon = v.HumanoidRootPart.CFrame
                                            StartEctoplasmMagnet = true
                                        else
                                            StartEctoplasmMagnet = false
                                            topos(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625))
                                        end
                                    until _G.AutoEctoplasm == false or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        else
                            StartEctoplasmMagnet = false
                            local Distance = (Vector3.new(911.35827636719, 125.95812988281, 33159.5390625) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                            if Distance > 18000 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                            end
                            topos(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625))
                        end
                    end
                end
            end)
        end)

        mista:AddToggle("Auto_Farm_Bone",{
            Text = "Auto Farm Bone",
            Default = false
        }):OnChanged(function ()
            _G.AutoFarmBone = Toggles.Auto_Farm_Bone.Value
            StopTween(_G.AutoFarmBone)
        end)

        spawn(function()
            while wait() do 
                if _G.AutoFarmBone and W3 then
                    pcall(function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Domenic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
                                    if v.Humanoid.Health > 0 then
                                        repeat task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false 
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                            PosMonBone = v.HumanoidRootPart.CFrame
                                            StartMagnetBoneMon = true
                                        until not _G.AutoFarmBone or v.Humanoid.Health <= 0 or not v.Parent
                                    end
                                end
                            end
                        else
                            StartMagnetBoneMon = false
                            topos(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))                    
                        end
                    end)
                end
            end
        end)

        mista:AddToggle("Auto_Yama",{
            Text = "Auto Farm Yama",
            Default = false,
        }):OnChanged(function ()
            _G.Auto_Yama = Toggles.Auto_Yama.Value
            StopTween(_G.Auto_Yama)
        end)

        spawn(function()
            while wait() do
                if _G.Auto_Yama then
                    pcall(function()
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
                            fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
                        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") <= 29 then
                            local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                            if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                                wait(.5)
                                local A_1 = "EliteHunter"
                                local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
                                Event:InvokeServer(A_1)
                            elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                if string.find(QuestTitle,"Diablo") or string.find(QuestTitle,"Deandre") or string.find(QuestTitle,"Urban") then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Diablo [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" then
                                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                    repeat task.wait()
                                                        AutoHaki()
                                                        EquipWeapon(_G.SelectWeapon)
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid.WalkSpeed = 0
                                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                                        game:GetService("VirtualUser"):CaptureController()
                                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                    until _G.Auto_Yama == false or v.Humanoid.Health <= 0 or not v.Parent
                                                end
                                            end
                                        end
                                    else
                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") then
                                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                        elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
                                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                        elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") then
                                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                        end
                                    end
                                end
                            end
                        end
                    end)
                end
            end
        end)

        mista:AddToggle("Auto_Tushita",{
            Text = "Auto Farm Tushita",
            Default = false
        }):OnChanged(function ()
            _G.Auto_Tushita = Toggles.Auto_Tushita.Value
            StopTween(_G.Auto_Tushita)
        end)

        spawn(function ()
            while wait() do
                if _G.Auto_Tushita then
                    pcall(function ()
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
                            repeat wait(.2)
                                EquipWeapon("Holy Torch")
                                topos(CFrame.new(-10752.4434, 415.261749, -9367.43848, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                            until (Vector3.new(-10752.4434, 415.261749, -9367.43848)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                            wait(2)
                            repeat wait(.2)
                                EquipWeapon("Holy Torch")
                                topos(CFrame.new(-11671.6289, 333.78125, -9474.31934, 0.300932229, 0, -0.953645527, 0, 1, 0, 0.953645527, 0, 0.300932229))
                            until (Vector3.new(-11671.6289, 333.78125, -9474.31934)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                            wait(2)
                            repeat wait(.2)
                                EquipWeapon("Holy Torch")
                                topos(CFrame.new(-12133.1406, 521.507446, -10654.292, 0.80428642, 0, -0.594241858, 0, 1, 0, 0.594241858, 0, 0.80428642))
                            until (Vector3.new(-12133.1406, 521.507446, -10654.292)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                            wait(2)
                            repeat wait(.2)
                                EquipWeapon("Holy Torch")
                                topos(CFrame.new(-13336.127, 484.521179, -6985.31689, 0.853732228, 0, -0.520712316, 0, 1, 0, 0.520712316, 0, 0.853732228))
                            until (Vector3.new(-13336.127, 484.521179, -6985.31689)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                            wait(2)
                            EquipWeapon("Holy Torch")
                            repeat wait(.2)
                                topos(CFrame.new(-13487.623, 336.436188, -7924.53857, -0.982848108, 0, 0.184417039, 0, 1, 0, -0.184417039, 0, -0.982848108))
                            until (Vector3.new(-13487.623, 336.436188, -7924.53857)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                        elseif game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 5000] [Raid Boss]") then
                            topos(CFrame.new(5148.03613, 162.352493, 910.548218, 0, 0, -1, 0, 1, 0, 1, 0, 0))
                        else
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                                repeat wait(.2) 
                                    local ohString1 = "activateColor"
                                    local ohString2 = "Snow White"
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(ohString1, ohString2)
                                    topos(CFrame.new(-4971.47559, 331.565765, -3720.02954, -0.92051065, 0, 0.390717506, 0, 1, 0, -0.390717506, 0, -0.92051065))
                                until (Vector3.new(-4971.47559, 331.565765, -3720.02954)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                                repeat wait(.2) 
                                    local ohString1 = "activateColor"
                                    local ohString2 = "Pure Red"
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(ohString1, ohString2)
                                    topos(CFrame.new(-5414.41357, 309.865753, -2212.45776, 0.374604106, -0, -0.92718488, 0, 1, -0, 0.92718488, 0, 0.374604106))
                                until (Vector3.new(-5414.41357, 309.865753, -2212.45776)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                                repeat wait(.2) 
                                    local ohString1 = "activateColor"
                                    local ohString2 = "Winter Sky"
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(ohString1, ohString2)
                                    topos(CFrame.new(-5420.16602, 1084.9657, -2666.8208, 0.390717864, 0, 0.92051065, 0, 1, 0, -0.92051065, 0, 0.390717864))
                                until (Vector3.new(-5420.16602, 1084.9657, -2666.34204)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                                repeat wait(.2) 
                                    EquipWeapon("God's Chalice")
                                    topos(CFrame.new(-5561.32471, 314.284546, -2663.39697, -0.391084909, 1.08295005e-07, 0.920354605, 4.10446699e-09, 1, -1.15922504e-07, -0.920354605, -4.15579748e-08, -0.391084909))
                                until (Vector3.new(-5561.32471, 314.284546, -2663.39697)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                            else
                                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                                if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                                    wait(.5)
                                    local A_1 = "EliteHunter"
                                    local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
                                    Event:InvokeServer(A_1)
                                elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                    if string.find(QuestTitle,"Diablo") or string.find(QuestTitle,"Deandre") or string.find(QuestTitle,"Urban") then
                                        if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if v.Name == "Diablo [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" then
                                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                        repeat task.wait()
                                                            AutoHaki()
                                                            EquipWeapon(_G.SelectWeapon)
                                                            v.HumanoidRootPart.CanCollide = false
                                                            v.Humanoid.WalkSpeed = 0
                                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                                            game:GetService("VirtualUser"):CaptureController()
                                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                        until _G.Auto_Tushita == false or v.Humanoid.Health <= 0 or not v.Parent
                                                    end
                                                end
                                            end
                                        else
                                            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") then
                                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
                                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") then
                                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end)
                end
            end
        end)

        mista:AddToggle("Auto_Quest_Bartilo",{
            Text = "Auto Farm Quest Bartilo",
            Default = false
        }):OnChanged(function ()
            _G.AutoBartilo = Toggles.Auto_Quest_Bartilo.Value
            StopTween(_G.AutoBartilo)
        end)

        spawn(function()
            while wait() do
                if _G.AutoBartilo then
                    pcall(function()
                        if game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
                            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then 
                                if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
                                    Ms = "Swan Pirate [Lv. 775]"
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == Ms then
                                            pcall(function()
                                                repeat task.wait()
                                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                                    EquipWeapon(_G.SelectWeapon)
                                                    AutoHaki()
                                                    v.HumanoidRootPart.CanCollide = false
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))													
                                                    PosMonBarto =  v.HumanoidRootPart.CFrame
                                                    game:GetService'VirtualUser':CaptureController()
                                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                    AutoBartiloBring = true
                                                until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                                AutoBartiloBring = false
                                            end)
                                        end
                                    end
                                else
                                    topos(CFrame.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582))
                                    AutoBartiloBring = false
                                end
                            else
                                topos(CFrame.new(-456.28952, 73.0200958, 299.895966))
                                wait(1.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
                                AutoBartiloBring = false
                            end
                        elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                                Ms = "Jeremy [Lv. 850] [Boss]"
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == Ms then
                                        repeat task.wait()
                                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                            EquipWeapon(_G.SelectWeapon)
                                            AutoHaki()
                                            v.HumanoidRootPart.CanCollide = false
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                        until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false
                                    end
                                end
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                                topos(CFrame.new(-456.28952, 73.0200958, 299.895966))
                                wait(1.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
                                wait(1)
                                topos(CFrame.new(2099.88159, 448.931, 648.997375))
                                wait(2)
                            else
                                topos(CFrame.new(2099.88159, 448.931, 648.997375))
                            end
                        elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
                            repeat wait(.2)
                                topos(CFrame.new(-1850.49329, 13.1789551, 1750.89685))
                            until (Vector3.new(-1850.49329, 13.1789551, 1750.89685)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                            wait(2)
                            repeat wait(.2)
                                topos(CFrame.new(-1858.87305, 19.3777466, 1712.01807))
                            until (Vector3.new(-1858.87305, 19.3777466, 1712.01807)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                            wait(2)
                            repeat wait(.2)
                                topos(CFrame.new(-1803.94324, 16.5789185, 1750.89685))
                            until (Vector3.new(-1803.94324, 16.5789185, 1750.89685)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                            wait(2)
                            repeat wait(.2)
                                topos(CFrame.new(-1858.55835, 16.8604317, 1724.79541))
                            until (Vector3.new(-1858.55835, 16.8604317, 1724.79541)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                            wait(2)
                            repeat wait(.2)
                                topos(CFrame.new(-1869.54224, 15.987854, 1681.00659))
                            until (Vector3.new(-1869.54224, 15.987854, 1681.00659)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                            wait(2)
                            repeat wait(.2)
                                topos(CFrame.new(-1800.0979, 16.4978027, 1684.52368))
                            until (Vector3.new(-1800.0979, 16.4978027, 1684.52368)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                            wait(2)
                            repeat wait(.2)
                                topos(CFrame.new(-1819.26343, 14.795166, 1717.90625))
                            until (Vector3.new(-1819.26343, 14.795166, 1717.90625)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                            wait(2)
                            repeat wait(.2)
                                topos(CFrame.new(-1813.51843, 14.8604736, 1724.79541))
                            until (Vector3.new(-1813.51843, 14.8604736, 1724.79541)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                            wait(2)
                        end  
                    end)
                end
            end
        end)
    end
end
Melee = {"Combat","Black Leg","Electro","Fishman Karate","Dragon Claw","Superhuman","Death Step","Electric Claw","Sharkman Karate","Dragon Talon","Godhuman"}
local tab7 = Tabs.page2:AddLeftTabbox() do
    local FightingStyle = tab7:AddTab("Melee") do
        function MeleeBuy(N1,N2,N3,N4)
            FightingStyle:AddButton(N1,function ()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(N2,N3,N4)
            end)
        end
        local a = FightingStyle:AddLabel("")
        a:Seperator([[\\ Fighting Style //]])
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
end
local tab8 = Tabs.page2:AddRightTabbox() do
    local sword = tab8:AddTab("Sword") do
        local a = sword:AddLabel("")
        a:Seperator([[\\ Sword Style //]])
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

local tab9 = Tabs.page2:AddLeftTabbox() do
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
        acc:AddButton("Random Bone",function ()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
        end)
    end
    local ab = tab9:AddTab("Ability") do
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

local tab10 = Tabs.page2:AddRightTabbox() do
    local Gun = tab10:AddTab("Gun") do
        local a = Gun:AddLabel("")
        a:Seperator([[\\ Gunner //]])
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
local tab11 = Tabs.page2:AddLeftTabbox() do
    local mis = tab11:AddTab("Misc Shop") do
        mis:AddButton("Refund Stat [2500 F]", function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
        end)
        
        mis:AddButton("Reroll Race [3000 F]", function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","1")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","2")
        end)
    end
end
Playerslist = {}
for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(Playerslist,v.Name)
end

local tab12 = Tabs.page3:AddLeftTabbox() do
    local plr = tab12:AddTab("Players") do
        local a = plr:AddLabel("")
        a:Seperator([[\\ Select Players //]])
        local play = plr:AddDropdown("Select_Player",{
            Values = Playerslist,
            Default = 1,
            Text = "Select Players",
            Multi = false,
        })
        Options.Select_Player:OnChanged(function ()
            _G.SelectPly = Options.Select_Player.Value
        end)

        spawn(function ()
            while wait(.2) do
                table.clear(Playerslist)
                for i,v in pairs(game:GetService("Players"):GetChildren()) do
                    table.insert(Playerslist,v.Name)
                end
                play:SetValues(Playerslist)
            end
        end)

        local b = plr:AddLabel("")
        b:Seperator([[\\ Main Stuff //]])
        plr:AddToggle("Auto_Farm_Plr",{
            Text = "Auto Farm Players",
            Default = false
        }):OnChanged(function ()
            _G.Auto_Kill_Ply = Toggles.Auto_Farm_Plr.Value
            StopTween(_G.Auto_Kill_Ply)
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
                                        topos(game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                        spawn(function()
                                            pcall(function()
                                                if _G.SelectWeapon == SelectWeaponGun then
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

        plr:AddToggle("Auto_Farm_Plr_Gun",{
            Text = "Auto Farm Players Use Only Gun",
            Default = false
        }):OnChanged(function ()
            _G.Auto_Kill_Player_Gun = Toggles.Auto_Farm_Plr_Gun.Value
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
        local c = plr:AddLabel("")
        c:Seperator([[\\ Special Stuff //]])
        local ESP = loadstring(game:HttpGet('https://raw.githubusercontent.com/ExZeroz/Roblox/main/KiriotESP.lua'))()
        ESP.Boxes = true
        ESP.Names = true
        ESP.Tracers = false
        ESP.TeamColor = true

        plr:AddToggle("ESP_Player",{
            Text = "ESP Players",
            Default = false
        }):OnChanged(function ()
            ESP:Toggle(Toggles.ESP_Player.Value)
            ESP.Players = Toggles.ESP_Player.Value
        end)
        plr:AddToggle("Spectate",{
            Text = "Spectate Players",
            Default = false
        }):OnChanged(function ()
            SpectatePlys = Toggles.Spectate.Value
            local plr1 = game:GetService("Players").LocalPlayer.Character.Humanoid
            local plr2 = game:GetService("Players"):FindFirstChild(_G.SelectPly)
            repeat wait(.1)
                game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players"):FindFirstChild(_G.SelectPly).Character.Humanoid
            until SpectatePlys == false 
            game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
        end)
        local d = plr:AddLabel("")
        d:Seperator([[\\ Miscellaneous //]])
        plr:AddToggle("Teleport_Player",{
            Text = "Teleport To Players",
            Default = false
        }):OnChanged(function ()
            _G.TeleportPly = Toggles.Teleport_Player.Value
            pcall(function()
                if _G.TeleportPly then
                    repeat topos(game:GetService("Players")[_G.SelectPly].Character.HumanoidRootPart.CFrame) wait() until _G.TeleportPly == false
                end
                StopTween(_G.TeleportPly)
            end)
        end)
    end
end

local tab13 = Tabs.page3:AddRightTabbox() do
    local aim = tab13:AddTab("Aimbot") do
        local a = aim:AddLabel("")
        a:Seperator([[\\ Aimbot Skill & Gun //]])
        aim:AddToggle("Aimbot",{
            Text = "Aimbot Skill & Gun",
            Default = false
        }):OnChanged(function ()
            AimBotFullFunction = Toggles.Aimbot.Value
        end)
        local b = aim:AddLabel("")
        b:Seperator([[\\ Skill - Fov Aimbot //]])
        aim:AddToggle("Fov",{
            Text = "Enabled Fov",
            Default = false
        }):OnChanged(function ()
            ShowFov = Toggles.Fov.Value
        end)
        local c = aim:AddLabel("")
        c:Seperator([[\\ Fov - Settings //]])
        aim:AddLabel("Color :"):AddColorPicker('ColorPicker', {
            Default = Color3.fromRGB(255,255,255),
            Title = 'Fov Color',
        })
        Options.ColorPicker:OnChanged(function()
            _G.ColorFov = Options.ColorPicker.Value
        end)
        aim:AddSlider("Fov_Size",{
            Text = "Fov Radius",
            Default = 200,
            Min = 1,
            Max = 500,
            Compact = false,
            Rounding = 0,
        }):OnChanged(function ()
            _G.FOVSize = Options.Fov_Size.Value
        end)
        aim:AddSlider("Fov_NumSides",{
            Text = "Fov NumSides",
            Default = 64,
            Min = 1,
            Max = 64,
            Compact = false,
            Rounding = 0,
        }):OnChanged(function ()
            _G.Numsi = Options.Fov_NumSides.Value
        end)
        aim:AddSlider("Fov_Thickness",{
            Text = "Fov Thickness",
            Default = 1,
            Min = 1,
            Max = 10,
            Compact = false,
            Rounding = 0,
        }):OnChanged(function ()
            _G.Thicknis = Options.Fov_Thickness.Value
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

local tab14 = Tabs.page3:AddLeftTabbox() do
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
                        Current:SetText("Current Bounty : "..Bounty1.." [ Max ]")
                    elseif tonumber(Bounty) < 25000000 then
                        Current:SetText("Current Bounty : "..Bounty1)
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
                    Earn:SetText("Earned Bounty : "..tonumber(Earned1))
                end)
            end
        end)
    end
end
local tab15 = Tabs.page3:AddRightTabbox() do
    local boost = tab15:AddTab("Boost - Up") do
        local a = boost:AddLabel("")
        a:Seperator([[\\ Race - Boost //]])
    end
end
Bitch = true
local RunService = game:GetService("RunService")
RunService.RenderStepped:Connect(function()
    pcall(function()
            if Bitch == true then
                Library:SetWatermarkVisibility(true)
                local seconds = math.floor(workspace.DistributedGameTime)
                local minutes = math.floor(workspace.DistributedGameTime / 60)
                local hours = math.floor(workspace.DistributedGameTime / 60 / 60)
                local seconds = seconds - (minutes * 60)
                local minutes = minutes - (hours * 60)
                    if hours < 1 then if minutes < 1 then
                            Library:SetWatermark("Xeris Hub Free Script | "..seconds .. " Second(s)")
                        else
                            Library:SetWatermark("Xeris Hub Free Script | "..minutes .. " Minute(s), " .. seconds .. " Second(s)")
                        end
                    else
                    Library:SetWatermark("Xeris Hub Free Script | "..hours .. " Hour(s), " .. minutes .. " Minute(s), " .. seconds .. " Second(s)")
                end
            elseif Bitch == false then
                Library:SetWatermarkVisibility(false)
            end
        end
    )
end
)

local a = require(game:GetService("ReplicatedStorage").Effect.Container.Misc.Damage)
local old = a.Run
a.Run = function(...)
    args = {...}
    args[1]['Value'] = "😳 Critical 😳"
    return old(...)
end

Library:Notify("Loading Success",3)
Library:Notify("Your In Version Test",3)
