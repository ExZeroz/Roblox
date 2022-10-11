local I_W = game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryWeapons")
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/naypramx/Ui__Project/Script/XeNonUi", true))()
local CenterHubNo1 = library:CreateWindow("Reso Hub - Premieum Script",Enum.KeyCode.RightControl)
local Tab = CenterHubNo1:CreateTab("General")
local Tab2 = CenterHubNo1:CreateTab("Status")
local Sector1 = Tab:CreateSector("Main","left")
local Sector2 = Tab2:CreateSector('Status Items','left')
local Sector3 = Tab2:CreateSector("Time","Right")
local shisui = Sector2:AddLabel('❌ : Shisui')
local Saddi = Sector2:AddLabel('❌ : Saddi')
local Wando = Sector2:AddLabel('❌ : Wando')
local Cursed = Sector2:AddLabel('❌ : Cursed Dual Katana')
local Hallow = Sector2:AddLabel('❌ : Hallow Scythe')
local TTK = Sector2:AddLabel('❌ : True Triple Katana')
local Hours = Sector3:AddLabel('')
local Minutes = Sector3:AddLabel('')
local seconds = Sector3:AddLabel('')

function UpdateTime()
    local GameTime = math.floor(workspace.DistributedGameTime+0.5)
    local Hour = math.floor(GameTime/(60^2))%24
    local Minute = math.floor(GameTime/(60^1))%60
    local Second = math.floor(GameTime/(60^0))%60
    Hours:Set("      Hour(s)   : "..Hour..',')
    Minutes:Set('      Minute(s) : '..Minute..',')
    seconds:Set('      Second(s) : '..Second)
end

spawn(function()
    while true do
        UpdateTime()
        wait()
    end
end)

function UpdateStatus()
	for i,x in pairs(I_W) do
		v = {
			Name = x["Name"]
		}
		if v.Name == "Shisui" then
			shisui:Set("✅ : Shisui")
		end
		if v.Name == "Wando" then
			Wando:Set("✅ : Wando")
		end
		if v.Name == "Saddi" then
			Saddi:Set("✅ : Saddi")
		end
        if v.Name == 'Cursed Dual Katana' then
            Cursed:Set('✅ : Cursed Dual Katana')
        end
        if v.Name == 'Hallow Scythe' then
            Hallow:Set('✅ : Hallow Scythe')
        end
        if v.Name == 'True Triple Katana' then
            TTK:Set('✅ : True Triple Katana')
        end
        
	end
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			if v.Name == "Shisui" then
				shisui:Set("✅ : Shisui")
			end
			if v.Name == "Wando" then
				Wando:Set("✅ : Wando")
			end
			if v.Name == "Saddi" then
				Saddi:Set("✅ : Saddi")
			end
            if v.Name == 'Cursed Dual Katana' then
                Cursed:Set('✅ : Cursed Dual Katana')
            end
            if v.Name == 'Hallow Scythe' then
                Hallow:Set('✅ : Hallow Scythe')
            end
            if v.Name == 'Hallow Scythe' then
                TTK:Set('✅ : Hallow Scythe')
            end
		end
	end
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") then
			if v.Name == "Shisui" then
				shisui:Set("✅ : Shisui")
			end
			if v.Name == "Wando" then
				Wando:Set("✅ : Wando")
			end
			if v.Name == "Saddi" then
				Saddi:Set("✅ : Saddi")
			end
            if v.Name == 'Cursed Dual Katana' then
                Cursed:Set('✅ : Cursed Dual Katana')
            end
            if v.Name == 'Hallow Scythe' then
                Cursed:Set('✅ : Hallow Scythe')
            end
            if v.Name == 'True Triple Katana' then
                Cursed:Set('✅ : True Triple Katana')
            end
		end
	end
end

spawn(function()
    while true do
        UpdateStatus()
        wait()
    end
end)
