if game:GetService('CoreGui'):FindFirstChild('ScreenGui') then
    game:GetService('CoreGui'):FindFirstChild('ScreenGui'):Destroy()
end
local start = tick()
local function IsAlive(plr)
	if plr and plr.Character and plr.Character.FindFirstChild(plr.Character, "Humanoid") and plr.Character.Humanoid.Health > 0 then
		return true
	end

	return false
end

local client = game:GetService('Players').LocalPlayer;
local set_identity = (type(syn) == 'table' and syn.set_thread_identity) or setidentity or setthreadcontext
local executor = identifyexecutor and identifyexecutor() or 'Unknown'

local function fail(r) return client:Kick(r) end

-- gracefully handle errors when loading external scripts
-- added a cache to make hot reloading a bit faster
local usedCache = shared.__urlcache and next(shared.__urlcache) ~= nil

shared.__urlcache = shared.__urlcache or {}
local function urlLoad(url)
    local success, result

    if shared.__urlcache[url] then
        success, result = true, shared.__urlcache[url]
    else
        success, result = pcall(game.HttpGet, game, url)
    end

    if (not success) then
        return fail(string.format('Failed to GET url %q for reason: %q', url, tostring(result)))
    end

    local fn, err = loadstring(result)
    if (type(fn) ~= 'function') then
        return fail(string.format('Failed to loadstring url %q for reason: %q', url, tostring(err)))
    end

    local results = { pcall(fn) }
    if (not results[1]) then
        return fail(string.format('Failed to initialize url %q for reason: %q', url, tostring(results[2])))
    end

    shared.__urlcache[url] = result
    return unpack(results, 2)
end

-- attempt to block imcompatible exploits
-- rewrote because old checks literally did not work
if type(set_identity) ~= 'function' then return fail('Unsupported exploit (missing "set_thread_identity")') end
if type(getconnections) ~= 'function' then return fail('Unsupported exploit (missing "getconnections")') end
if type(getloadedmodules) ~= 'function' then return fail('Unsupported exploit (misssing "getloadedmodules")') end
if type(getgc) ~= 'function' then   return fail('Unsupported exploit (misssing "getgc")') end

local getinfo = debug.getinfo or getinfo;
local getupvalue = debug.getupvalue or getupvalue;
local getupvalues = debug.getupvalues or getupvalues;
local setupvalue = debug.setupvalue or setupvalue;

if type(setupvalue) ~= 'function' then return fail('Unsupported exploit (misssing "debug.setupvalue")') end
if type(getupvalue) ~= 'function' then return fail('Unsupported exploit (misssing "debug.getupvalue")') end
if type(getupvalues) ~= 'function' then return fail('Unsupported exploit (missing "debug.getupvalues")') end

-- free exploit bandaid fix
if type(getinfo) ~= 'function' then
    local debug_info = debug.info;
    if type(debug_info) ~= 'function' then
        -- if your exploit doesnt have getrenv you have no hope
        if type(getrenv) ~= 'function' then return fail('Unsupported exploit (missing "getrenv")') end
        debug_info = getrenv().debug.info
    end
    getinfo = function(f)
        assert(type(f) == 'function', string.format('Invalid argument #1 to debug.getinfo (expected %s got %s', 'function', type(f)))
        local results = { debug.info(f, 'slnfa') }
        local _, upvalues = pcall(getupvalues, f)
        if type(upvalues) ~= 'table' then
            upvalues = {}
        end
        local nups = 0
        for k in next, upvalues do
            nups = nups + 1
        end
        -- winning code
        return {
            source      = '@' .. results[1],
            short_src   = results[1],
            what        = results[1] == '[C]' and 'C' or 'Lua',
            currentline = results[2],
            name        = results[3],
            func        = results[4],
            numparams   = results[5],
            is_vararg   = results[6], -- 'a' argument returns 2 values :)
            nups        = nups,     
        }
    end
end



local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'
local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()
local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local metadata = urlLoad("https://raw.githubusercontent.com/wally-rblx/funky-friday-autoplay/main/metadata.lua")
local httpService = game:GetService('HttpService')

local framework, scrollHandler, network
local counter = 0

while true do
    for _, obj in next, getgc(true) do
        if type(obj) == 'table' then 
            if rawget(obj, 'GameUI') then
                framework = obj;
            elseif type(rawget(obj, 'Server')) == 'table' then
                network = obj;     
            end
        end

        if network and framework then break end
    end

    for _, module in next, getloadedmodules() do
        if module.Name == 'ScrollHandler' then
            scrollHandler = module;
            break;
        end
    end 

    if (type(framework) == 'table' and typeof(scrollHandler) == 'Instance' and type(network) == 'table') then
        break
    end

    counter = counter + 1
    if counter > 6 then
        fail(string.format('Failed to load game dependencies. Details: %s, %s, %s', type(framework), typeof(scrollHandler), type(network)))
    end
    wait(1)
end

local runService = game:GetService('RunService')
local userInputService = game:GetService('UserInputService')
local virtualInputManager = game:GetService('VirtualInputManager')

local random = Random.new()

local task = task or getrenv().task;
local fastWait, fastSpawn = task.wait, task.spawn;

-- firesignal implementation
-- hitchance rolling
local fireSignal, rollChance do
    -- updated for script-ware or whatever
    -- attempted to update for krnl

    function fireSignal(target, signal, ...)
        -- getconnections with InputBegan / InputEnded does not work without setting Synapse to the game's context level
        set_identity(2)
        local didFire = false
        for _, signal in next, getconnections(signal) do
            if type(signal.Function) == 'function' and islclosure(signal.Function) then
                local scr = rawget(getfenv(signal.Function), 'script')
                if scr == target then
                    didFire = true
                    pcall(signal.Function, ...)
                end
            end
        end
        -- if not didFire then fail"couldnt fire input signal" end
        set_identity(7)
    end

    -- uses a weighted random system
    -- its a bit scuffed rn but it works good enough

    function rollChance()
        -- if (//library.flags.autoPlayerMode == 'Manual') then
        if Options.AutoplayerMode.Value == 'Manual' then
            if (Options.SickBind:GetState()) then return 'Sick' end
            if (Options.GoodBind:GetState()) then return 'Good' end
            if (Options.OkayBind:GetState()) then return 'Ok' end
            if (Options.BadBind:GetState()) then return 'Bad' end

            return 'Bad' -- incase if it cant find one
        end

        local chances = {
            { 'Sick', Options.SickChance.Value },
            { 'Good', Options.GoodChance.Value },
            { 'Ok', Options.OkChance.Value },
            { 'Bad', Options.BadChance.Value },
            { 'Miss' , Options.MissChance.Value },
        }

        table.sort(chances, function(a, b)
            return a[2] > b[2]
        end)

        local sum = 0;
        for i = 1, #chances do
            sum += chances[i][2]
        end

        if sum == 0 then
            return chances[random:NextInteger(1, #chances)][1]
        end

        local initialWeight = random:NextInteger(0, sum)
        local weight = 0;

        for i = 1, #chances do
            weight = weight + chances[i][2]

            if weight > initialWeight then
                return chances[i][1]
            end
        end

        return 'Sick'
    end
end

-- autoplayer
local chanceValues do
    chanceValues = { 
        Sick = 96,
        Good = 92,
        Ok = 87,
        Bad = 75,
    }

    local keyCodeMap = {}
    for _, enum in next, Enum.KeyCode:GetEnumItems() do
        keyCodeMap[enum.Value] = enum
    end

    if shared._unload then
        pcall(shared._unload)
    end

    function shared._unload()
        if shared._id then
            pcall(runService.UnbindFromRenderStep, runService, shared._id)
        end

        UI:Unload()

        for i = 1, #shared.threads do
            coroutine.close(shared.threads[i])
        end

        for i = 1, #shared.callbacks do
            task.spawn(shared.callbacks[i])
        end
    end

    shared.threads = {}
    shared.callbacks = {}

    shared._id = httpService:GenerateGUID(false)

    local function pressKey(keyCode, state)
        if Options.PressMode.Value == 'virtual input' then
            virtualInputManager:SendKeyEvent(state, keyCode, false, nil)
        else
            fireSignal(scrollHandler, userInputService[state and 'InputBegan' or 'InputEnded'], { KeyCode = keyCode, UserInputType = Enum.UserInputType.Keyboard }, false)
        end
    end

    local rng = Random.new()
    runService:BindToRenderStep(shared._id, 1, function()
        --if (not library.flags.autoPlayer) then return end
        
        if (not Toggles.Autoplayer) or (not Toggles.Autoplayer.Value) then 
            return 
        end

        local currentlyPlaying = framework.SongPlayer.CurrentlyPlaying

        if typeof(currentlyPlaying) ~= 'Instance' or not currentlyPlaying:IsA('Sound') then 
            return 
        end

        local arrows = framework.UI:GetNotes()
        local count = framework.SongPlayer:GetKeyCount()
        local mode = count .. 'Key'

        local arrowData = framework.ArrowData[mode].Arrows
        for i, arrow in next, arrows do
            -- todo: switch to this (https://i.imgur.com/pEVe6Tx.png)
            local ignoredNoteTypes = { Death = true, Mechanic = true, Poison = true }

            if type(arrow.NoteDataConfigs) == 'table' then 
                if ignoredNoteTypes[arrow.NoteDataConfigs.Type] then 
                    continue
                end
            end

            if (arrow.Side == framework.UI.CurrentSide) and (not arrow.Marked) and currentlyPlaying.TimePosition > 0 then
                local position = (arrow.Data.Position % count) .. '' 

                local hitboxOffset = 0 
                do
                    local settings = framework.Settings;
                    local offset = type(settings) == 'table' and settings.HitboxOffset;
                    local value = type(offset) == 'table' and offset.Value;

                    if type(value) == 'number' then
                        hitboxOffset = value;
                    end

                    hitboxOffset = hitboxOffset / 1000
                end

                local songTime = framework.SongPlayer.CurrentTime 
                do
                    local configs = framework.SongPlayer.CurrentSongConfigs
                    local playbackSpeed = type(configs) == 'table' and configs.PlaybackSpeed

                    if type(playbackSpeed) ~= 'number' then
                        playbackSpeed = 1
                    end

                    songTime = songTime /  playbackSpeed
                end

                local noteTime = math.clamp((1 - math.abs(arrow.Data.Time - (songTime + hitboxOffset))) * 100, 0, 100)

                local result = rollChance()
                arrow._hitChance = arrow._hitChance or result;

                local hitChance = (Options.AutoplayerMode.Value == 'Manual' and result or arrow._hitChance)
                if hitChance ~= "Miss" and noteTime >= chanceValues[arrow._hitChance] then
                    fastSpawn(function()
                        arrow.Marked = true;
                        local keyCode = keyCodeMap[arrowData[position].Keybinds.Keyboard[1]]

                        pressKey(keyCode, true)

                        local arrowLength = arrow.Data.Length or 0
                        local isHeld = arrowLength > 0

                        local delayMode = Options.DelayMode.Value

                        local minDelay = isHeld and Options.HeldDelayMin or Options.NoteDelayMin;
                        local maxDelay = isHeld and Options.HeldDelayMax or Options.NoteDelayMax;
                        local noteDelay = isHeld and Options.HeldDelay or Options.ReleaseDelay

                        local delay = delayMode == 'Random' and rng:NextNumber(minDelay.Value, maxDelay.Value) or noteDelay.Value
                        task.wait(arrowLength + (delay / 1000))

                        pressKey(keyCode, false)
                        arrow.Marked = nil;
                    end)
                end
            end
        end
    end)
end

local ActivateUnlockables do
    -- Note: I know you can do this with UserId but it only works if you run it before opening the notes menu
    -- My script should work no matter the order of which you run things :)

    local loadStyle = nil
    local function loadStyleProxy(...)
        -- This forces the styles to reload every time
            
        local upvalues = getupvalues(loadStyle)
        for i, upvalue in next, upvalues do
            if type(upvalue) == 'table' and rawget(upvalue, 'Style') then
                rawset(upvalue, 'Style', nil);
                setupvalue(loadStyle, i, upvalue)
            end
        end

        return loadStyle(...)
    end

    local function applyLoadStyleProxy(...)
        local gc = getgc()
        for i = 1, #gc do
            local obj = gc[i]
            if type(obj) == 'function' then
                -- goodbye nups numeric loop because script-ware is weird
                local upvalues = getupvalues(obj)
                for i, upv in next, upvalues do
                    if type(upv) == 'function' and getinfo(upv).name == 'LoadStyle' then
                        -- ugly but it works, we don't know every name for is_synapse_function and similar
                        local function isGameFunction(fn)
                            return getinfo(fn).source:match('%.ArrowSelector%.Customize$')
                        end

                        if isGameFunction(obj) and isGameFunction(upv) then
                            -- avoid non-game functions :)
                            loadStyle = loadStyle or upv
                            setupvalue(obj, i, loadStyleProxy)

                            table.insert(shared.callbacks, function()
                                assert(pcall(setupvalue, obj, i, loadStyle))
                            end)
                        end
                    end
                end
            end
        end
    end

    local success, error = pcall(applyLoadStyleProxy)
    if not success then
        return fail(string.format('Failed to hook LoadStyle function. Error(%q)\nExecutor(%q)\n', error, executor))
    end

    function ActivateUnlockables()
        local idx = table.find(framework.SongsWhitelist, client.UserId)
        if idx then return end

        Library:Notify('Developer arrows have been unlocked!', 3)
        table.insert(framework.SongsWhitelist, client.UserId)
    end
end

-- UpdateScore hook
do
    while type(roundManager) ~= 'table' do
        task.wait()
        roundManager = network.Server.RoundManager
    end

    local oldUpdateScore = roundManager.UpdateScore;
    function roundManager.UpdateScore(...)
        local args = { ... }
        local score = args[2]

        if type(score) == 'number' and Options.ScoreModifier then
        --    table.foreach(args, warn)
            if Options.ScoreModifier.Value == 'No decrease on miss' then
                args[2] = 0
            elseif Options.ScoreModifier.Value == 'Increase score on miss' then
                args[2] = math.abs(score)
            end
        end

        return oldUpdateScore(unpack(args))
    end

    table.insert(shared.callbacks, function()
        roundManager.UpdateScore = oldUpdateScore
    end)
end

local Window = Library:CreateWindow({Title = 'Reso Hub - Update 5/10/2022 - Premieum Edition',Center = true, AutoShow = true,})
local Groups = {}
local Tabs = {Main = Window:AddTab('Main'), ['UI Settings'] = Window:AddTab('UI Settings'),}
Groups.Autoplayer = Tabs.Main:AddLeftGroupbox('Autoplayer')
    Groups.Autoplayer:AddToggle('Autoplayer', { Text = 'กดอัตโนมัติ' }):AddKeyPicker('AutoplayerBind', { Default = 'End', NoUI = true, SyncToggleState = true })
    Groups.Autoplayer:AddDropdown('PressMode', {
        Text = 'Input mode', 
        Compact = true, 
        Default = 'firesignal', 
        Values = { 'firesignal', 'virtual input' }, 
        Tooltip = 'Input method used to press arrows.\n* firesignal: calls input functions directly.\n* virtual input: emulates key presses. use if "firesignal" does not work.', 
    })

Groups.HitChances = Tabs.Main:AddLeftGroupbox('โอกาสในการกด')
    Groups.HitChances:AddDropdown('AutoplayerMode', { 
        Text = 'เลือกโหมดอัตโนมัติ',
        Compact = true,
        Default = 1,
        Values = { 'Automatic', 'Manual' },
        Tooltip = 'Mode to use for deciding when to hit notes.\n* Automatic: hits notes based on chance sliders\n* Manual: hits notes based on held keybinds',
    })

    Groups.HitChances:AddSlider('SickChance',   { Text = 'โอกาส Sick', Min = 0, Max = 100, Default = 100, Suffix = '%', Rounding = 0, Compact = true })
    Groups.HitChances:AddSlider('GoodChance',   { Text = 'โอกาส Good', Min = 0, Max = 100, Default = 0, Suffix = '%', Rounding = 0, Compact = true })
    Groups.HitChances:AddSlider('OkChance',     { Text = 'โอกาส Ok',   Min = 0, Max = 100, Default = 0, Suffix = '%', Rounding = 0, Compact = true })
    Groups.HitChances:AddSlider('BadChance',    { Text = 'โอกาส Bad',  Min = 0, Max = 100, Default = 0, Suffix = '%', Rounding = 0, Compact = true })
    Groups.HitChances:AddSlider('MissChance',   { Text = 'โอกาส Miss', Min = 0, Max = 100, Default = 0, Suffix = '%', Rounding = 0, Compact = true })

Groups.HitTiming = Tabs.Main:AddLeftGroupbox('Hit timing')
    Groups.HitTiming:AddDropdown('DelayMode', { 
        Text = 'ดีเลโหมด', 
        Default = 1, 
        Values = { 'Manual', 'สุ่ม' },
        Tooltip = 'Adjustable timing for when to release notes.\n* Manual releases the note after a fixed amount of time.\n* Random releases the note after a random amount of time.',
    })

    Groups.HitTiming:AddLabel('Manual delay')
    Groups.HitTiming:AddSlider('ReleaseDelay',   { Text = 'Note delay', Min = 0, Max = 500, Default = 20, Rounding = 0, Compact = true, Suffix = 'ms' })
    Groups.HitTiming:AddSlider('HeldDelay',      { Text = 'Held note delay', Min = -20, Max = 100, Default = 0, Rounding = 0, Compact = true, Suffix = 'ms' })
        
    Groups.HitTiming:AddLabel('Random delay')
    Groups.HitTiming:AddSlider('NoteDelayMin',   { Text = 'Min note delay', Min = 0, Max = 100, Default = 0,    Rounding = 0, Compact = true, Suffix = 'ms' })
    Groups.HitTiming:AddSlider('NoteDelayMax',   { Text = 'Max note delay', Min = 0, Max = 500, Default = 20,   Rounding = 0, Compact = true, Suffix = 'ms' })
    
    Groups.HitTiming:AddSlider('HeldDelayMin',   { Text = 'Min held note delay', Min = 0, Max = 100, Default = 0,   Rounding = 0, Compact = true, Suffix = 'ms' })
    Groups.HitTiming:AddSlider('HeldDelayMax',   { Text = 'Max held note delay', Min = 0, Max = 500, Default = 20,  Rounding = 0, Compact = true, Suffix = 'ms' })

Groups.Unlockables = Tabs.Main:AddRightGroupbox('Unlockables')
    Groups.Unlockables:AddButton('Unlock developer notes', ActivateUnlockables)

Groups.Keybinds = Tabs.Main:AddRightGroupbox('Keybinds')
    Groups.Keybinds:AddLabel('Sick'):AddKeyPicker('SickBind', { Default = 'One', NoUI = true })
    Groups.Keybinds:AddLabel('Good'):AddKeyPicker('GoodBind', { Default = 'Two', NoUI = true })
    Groups.Keybinds:AddLabel('Ok'):AddKeyPicker('OkayBind', { Default = 'Three', NoUI = true })
    Groups.Keybinds:AddLabel('Bad'):AddKeyPicker('BadBind', { Default = 'Four', NoUI = true })
local Bitch = true
local tabMenugroup = Tabs['UI Settings']:AddLeftTabbox() do
    local MenuGroup = tabMenugroup:AddTab('Menu') do
        MenuGroup:AddButton('Unload', function() Library:Unload() end)
        MenuGroup:AddToggle('Show',{Text = 'Show Watermark',Default = true}):OnChanged(function()
            Bitch = Toggles.Show.Value
        end)
        MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'RightControl', NoUI = true, Text = 'Menu keybind' })
            Library.ToggleKeybind = Options.MenuKeybind
        end
    local Client = tabMenugroup:AddTab('Server Time') do
        Client:AddLabel('         -- Server Time --')
        Hours = Client:AddLabel('      |Hour(s) : ')
        Minutes = Client:AddLabel('    |Minute(s) : ')
        Seconds = Client:AddLabel('    |Second(s) : ')
        function UpdateTime()
            local GameTime = math.floor(workspace.DistributedGameTime+0.5)
            local Hour = math.floor(GameTime/(60^2))%24
            local Minute = math.floor(GameTime/(60^1))%60
            local Second = math.floor(GameTime/(60^0))%60
            Hours:SetText("         Hour(s)   : "..Hour)
            Minutes:SetText('         Minute(s) : '..Minute)
            Seconds:SetText('         Second(s) : '..Second)
        end
        
        spawn(function()
            while true do wait(.1)
                UpdateTime()
            end
        end)
    end
end

SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' })
SaveManager:SetFolder('MyScriptHub/specific-game')
SaveManager:BuildConfigSection(Tabs['UI Settings'])
local column = Tabs['UI Settings']:AddRightTabbox() do
    local section = column:AddTab('-- Status Players --') do
    section:AddInput('MyTextbox', {Default = 'Put PlayersName Here',Numeric = false,Finished = false,Text = 'Players',Placeholder = 'PlaceHolder TextPlayerName',})
        local age = section:AddLabel('Age : ')
        local alive = section:AddLabel('Alive : ')
        local id = section:AddLabel('Id : ')
        local dis = section:AddLabel('DisplayName : ')
        local name = section:AddLabel('Name : ')
        
        Options.MyTextbox:OnChanged(function(val)
            if game.Players:FindFirstChild(val) then
                local plr = game.Players:FindFirstChild(val)

                while game.Players:FindFirstChild(Options.MyTextbox.Value) do
                    wait(0.1)
                    age:SetText("Age : "..plr.AccountAge.." days")
                    alive:SetText('Alive : '..(IsAlive(plr) and "yes" or "no"))
                    id:SetText('Id : '..plr.UserId)
                    dis:SetText('DisplayName : '..plr.DisplayName)
                    name:SetText('Name : '..plr.Name)
                end
                age:SetText('Age : ')
                alive:SetText('Alive : ')
                id:SetText('Id : ')
                dis:SetText('DisplayName : ')
                name:SetText('Name : ')
            end
        end)
    end
end
local columncredit = Tabs['UI Settings']:AddRightTabbox() do
    local credit = columncredit:AddTab('--Credit--') do
            credit:AddLabel('<b><font color=\"rgb(255, 147, 0)\">SKX</font></b>'..' - Scripter')
            credit:AddLabel('<b><font color=\"rgb(1, 220, 255)\">Inori</font></b>'..' - UI Library')
            credit:AddButton('Copy discord', function()
            if pcall(setclipboard, "https://discord.gg/BP8aUZgT8f") then
                Library:Notify('Successfully copied discord link to your clipboard!', 5)
            end
        end)
    end
end

local Ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]
function SetupFPS()
    local StartTime,TimeTable,
    LastTime = os.clock(), {}
    return function() LastTime = os.clock()
        for Index = #TimeTable, 1, -1 do
            TimeTable[Index + 1] = TimeTable[Index] >= LastTime - 1 and TimeTable[Index] or nil
        end TimeTable[1] = LastTime
        return os.clock() - StartTime >= 1 and #TimeTable or #TimeTable / (os.clock() - StartTime)
    end
end
--thank to dekudimz
local GetFPS = SetupFPS()
local RunService = game:GetService("RunService")
RunService.RenderStepped:Connect(function()
        pcall(function()
                if Bitch == true then
                    Library:SetWatermarkVisibility(true)
                    Library:SetWatermark('Reso Hub | '..string.format("%s %i FPS %i MS",os.date("%X"),GetFPS(),math.round(Ping:GetValue())))
                elseif Bitch == false then
                    Library:SetWatermarkVisibility(false)
                end
            end
        )
    end
)

spawn(function()
    while game:GetService("RunService").Stepped:wait(10) do
        character = game.Players.LocalPlayer.Character
        if _G.NoClip then
            pcall(function()
                for _, v in pairs(character:GetDescendants()) do
                    pcall(function()
                        if v:IsA("BasePart") then
                            pcall(function()
                            v.CanCollide = false
                            end)
                        end
                    end)
                end
            end)
        end
    end
end)

do
    local latestThemeIndex = 0
    for i, theme in next, ThemeManager.BuiltInThemes do
        if theme[1] > latestThemeIndex then
            latestThemeIndex = theme[1]
        end
    end

    latestThemeIndex = latestThemeIndex + 1

    local linoriaTheme = ThemeManager.BuiltInThemes.Default[2]
    local funkyFridayTheme = table.clone(ThemeManager.BuiltInThemes.Default[2])

    funkyFridayTheme.AccentColor = Color3.fromRGB(255, 147, 0):ToHex()

    ThemeManager.BuiltInThemes['Linoria'] = { latestThemeIndex, linoriaTheme }
    ThemeManager.BuiltInThemes['Default'] = { 1, funkyFridayTheme }

    ThemeManager:SetLibrary(Library)
    ThemeManager:SetFolder('funky_friday_autoplayer')
    ThemeManager:ApplyToGroupbox(Tabs['UI Settings']:AddLeftGroupbox('Themes'))

    SaveManager:SetIgnoreIndexes({ 
        "BackgroundColor", "MainColor", "AccentColor", "OutlineColor", "FontColor", -- themes
        "ThemeManager_ThemeList", 'ThemeManager_CustomThemeList', 'ThemeManager_CustomThemeName', -- themes
    })
end
Library:Notify(string.format('Loaded script in %.4f second(s)!', tick() - start), 3)
Library:Notify('Script Has Loaded', 3)
