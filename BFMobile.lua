if game:GetService("CoreGui"):FindFirstChild("ZenHub") then
    game:GetService("CoreGui"):FindFirstChild("ZenHub"):Destroy()
end

local ZenHub = Instance.new("ScreenGui")
local Open = Instance.new("TextButton")
ZenHub.Name = "ZenHub"
ZenHub.Parent = game.CoreGui
ZenHub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Open.Name = "Open"
Open.Parent = ZenHub
Open.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Open.BorderSizePixel = 0.5
Open.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
Open.Size = UDim2.new(0, 39, 0, 30)
Open.Font = Enum.Font.Code
Open.Text = ""
Open.TextColor3 = Color3.fromRGB(51,255,255)
Open.TextScaled = true
Open.TextSize = 14.000
Open.TextWrapped = true
Open.Visible = true
Open.MouseButton1Click:Connect(function()
game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,305,false,game)
end)
local MODILEMAGE = Instance.new("ImageLabel")
MODILEMAGE.Name = "MODILEMAGE"
MODILEMAGE.Parent = Open
MODILEMAGE.BackgroundColor3 = Color3.fromRGB(51,255,255)
MODILEMAGE.BackgroundTransparency = 1.000
MODILEMAGE.BorderSizePixel = 0
MODILEMAGE.Position = UDim2.new(0, 0.5, 0, 0)
MODILEMAGE.Size = UDim2.new(0, 38, 0, 31)
MODILEMAGE.Image = "rbxassetid://7386292998"

do local ui =  game:GetService("CoreGui"):FindFirstChild("DzX Lib")  if ui then ui:Destroy() end end

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()

local Atomlib = Instance.new("ScreenGui")

Atomlib.Name = "DzX Lib"
Atomlib.Parent = game:GetService("CoreGui")
Atomlib.ZIndexBehavior = Enum.ZIndexBehavior.Sibling



local function MakeDraggable(topbarobject, object)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil

	local function Update(input)
		local Delta = input.Position - DragStart
		local pos =
			UDim2.new(
			StartPosition.X.Scale,
			StartPosition.X.Offset + Delta.X,
			StartPosition.Y.Scale,
			StartPosition.Y.Offset + Delta.Y
		)
		local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
		Tween:Play()
	end

	topbarobject.InputBegan:Connect(
		function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				Dragging = true
				DragStart = input.Position
				StartPosition = object.Position

				input.Changed:Connect(
					function()
						if input.UserInputState == Enum.UserInputState.End then
							Dragging = false
						end
					end
				)
			end
		end
	)

	topbarobject.InputChanged:Connect(
		function(input)
			if
				input.UserInputType == Enum.UserInputType.MouseMovement or
					input.UserInputType == Enum.UserInputType.Touch
			then
				DragInput = input
			end
		end
	)

	UserInputService.InputChanged:Connect(
		function(input)
			if input == DragInput and Dragging then
				Update(input)
			end
		end
	)
end


local ui = {}


function ui:win()

    local fs = false 
    local currentservertoggled = ""
    local Main = Instance.new("Frame")
        
    Main.Name = "Main"
    Main.Parent = Atomlib
    Main.BackgroundColor3 = Color3.fromRGB(19 , 19, 19)
    Main.BorderSizePixel = 0
    Main.Position = UDim2.new(0.5, 0, 0.5   , 0)
    Main.Size = UDim2.new(0, 0, 0, 0)
    Main.ClipsDescendants = true 
    Main.AnchorPoint = Vector2.new(0.5, 0.5)


    local Mainpagt = Instance.new("Frame")
        
    Mainpagt.Name = "Mainpagt"
    Mainpagt.Parent = Main
    Mainpagt.BackgroundColor3 = Color3.fromRGB(30, 215, 96)
    Mainpagt.BorderSizePixel = 0
    Mainpagt.Position = UDim2.new(0, 0, 0  , 0)
    Mainpagt.Size = UDim2.new(0, 1500, 0, 120)
    Mainpagt.ClipsDescendants = true 
    Mainpagt.AnchorPoint = Vector2.new(0.5, 0.5)

local MainHub = Instance.new("Frame")
        
    MainHub.Name = "MainHub"
    MainHub.Parent = Main
    MainHub.BackgroundColor3 = Color3.fromRGB(19,19,19)
    MainHub.BorderSizePixel = 0
    MainHub.BackgroundTransparency = 0
    MainHub.Position = UDim2.new(0.50, 0, 0.26 , 0)
    MainHub.Size = UDim2.new(0, 545, 0, 160)
    MainHub.ClipsDescendants = true 
    MainHub.AnchorPoint = Vector2.new(0.5, 0.5)

    local texth3 = Instance.new("TextLabel")
                  
    texth3.Parent = MainHub
    texth3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    texth3.BackgroundTransparency = 1
    texth3.AnchorPoint = Vector2.new(0.5, 0.5)
    texth3.Position = UDim2.new(0.200, 0, 0.2, 0)
    texth3.BorderSizePixel = 0
    texth3.Size = UDim2.new(0, 130, 0, 20)
    texth3.Font = Enum.Font.GothamBold
    texth3.Text = "        Welcome To"
    texth3.TextColor3 = Color3.fromRGB(255, 255, 255)
    texth3.TextSize = 30.000

local texth1 = Instance.new("TextLabel")
                  
    texth1.Parent = MainHub
    texth1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    texth1.BackgroundTransparency = 1
    texth1.AnchorPoint = Vector2.new(0.5, 0.5)
    texth1.Position = UDim2.new(0.200, 0, 0.4, 0)
    texth1.BorderSizePixel = 0
    texth1.Size = UDim2.new(0, 130, 0, 20)
    texth1.Font = Enum.Font.GothamBold
    texth1.Text = "Xeris"
    texth1.TextColor3 = Color3.fromRGB(255, 255, 255)
    texth1.TextSize = 45.000

local texth2 = Instance.new("TextLabel")
                  
    texth2.Parent = MainHub
    texth2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    texth2.BackgroundTransparency = 1
    texth2.AnchorPoint = Vector2.new(0.5, 0.5)
    texth2.Position = UDim2.new(0.400, 0, 0.4, 0)
    texth2.BorderSizePixel = 0
    texth2.Size = UDim2.new(0, 130, 0, 20)
    texth2.Font = Enum.Font.GothamBold
    texth2.Text = "Hub"
    texth2.TextColor3 = Color3.fromRGB(30, 215, 96)
    texth2.TextSize = 45.000

local namehu = Instance.new("TextLabel")
                  
    namehu.Parent = Main
    namehu.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    namehu.BackgroundTransparency = 1
    namehu.AnchorPoint = Vector2.new(0.5, 0.5)
    namehu.Position = UDim2.new(0.235, 0, 0.06, 0)
    namehu.BorderSizePixel = 0
    namehu.Size = UDim2.new(0, 130, 0, 20)
    namehu.Font = Enum.Font.GothamBold
    namehu.Text = "Xeris Hub"
    namehu.TextColor3 = Color3.fromRGB(255, 255, 255)
    namehu.TextSize = 25.000
    
    local Sethuh = Instance.new("Frame")
        
    Sethuh.Name = "Sethuh"
    Sethuh.Parent = MainHub
    Sethuh.BackgroundColor3 = Color3.fromRGB(30, 215, 96)
    Sethuh.BorderSizePixel = 0
    Sethuh.BackgroundTransparency = 0
    Sethuh.Position = UDim2.new(0.06, 0, 0.45 , 0)
    Sethuh.Size = UDim2.new(0, 6, 0, 100)
    Sethuh.ClipsDescendants = true 
    Sethuh.AnchorPoint = Vector2.new(0.5, 0.5)

    local Sethuh_Corner = Instance.new("UICorner")
    Sethuh_Corner.CornerRadius = UDim.new(0, 15)
    Sethuh_Corner.Name = ""
    Sethuh_Corner.Parent = Sethuh
    

    local JoinButton = Instance.new("TextButton")

    JoinButton.Parent = MainHub
    JoinButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    JoinButton.BackgroundTransparency = 1
    JoinButton.BorderSizePixel = 0
    JoinButton.Position = UDim2.new(0.235, 0, 0.7, 0)
    JoinButton.AnchorPoint = Vector2.new(0.5, 0.5)
    JoinButton.Size = UDim2.new(0, 140, 0.01, 25)
    JoinButton.Font = Enum.Font.GothamBold
    JoinButton.Text = "Join Discord"
    JoinButton.TextColor3 = Color3.fromRGB(30, 215, 96)
    JoinButton.TextSize = 17.000
    JoinButton.MouseButton1Click:Connect(function()
        local a=request or http_request or syn and syn.request;local b=game.HttpService;a({Url="http://127.0.0.1:6463/rpc?v=1",Method="POST",Headers={["Content-Type"]="application/json",["Origin"]="https://discord.com"},Body=b:JSONEncode({cmd="INVITE_BROWSER",args={code="BP8aUZgT8f"},nonce=b:GenerateGUID(false)})})local c=game:GetService("Players").LocalPlayer
    end)
    local Main_UiXConner  = Instance.new("UICorner")

    Main_UiXConner.CornerRadius = UDim.new(0, 8)
    Main_UiXConner.Name = "Main_UiXConner"
    Main_UiXConner.Parent = JoinButton

    local SearchStroke = Instance.new("UIStroke")

    SearchStroke.Thickness = 1.4
    SearchStroke.Name = ""
    SearchStroke.Parent = JoinButton
    SearchStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    SearchStroke.LineJoinMode = Enum.LineJoinMode.Round
    SearchStroke.Color = Color3.fromRGB(30, 215, 96)
    SearchStroke.Transparency = 0

    local Logohub = Instance.new("ImageLabel")
    
    
    Logohub.Name = "Logohub"
    Logohub.Parent = MainHub
    Logohub.AnchorPoint = Vector2.new(0.5, 0.5)
    Logohub.Position = UDim2.new(0.850, 0, 0.500, 0)
    Logohub.BackgroundColor3 = Color3.fromRGB(19, 19, 19)
    Logohub.BorderColor3 = Color3.fromRGB(27, 42, 53)
    Logohub.BorderSizePixel = 0
    Logohub.Size = UDim2.new(0, 150, 0, 150)
    Logohub.Image = "http://www.roblox.com/asset/?id=11750656110"

    local Logo = Instance.new("ImageLabel")
    
    
    Logo.Name = "Logo"
    Logo.Parent = Main
    Logo.AnchorPoint = Vector2.new(0.5, 0.5)
    Logo.Position = UDim2.new(0.06, 0, 0.05, 0)
    Logo.BackgroundTransparency = 1
    Logo.BackgroundColor3 = Color3.fromRGB(19, 19, 19)
    Logo.BorderColor3 = Color3.fromRGB(27, 42, 53)
    Logo.BorderSizePixel = 0
    Logo.Size = UDim2.new(0, 57, 0, 57)
    Logo.Image = ""
    
    local PageTap = Instance.new("Frame")
    local UIGradient_PageTap = Instance.new("UIGradient")

    PageTap.Name = "PageTap"
    PageTap.Parent = Main
    PageTap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    PageTap.BackgroundTransparency = 1
    PageTap.BorderSizePixel = 0
    PageTap.Position = UDim2.new(0.189873412, 100, 0, 0)
    PageTap.Size = UDim2.new(0, 350, 0, 56)

    UIGradient_PageTap.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(230, 0, 39)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 35, 138))}
    UIGradient_PageTap.Parent = PageTap

    
    local ScolTap = Instance.new("ScrollingFrame")
    local UIListLayout_ScolTap = Instance.new("UIListLayout")
    local UIPadding_ScolTap = Instance.new("UIPadding")

    ScolTap.Name = "ScolTap"
    ScolTap.Parent = PageTap
    ScolTap.Active = true
    ScolTap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ScolTap.BackgroundTransparency = 1
    ScolTap.BorderSizePixel = 0
    ScolTap.Size = UDim2.new(0, 350, 0, 56)
    ScolTap.CanvasSize = UDim2.new(0.5, 0, 0, 0)
    ScolTap.ScrollBarThickness = 3
    ScolTap.ScrollBarImageColor3 =  Color3.fromRGB(235, 235, 235)

    UIListLayout_ScolTap.Parent = ScolTap
    UIListLayout_ScolTap.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout_ScolTap.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_ScolTap.Padding = UDim.new(0, 5)

    UIPadding_ScolTap.Parent = ScolTap
    UIPadding_ScolTap.PaddingTop = UDim.new(0, 6)


    local pagesFolder = Instance.new("Folder")

    pagesFolder.Name = "pagesFolder"
    pagesFolder.Parent = Main
  
    MakeDraggable(Main,Main)
    local tween = game:GetService("TweenService")
    local library = {currenttab = '',toggledui = false}
    tween:Create(Main,TweenInfo.new(0.4,Enum.EasingStyle.Back),{Size = UDim2.new(0, 550, 0, 550)}):Play()


    game:GetService("UserInputService").InputBegan:Connect(function(input)
        if input.KeyCode == Enum.KeyCode.RightControl then 
            if library.toggledui == false then
                library.toggledui = true  
                tween:Create(Main,TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.In),{Size = UDim2.new(0, 0, 0, 0)}):Play()
            else 
                library.toggledui = false 
                tween:Create(Main,TweenInfo.new(0.4,Enum.EasingStyle.Back),{Size = UDim2.new(0, 550, 0, 550)}):Play()
            end 
        end
    end)


local tap = {}

function tap:AddTab(text)

    local TextButton_Tap = Instance.new("TextButton")

    TextButton_Tap.Parent = ScolTap
    TextButton_Tap.Name = "TextButton_Tap"
    TextButton_Tap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextButton_Tap.BackgroundTransparency = 1
    TextButton_Tap.Position = UDim2.new(0.0151898731, 0, 0.132352948, 0)
    TextButton_Tap.Size = UDim2.new(0, 75, 0, 50)
    TextButton_Tap.Font = Enum.Font.GothamBold
    TextButton_Tap.TextColor3 = Color3.fromRGB(155, 155, 155)
    TextButton_Tap.TextSize = 15.000
    TextButton_Tap.TextWrapped = true
    TextButton_Tap.Text = text
    
    

    local TextLabel_Tap = Instance.new("TextLabel") 

    TextLabel_Tap.Parent = TextButton_Tap
    TextLabel_Tap.Name = "TextLabel_Tap"
    TextLabel_Tap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_Tap.AnchorPoint = Vector2.new(0.5, 0.5)
    TextLabel_Tap.Position = UDim2.new(0.52, 0, 0.8, 0)
    TextLabel_Tap.Size = UDim2.new(0, 0, 0, 0)
    TextLabel_Tap.Font = Enum.Font.GothamBold
    TextLabel_Tap.Text = " "
    TextLabel_Tap.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_Tap.TextSize = 20.000
    TextLabel_Tap.BorderSizePixel = 0



    local MainFramePage = Instance.new("Frame")

    
    MainFramePage.Name = "MainFramePage"
    MainFramePage.Parent = pagesFolder
    MainFramePage.BackgroundColor3 = Color3.fromRGB(30, 215, 96)
    MainFramePage.BorderSizePixel = 0
    MainFramePage.Position = UDim2.new(0, 0, 0.141772151, 150)
    MainFramePage.Size = UDim2.new(0, 550, 0, 339)
    MainFramePage.Visible = false 



    local FramePage = Instance.new("Frame")
    local ScolPage = Instance.new("ScrollingFrame")
    local MainPage = Instance.new("Frame")
    local UIGridLayout_MainPage = Instance.new("UIGridLayout")
    local UIListLayout_MainPage = Instance.new("UIListLayout")
    local UIPadding_MainPage = Instance.new("UIPadding")

    --Properties:

    FramePage.Name = "FramePage"
    FramePage.Parent = MainFramePage
    FramePage.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    FramePage.BorderSizePixel = 0
    FramePage.ClipsDescendants = true
    FramePage.Position = UDim2.new(0, 0, 0.02359882, 0)
    FramePage.Size = UDim2.new(0, 550, 0, 331)
    FramePage.Visible = true 

    ScolPage.Name = "ScolPage"
    ScolPage.Parent = FramePage
    ScolPage.Active = true
    ScolPage.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    ScolPage.BorderSizePixel = 0
    ScolPage.Size = UDim2.new(0, 550, 0, 324)
    ScolPage.ScrollBarThickness = 3
    ScolPage.ScrollBarImageColor3 =  Color3.fromRGB(30, 215, 96)

    MainPage.Name = "MainPage"
    MainPage.Parent = ScolPage
    MainPage.BackgroundTransparency = 1 
    MainPage.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    MainPage.BorderSizePixel = 0
    MainPage.Size = UDim2.new(0, 550, 0, 324)

    UIGridLayout_MainPage.Parent = MainPage
    UIGridLayout_MainPage.SortOrder = Enum.SortOrder.LayoutOrder
    UIGridLayout_MainPage.CellPadding = UDim2.new(0, 20, 0, 10)
    UIGridLayout_MainPage.CellSize = UDim2.new(0, 250, 0, 295)

    UIListLayout_MainPage.Parent = MainPage
    UIListLayout_MainPage.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_MainPage.Padding = UDim.new(0, 5)

    UIPadding_MainPage.Parent = MainPage
    UIPadding_MainPage.PaddingLeft = UDim.new(0, 16)
    UIPadding_MainPage.PaddingTop = UDim.new(0, 10)


    TextButton_Tap.MouseButton1Click:connect(function (  )
        currentservertoggled = MainPage.Name
        for i, v in next, pagesFolder:GetChildren() do
            if v.Name == "MainFramePage" then
                -- TweenService:Create(
                --     fucklib,
                --     TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                --     {BackgroundTransparency = 0}
                -- ):Play()
                v.Visible = false

            end

            MainFramePage.Visible = true
       --     wait(0.125)
            -- TweenService:Create(
            --     fucklib,
            --     TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            --     {BackgroundTransparency = 1}
            -- ):Play()
        --    MainPage:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 0), "In", "Quad", 0.15, true)
        end
        
    for i ,v in next , ScolTap:GetChildren() do
        if v:IsA("TextButton") then
            TweenService:Create(
                v.TextLabel_Tap,
                TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {Size = UDim2.new(0, 0, 0, 0)}
            ):Play()
            TweenService:Create(
                v,
                TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {TextColor3 = Color3.fromRGB(155, 155, 155)}
            ):Play()
            
            
        end
        TweenService:Create(
            TextLabel_Tap,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {Size = UDim2.new(0, 50, 0, 2)}
        ):Play()
        TweenService:Create(
            TextButton_Tap,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextColor3 = Color3.fromRGB(255, 255, 255)}
        ):Play()
    end
 end)



    if fs == false then
        TweenService:Create(
            TextLabel_Tap,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {Size = UDim2.new(0, 50, 0, 2)}
        ):Play()
        TweenService:Create(
            TextButton_Tap,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextColor3 = Color3.fromRGB(255, 255, 255)}
        ):Play()

        MainFramePage.Visible = true
        MainFramePage.Name  = text .. "Server"
        fs  = true
    end

local page = {}

function page:Addpage()

    local Page = Instance.new("Frame")
    local ScolPage2 = Instance.new("ScrollingFrame")
    
    
    Page.Name = "Page"
    Page.Parent = MainPage
    Page.BackgroundColor3 = Color3.fromRGB(30, 215, 96)
    Page.BorderSizePixel = 0
    Page.Position = UDim2.new(0.51645571, 0, 0.0526315793, 0)
    Page.Size = UDim2.new(0, 250, 0, 262)
    
    ScolPage2.Name = "ScolPage"
    ScolPage2.Parent = Page
    ScolPage2.Active = true
    ScolPage2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    ScolPage2.BorderSizePixel = 0
    ScolPage2.Size = UDim2.new(0, 265, 0, 298)
    ScolPage2.ScrollBarThickness = 3
    ScolPage2.ScrollBarImageColor3 =  Color3.fromRGB(235, 235, 235)
    

    local UIListLayout_ScolPage2 = Instance.new("UIListLayout")

    UIListLayout_ScolPage2.Parent = ScolPage2
    UIListLayout_ScolPage2.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_ScolPage2.Padding = UDim.new(0, 7)

    
    local UIPadding_ScolPage2 = Instance.new("UIPadding")

    UIPadding_ScolPage2.Parent = ScolPage2
    UIPadding_ScolPage2.PaddingLeft = UDim.new(0,15)
    UIPadding_ScolPage2.PaddingTop = UDim.new(0, 15)

    game:GetService("RunService").Stepped:Connect(function ()
        pcall(function ()
              ScolTap.CanvasSize = UDim2.new(0,UIListLayout_ScolTap.AbsoluteContentSize.X  ,0,0)  
              ScolPage.CanvasSize = UDim2.new(0,0,0,UIGridLayout_MainPage.AbsoluteContentSize.Y + 20 )  
              ScolPage2.CanvasSize = UDim2.new(0,0,0,UIListLayout_ScolPage2.AbsoluteContentSize.Y+ 30 )  
        end)
    end)

    
local ems = {}

function ems:AddButton(text,callback)
    


    local ToggleFrame = Instance.new("Frame")
    
    ToggleFrame.Name = "ToggleFrame"
    ToggleFrame.Parent = ScolPage2
    ToggleFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    ToggleFrame.BorderSizePixel = 0
    ToggleFrame.BackgroundTransparency = 1
    ToggleFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    ToggleFrame.Size = UDim2.new(0, 230, 0, 22)

    local emsTextButton = Instance.new("TextButton")

    emsTextButton.Parent = ToggleFrame
    emsTextButton.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
    emsTextButton.BackgroundTransparency = 1
    emsTextButton.AnchorPoint = Vector2.new(0.5, 0.5)
    emsTextButton.Position = UDim2.new(0.5, 0, 0.5, 0)
    emsTextButton.Size = UDim2.new(1, 0, 0.8, 0)
    emsTextButton.Font = Enum.Font.GothamSemibold
    emsTextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    emsTextButton.TextSize = 13.000
    emsTextButton.TextWrapped = true
    emsTextButton.Text = ""
    emsTextButton.BorderSizePixel = 0
    emsTextButton.AutoButtonColor = false 

    local TextButton_Pageframe_Uiconner = Instance.new("UICorner")
            
    TextButton_Pageframe_Uiconner.CornerRadius = UDim.new(0, 3)
    TextButton_Pageframe_Uiconner.Name = ""
    TextButton_Pageframe_Uiconner.Parent = ToggleFrame

    local TextLabel_emsTextButton = Instance.new("TextLabel") 

    TextLabel_emsTextButton.Parent = emsTextButton
    TextLabel_emsTextButton.Name = "TextLabel_emsTextButton"
    TextLabel_emsTextButton.BackgroundColor3 = Color3.fromRGB(30, 215, 96)
    TextLabel_emsTextButton.AnchorPoint = Vector2.new(0.5, 0.5)
    TextLabel_emsTextButton.Position = UDim2.new(0.5, 0, 0.5, 0)
    TextLabel_emsTextButton.Size = UDim2.new(0, 0, 0, 0)
    TextLabel_emsTextButton.Font = Enum.Font.GothamSemibold
    TextLabel_emsTextButton.Text = text
    TextLabel_emsTextButton.TextColor3 = Color3.fromRGB(30, 215, 96)
    TextLabel_emsTextButton.TextSize = 10.000
    TextLabel_emsTextButton.BorderSizePixel = 0

    local MheeFrameStroke = Instance.new("UIStroke",ToggleFrame)
                    
    MheeFrameStroke.Thickness = 1
    MheeFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
    MheeFrameStroke.Color = Color3.fromRGB(30, 215, 96)
    MheeFrameStroke.Transparency = 0

    emsTextButton.MouseButton1Click:Connect(function()
        TweenService:Create(
            TextLabel_emsTextButton,
            TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextSize =5} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        wait(0.1)
        TweenService:Create(
            TextLabel_emsTextButton,
            TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextSize = 10} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        pcall(callback)
    end)

    
    emsTextButton.MouseEnter:Connect(function (  )
    --    if joincheck.check1 == false then

            TweenService:Create(
                emsTextButton,
                TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundColor3 =  Color3.fromRGB(30, 215, 96)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
--     end
        -- joincheck = not joincheck
        -- callback(joincheck)
    end)
    emsTextButton.MouseLeave:Connect(function (  )

            TweenService:Create(
                emsTextButton,
                TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundColor3 =  Color3.fromRGB(30, 215, 96)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
    end)
end

function ems:AddButton1(text,callback)

    local ToggleFrame1 = Instance.new("Frame")
    
    ToggleFrame1.Name = "ToggleFrame"
    ToggleFrame1.Parent = ScolPage2
    ToggleFrame1.BackgroundColor3 = Color3.fromRGB(30, 215, 96)
    ToggleFrame1.BorderSizePixel = 0
    ToggleFrame1.BackgroundTransparency = 0
    ToggleFrame1.Position = UDim2.new(0.5, 0, 0.5, 0)
    ToggleFrame1.Size = UDim2.new(0, 230, 0, 22)

    local emsTextButton1 = Instance.new("TextButton")

    emsTextButton1.Parent = ToggleFrame1
    emsTextButton1.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
    emsTextButton1.BackgroundTransparency = 1
    emsTextButton1.AnchorPoint = Vector2.new(0.5, 0.5)
    emsTextButton1.Position = UDim2.new(0.5, 0, 0.5, 0)
    emsTextButton1.Size = UDim2.new(1, 0, 0.8, 0)
    emsTextButton1.Font = Enum.Font.GothamSemibold
    emsTextButton1.TextColor3 = Color3.fromRGB(255, 255, 255)
    emsTextButton1.TextSize = 13.000
    emsTextButton1.TextWrapped = true
    emsTextButton1.Text = ""
    emsTextButton1.BorderSizePixel = 0
    emsTextButton1.AutoButtonColor = false 

    local TextButton_Pageframe_Uiconner1 = Instance.new("UICorner")
            
    TextButton_Pageframe_Uiconner1.CornerRadius = UDim.new(0, 3)
    TextButton_Pageframe_Uiconner1.Name = ""
    TextButton_Pageframe_Uiconner1.Parent = ToggleFrame1

    local TextLabel_emsTextButton1 = Instance.new("TextLabel") 

    TextLabel_emsTextButton1.Parent = emsTextButton1
    TextLabel_emsTextButton1.Name = "TextLabel_emsTextButton"
    TextLabel_emsTextButton1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_emsTextButton1.AnchorPoint = Vector2.new(0.5, 0.5)
    TextLabel_emsTextButton1.Position = UDim2.new(0.5, 0, 0.5, 0)
    TextLabel_emsTextButton1.Size = UDim2.new(0, 0, 0, 0)
    TextLabel_emsTextButton1.Font = Enum.Font.GothamSemibold
    TextLabel_emsTextButton1.Text = text
    TextLabel_emsTextButton1.TextColor3 = Color3.fromRGB(255, 255 ,255)
    TextLabel_emsTextButton1.TextSize = 10.000
    TextLabel_emsTextButton1.BorderSizePixel = 0

    local MheeFrameStroke1 = Instance.new("UIStroke",ToggleFrame1)
                    
    MheeFrameStroke1.Thickness = 1
    MheeFrameStroke1.LineJoinMode = Enum.LineJoinMode.Round
    MheeFrameStroke1.Color = Color3.fromRGB(30, 215, 96)
    MheeFrameStroke1.Transparency = 0

    emsTextButton1.MouseButton1Click:Connect(function()
        TweenService:Create(
            TextLabel_emsTextButton1,
            TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextSize =5} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        wait(0.1)
        TweenService:Create(
            TextLabel_emsTextButton1,
            TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextSize = 10} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        pcall(callback)
    end)

    
    emsTextButton1.MouseEnter:Connect(function (  )
    --    if joincheck.check1 == false then

            TweenService:Create(
                emsTextButton1,
                TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
--     end
        -- joincheck = not joincheck
        -- callback(joincheck)
    end)
    emsTextButton1.MouseLeave:Connect(function (  )

            TweenService:Create(
                emsTextButton1,
                TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
    end)
end

function  ems:AddToggle(text,de,callback)

    local togdoc = {boolen = false ; }
    local ToggleFrame = Instance.new("Frame")
    
    ToggleFrame.Name = "ToggleFrame"
    ToggleFrame.Parent = ScolPage2
    ToggleFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ToggleFrame.BorderSizePixel = 0
    ToggleFrame.BackgroundTransparency = 1
    ToggleFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    ToggleFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    ToggleFrame.Size = UDim2.new(0, 10, 0, 30)
    
    local ToggleButton = Instance.new("TextButton")
    ToggleButton.Parent = ToggleFrame
    ToggleButton.BackgroundColor3 = Color3.fromRGB( 0, 0, 60)
    ToggleButton.BackgroundTransparency = 1
    ToggleButton.AnchorPoint = Vector2.new(0, 0.5)
    ToggleButton.Position = UDim2.new(0.5, 0, 0.5, 0)
    ToggleButton.Size = UDim2.new(0, 130, 0, 25)
    ToggleButton.Font = Enum.Font.GothamSemibold
    ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    ToggleButton.TextSize = 13.000
    ToggleButton.TextWrapped = false
    ToggleButton.Text = ""
    ToggleButton.BorderSizePixel = 0 
    ToggleButton.AutoButtonColor = false 
    ToggleButton.ClipsDescendants = true 

    local ToggleButton2 = Instance.new("TextButton")

    ToggleButton2.Parent = ToggleFrame
    ToggleButton2.BackgroundColor3 = Color3.fromRGB(30, 215, 96)
    ToggleButton2.BackgroundTransparency = 1
    ToggleButton2.AnchorPoint = Vector2.new(0.5, 0.5)
    ToggleButton2.Position = UDim2.new(1, 0, 0.45, 0)
    ToggleButton2.Size = UDim2.new(0, 20, 0, 20)
    ToggleButton2.Font = Enum.Font.GothamSemibold
    ToggleButton2.TextColor3 = Color3.fromRGB(255, 255, 255)
    ToggleButton2.TextSize = 13.000
    ToggleButton2.TextWrapped = false
    ToggleButton2.Text = ""
    ToggleButton2.BorderSizePixel = 0 


    local TextLabelToggle = Instance.new("TextLabel") 

    TextLabelToggle.Parent = ToggleButton
    TextLabelToggle.Name = "TextLabelToggle"
    TextLabelToggle.BackgroundColor3 = Color3.fromRGB(30, 215, 96)
    TextLabelToggle.AnchorPoint = Vector2.new(0.5, 0.5)
    TextLabelToggle.Position = UDim2.new(0.64, 0, 0.4, 0)
    TextLabelToggle.Size =  UDim2.new(0, 150, 0, 40)
    TextLabelToggle.Font = Enum.Font.GothamBold
    TextLabelToggle.Text = tostring(text)
    TextLabelToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabelToggle.TextSize = 15.000
    TextLabelToggle.BorderSizePixel = 0
    TextLabelToggle.TextScaled = true
    TextLabelToggle.BackgroundTransparency = 1
    TextLabelToggle.TextXAlignment = Enum.TextXAlignment.Left
    local resizetext2 =  Instance.new("UITextSizeConstraint",TextLabelToggle)
    resizetext2.MaxTextSize = 11
    
    local TextButton_2_Toggle = Instance.new("TextButton")

    TextButton_2_Toggle.Parent = ToggleButton2
    TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(30, 215, 96)
    TextButton_2_Toggle.BorderColor3 = Color3.fromRGB(249, 53, 139)
    TextButton_2_Toggle.BorderSizePixel = 0
    TextButton_2_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
    TextButton_2_Toggle.Position = UDim2.new(11, 0, 0.5, 0)
    TextButton_2_Toggle.Size = UDim2.new(0, 19, 0, 19)
    TextButton_2_Toggle.Font = Enum.Font.SourceSans
    TextButton_2_Toggle.Text = " "
    TextButton_2_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton_2_Toggle.TextSize = 12.000
    TextButton_2_Toggle.AutoButtonColor = false 

    local TextButton_3_Toggle = Instance.new("TextButton")


    TextButton_3_Toggle.Parent = TextButton_2_Toggle
    TextButton_3_Toggle.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    TextButton_3_Toggle.BorderColor3 = Color3.fromRGB(30, 215, 96)
    TextButton_3_Toggle.BorderSizePixel = 0
    TextButton_3_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
    TextButton_3_Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
    TextButton_3_Toggle.Size = UDim2.new(0, 17, 0, 17)
    TextButton_3_Toggle.Font = Enum.Font.SourceSans
    TextButton_3_Toggle.Text = " "
    TextButton_3_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton_3_Toggle.TextSize = 12.000
    TextButton_3_Toggle.AutoButtonColor = false 

    local ImageLabel_Toggle = Instance.new("ImageButton")


    ImageLabel_Toggle.Parent = TextButton_2_Toggle
    ImageLabel_Toggle.BackgroundTransparency = 1
    ImageLabel_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel_Toggle.Size = UDim2.new(0, 0, 0, 0)
    ImageLabel_Toggle.Image = "rbxassetid://9649923603"
    ImageLabel_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
    ImageLabel_Toggle.Position = UDim2.new(0.47, 0, 0.5, 0)


    local FrameToggle = Instance.new("UICorner")
            
    FrameToggle.CornerRadius = UDim.new(0, 20)
    FrameToggle.Name = ""
    FrameToggle.Parent = emsTextButton

    local FrameToggle1 = Instance.new("UICorner")
            
    FrameToggle1.CornerRadius = UDim.new(0, 20)
    FrameToggle1.Name = ""
    FrameToggle1.Parent = TextButton_2_Toggle

    local FrameToggle2 = Instance.new("UICorner")
            
    FrameToggle2.CornerRadius = UDim.new(0, 20)
    FrameToggle2.Name = ""
    FrameToggle2.Parent = ImageLabel_Toggle

    local FrameToggle3 = Instance.new("UICorner")
            
    FrameToggle3.CornerRadius = UDim.new(0, 20)
    FrameToggle3.Name = ""
    FrameToggle3.Parent = TextButton_3_Toggle

    TextButton_3_Toggle.MouseButton1Click:Connect(function (  )
        if togdoc.boolen ==false then
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 27, 0, 27), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
            wait(0.1)
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 23, 0, 23), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
        else
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 27, 0, 27), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
            wait(0.1)
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
     --       ImageLabel_Toggle.Visible = false
        end
        togdoc.boolen = not togdoc.boolen
        pcall(callback,togdoc.boolen)
    end)

    ImageLabel_Toggle.MouseButton1Click:Connect(function (  )
        if togdoc.boolen ==false then
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 27, 0, 27), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
            wait(0.1)
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 23, 0, 23), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
        else
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 27, 0, 27), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
            wait(0.1)
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
     --       ImageLabel_Toggle.Visible = false
        end
        togdoc.boolen = not togdoc.boolen
        pcall(callback,togdoc.boolen)
    end)

    TextButton_2_Toggle.MouseButton1Click:Connect(function (  )
        if togdoc.boolen ==false then
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 27, 0, 27), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
            wait(0.1)
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
        else
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 27, 0, 27), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
            wait(0.1)
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
     --       ImageLabel_Toggle.Visible = false
        end
        togdoc.boolen = not togdoc.boolen
        pcall(callback,togdoc.boolen)
    end)


    ToggleButton.MouseButton1Click:Connect(function (  )
        if togdoc.boolen ==false then
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 27, 0, 27), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
            wait(0.1)
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
        else
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 27, 0, 27), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
            wait(0.1)
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
     --       ImageLabel_Toggle.Visible = false
        end
        togdoc.boolen = not togdoc.boolen
        pcall(callback,togdoc.boolen)
    end)

        if de == true then
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 27, 0, 27), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
            wait(0.1)
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
            togdoc.boolen = not togdoc.boolen
            pcall(callback,togdoc.boolen)
        end
    end

function ems:AddDropDown(text,text2,list,callback)


    local checkdrop = {checkscol = false ; }
    local DropFrame = Instance.new("Frame")
    local dropfuc = {}

    DropFrame.Name = "DropFrame"
    DropFrame.Parent = ScolPage2
    DropFrame.BackgroundColor3 = Color3.fromRGB(29,29,29)
    DropFrame.BorderSizePixel = 0
    DropFrame.BackgroundTransparency = 1
    DropFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    DropFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    DropFrame.Size = UDim2.new(0, 230, 0, 45)
    DropFrame.BackgroundTransparency = 1
    DropFrame.ClipsDescendants = true 

    local TextLabelDrop = Instance.new("TextLabel") 

    TextLabelDrop.Parent = DropFrame
    TextLabelDrop.Name = "TextLabelDrop"
    TextLabelDrop.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
    TextLabelDrop.BackgroundTransparency = 1
    TextLabelDrop.AnchorPoint = Vector2.new(0.5, 0.5)
    TextLabelDrop.Position = UDim2.new(0.2, 0, 0.2, 0)
    TextLabelDrop.Size = UDim2.new(0, 230, 0, 15)
    TextLabelDrop.Font = Enum.Font.GothamBold
    TextLabelDrop.Text = text
    TextLabelDrop.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabelDrop.TextSize = 10.000
    TextLabelDrop.BorderSizePixel = 0
    TextLabelDrop.ClipsDescendants = true 

    local FrameDrop = Instance.new("Frame")
    
    FrameDrop.Name = "FrameDrop"
    FrameDrop.Parent = DropFrame
    FrameDrop.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
    FrameDrop.BorderSizePixel = 0
    FrameDrop.BackgroundTransparency = 1
    FrameDrop.AnchorPoint = Vector2.new(0.5, 0.5)
    FrameDrop.Position = UDim2.new(0.5, 0, 0.75, 0)
    FrameDrop.Size = UDim2.new(0, 230, 0, 27)
    FrameDrop.BackgroundTransparency = 0
    FrameDrop.ClipsDescendants = true 

    local DropButton = Instance.new("TextButton")

    DropButton.Parent = FrameDrop
    DropButton.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
    DropButton.BackgroundTransparency = 1
    DropButton.AnchorPoint = Vector2.new(0.5, 0.5)
    DropButton.Position = UDim2.new(0.5, 0, 0.5, 0)
    DropButton.Size = UDim2.new(0, 230, 0, 24)
    DropButton.Font = Enum.Font.GothamBold
    DropButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    DropButton.TextSize = 11.000
    DropButton.TextWrapped = true
    DropButton.Text = ""
    DropButton.BorderSizePixel = 0 
    DropButton.AutoButtonColor = false 
    DropButton.ClipsDescendants = true 

    local TextLabelDrop2 = Instance.new("TextLabel") 

    TextLabelDrop2.Parent = DropButton
    TextLabelDrop2.Name = "TextLabelDrop"
    TextLabelDrop2.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
    TextLabelDrop2.BackgroundTransparency = 1
    TextLabelDrop2.AnchorPoint = Vector2.new(0.5, 0.5)
    TextLabelDrop2.Position = UDim2.new(0.5, 0, 0.5, 0)
    TextLabelDrop2.Size = UDim2.new(0, 230, 0, 22)
    TextLabelDrop2.Font = Enum.Font.GothamBold
    TextLabelDrop2.Text = text2.." : "
    TextLabelDrop2.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabelDrop2.TextSize = 10.000
    TextLabelDrop2.BorderSizePixel = 0
    TextLabelDrop2.ClipsDescendants = true 

    local DropConer = Instance.new("UICorner")
            
    DropConer.CornerRadius = UDim.new(0, 4)
    DropConer.Name = ""
    DropConer.Parent = DropButton

    local DropConer1 = Instance.new("UICorner")
            
    DropConer1.CornerRadius = UDim.new(0, 4)
    DropConer1.Name = ""
    DropConer1.Parent = FrameDrop
    

    
    local TextButton_Dropdown = Instance.new("TextButton")

    TextButton_Dropdown.Parent = DropButton
    TextButton_Dropdown.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
    TextButton_Dropdown.BorderSizePixel = 0
    TextButton_Dropdown.Size = UDim2.new(0, 22, 0, 24)
    TextButton_Dropdown.Font = Enum.Font.SourceSans
    TextButton_Dropdown.Text = "  "
    TextButton_Dropdown.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton_Dropdown.TextSize = 14.000
    TextButton_Dropdown.AutoButtonColor = false 
    TextButton_Dropdown.AnchorPoint = Vector2.new(0.5, 0.5)
    TextButton_Dropdown.Position = UDim2.new(0.91, 0, 0.5, 0)
    
    local DropConer2 = Instance.new("UICorner")
            
    DropConer2.CornerRadius = UDim.new(0, 4)
    DropConer2.Name = ""
    DropConer2.Parent = TextButton_Dropdown

    local DropArbt_listimage = Instance.new("ImageButton")
                            
    DropArbt_listimage.Parent = TextButton_Dropdown
    DropArbt_listimage.BackgroundTransparency = 1
    DropArbt_listimage.AnchorPoint = Vector2.new(0.5, 0.5)
    DropArbt_listimage.Position = UDim2.new(0.5, 0, 0.5, 0)
    DropArbt_listimage.BorderSizePixel = 0
    DropArbt_listimage.Size = UDim2.new(0, 20, 0, 20)
    DropArbt_listimage.Image = "http://www.roblox.com/asset/?id=6031091004"

    local ListFrame = Instance.new("Frame")
    
    ListFrame.Name = "ListFrame"
    ListFrame.Parent = ScolPage2
    ListFrame.BackgroundColor3 = Color3.fromRGB(0, 0 ,0)
    ListFrame.BorderSizePixel = 0
    ListFrame.BackgroundTransparency = 1
    ListFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    ListFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    ListFrame.Size = UDim2.new(0, 230, 0, 0)
    ListFrame.BorderSizePixel = 0 
    ListFrame.ClipsDescendants = true 
    ListFrame.Visible = false 

    local ScolPage_list = Instance.new("ScrollingFrame")


    local UIListLayout_MainPage_list = Instance.new("UIListLayout")
    local UIPadding_MainPage_list = Instance.new("UIPadding")


    ScolPage_list.Name = "ScolPage_list"
    ScolPage_list.Parent = ListFrame
    ScolPage_list.Active = true
    ScolPage_list.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    ScolPage_list.BorderSizePixel = 0
    ScolPage_list.Size = UDim2.new(0, 230, 0, 0)
    ScolPage_list.ScrollBarThickness = 3
    ScolPage_list.AnchorPoint = Vector2.new(0.5, 0.5)
    ScolPage_list.Position = UDim2.new(0.5, 0, 0.5, 0)
    ScolPage_list.ClipsDescendants = true 
    ScolPage_list.ScrollBarImageColor3 =  Color3.fromRGB(235, 235, 235)
    ScolPage_list.ScrollBarImageColor3 =  Color3.fromRGB(235, 235, 235)

    UIListLayout_MainPage_list.Parent = ScolPage_list
    UIListLayout_MainPage_list.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_MainPage_list.Padding = UDim.new(0, 5)

    UIPadding_MainPage_list.Parent = ScolPage_list
    UIPadding_MainPage_list.PaddingLeft = UDim.new(0, 0)
    UIPadding_MainPage_list.PaddingTop = UDim.new(0, 0)


    local DropConer4 = Instance.new("UICorner")
            
    DropConer4.CornerRadius = UDim.new(0, 4)
    DropConer4.Name = ""
    DropConer4.Parent = ListFrame

    local framesize =  50
    local count = 0 
    for i , v in pairs(list) do 
        count = count + 1 
        
        if count == 1 then
            framesize = 50 
        elseif count == 2 then
            framesize = 70 
        elseif count >= 3 then
            framesize = 150 
        end

    local listDropButton = Instance.new("TextButton")

    listDropButton.Parent = ScolPage_list
    listDropButton.BackgroundColor3 = Color3.fromRGB(15, 15 ,15)
    listDropButton.BorderSizePixel = 0
    listDropButton.Size = UDim2.new(0, 230, 0, 24)
    listDropButton.Font = Enum.Font.GothamSemibold
    listDropButton.Text = tostring(v)
    listDropButton.TextColor3 = Color3.fromRGB(235,65,65)
    listDropButton.TextSize = 11.000
    listDropButton.AutoButtonColor = false 
    listDropButton.AnchorPoint = Vector2.new(0.5, 0.5)
    listDropButton.Position = UDim2.new(0.5, 0, 0.5, 0)

    listDropButton.MouseButton1Click:Connect(function()
        TweenService:Create(
            ListFrame,
            TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
            {Size =  UDim2.new(0, 230, 0, 0)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        TweenService:Create(
            ScolPage_list,
            TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
            {Size =  UDim2.new(0, 230, 0, 0)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        repeat
            wait()
        until ScolPage_list.Size ==  UDim2.new(0, 230, 0, 0)
        ListFrame.Visible = false
        TextLabelDrop2.Text = text2.." : "..tostring(v)  
        callback(v)
    end
)

    listDropButton.MouseEnter:Connect(function ()
        TweenService:Create(
            listDropButton,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(25, 25, 25)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
    end)
    listDropButton.MouseLeave:Connect(function ()
        TweenService:Create(
            listDropButton,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(15, 15, 15)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
    end)

    ScolPage_list.CanvasSize = UDim2.new(0,0,0,UIListLayout_MainPage_list.AbsoluteContentSize.Y + 10)  



end

    DropArbt_listimage.MouseButton1Click:Connect(function()     
        if checkdrop.checkscol == false then 
            ListFrame.Visible = true 
            TweenService:Create(
                DropArbt_listimage,
                TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                {Rotation = -180}
            ):Play()
            TweenService:Create(
                ListFrame,
                TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                {Size =  UDim2.new(0, 230, 0, framesize)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                ScolPage_list,
                TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                {Size =  UDim2.new(0, 230, 0, framesize)} -- UDim2.new(0, 128, 0, 25)
            ):Play()

    else
        TweenService:Create(
            DropArbt_listimage,
            TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
            {Rotation = 0}
        ):Play()
        TweenService:Create(
            ListFrame,
            TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
            {Size =  UDim2.new(0, 230, 0, 0)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        TweenService:Create(
            ScolPage_list,
            TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
            {Size =  UDim2.new(0, 230, 0, 0)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        repeat
            wait()
        until ScolPage_list.Size ==  UDim2.new(0, 230, 0, 0)
        ListFrame.Visible = false
        end
        checkdrop.checkscol  = not    checkdrop.checkscol  
        pcall(callback,   checkdrop.checkscol )
    end)


    DropButton.MouseButton1Click:Connect(function()     
        if checkdrop.checkscol == false then 
            ListFrame.Visible = true 
            TweenService:Create(
                DropArbt_listimage,
                TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                {Rotation = -180}
            ):Play()
            TweenService:Create(
                ListFrame,
                TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                {Size =  UDim2.new(0, 230, 0, framesize)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                ScolPage_list,
                TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                {Size =  UDim2.new(0, 230, 0, framesize)} -- UDim2.new(0, 128, 0, 25)
            ):Play()

    else
        TweenService:Create(
            DropArbt_listimage,
            TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
            {Rotation = 0}
        ):Play()
        TweenService:Create(
            ListFrame,
            TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
            {Size =  UDim2.new(0, 230, 0, 0)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        TweenService:Create(
            ScolPage_list,
            TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
            {Size =  UDim2.new(0, 230, 0, 0)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        repeat
            wait()
        until ScolPage_list.Size ==  UDim2.new(0, 230, 0, 0)
        ListFrame.Visible = false
        end
        checkdrop.checkscol  = not    checkdrop.checkscol  
        pcall(callback,   checkdrop.checkscol )
    end)

    function dropfuc:Add(text2)
       
    local listDropButton = Instance.new("TextButton")

    listDropButton.Parent = ScolPage_list
    listDropButton.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    listDropButton.BorderSizePixel = 0
    listDropButton.Size = UDim2.new(0, 230, 0, 24)
    listDropButton.Font = Enum.Font.GothamBold
    listDropButton.Text = tostring(text2)
    listDropButton.TextColor3 = Color3.fromRGB(30, 215, 96)
    listDropButton.TextSize = 11.000
    listDropButton.AutoButtonColor = false 
    listDropButton.AnchorPoint = Vector2.new(0.5, 0.5)
    listDropButton.Position = UDim2.new(0.5, 0, 0.5, 0)



    listDropButton.MouseButton1Click:Connect(function()
        TweenService:Create(
            ListFrame,
            TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
            {Size =  UDim2.new(0, 140, 0, 0)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        TweenService:Create(
            ScolPage_list,
            TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
            {Size =  UDim2.new(0, 140, 0, 0)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        repeat
            wait()
        until ScolPage_list.Size ==  UDim2.new(0, 140, 0, 0)
        ListFrame.Visible = false
        TextLabelDrop2.Text = text.." : "..tostring(text2)  
        callback(text2)
    end
)

    listDropButton.MouseEnter:Connect(function ()
        TweenService:Create(
            listDropButton,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(25, 25, 25)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
    end)
    listDropButton.MouseLeave:Connect(function ()
        TweenService:Create(
            listDropButton,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(15, 15, 15)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
    end)

    ScolPage_list.CanvasSize = UDim2.new(0,0,0,UIListLayout_MainPage_list.AbsoluteContentSize.Y + 10)  


    end

    function dropfuc:Clear()
    for i, v in next, ScolPage_list:GetChildren() do
        if v:IsA("TextButton")  then 
        v:Destroy()
        
        end
        ScolPage_list.CanvasSize = UDim2.new(0,0,0,UIListLayout_MainPage_list.AbsoluteContentSize.Y + 10)  
    end   

end  
    return  dropfuc
end

function ems:AddSlder(text,min,max,de,callback)
    local SliderFunc = {}
    local SliderFrame = Instance.new("Frame")


    SliderFrame.Name = "SliderFrame"
    SliderFrame.Parent = ScolPage2
    SliderFrame.BackgroundColor3 = Color3.fromRGB(255,255,255)
    SliderFrame.BorderSizePixel = 0
    SliderFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    SliderFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    SliderFrame.Size = UDim2.new(0, 230, 0, 50)
    SliderFrame.BackgroundTransparency = 1
    SliderFrame.ClipsDescendants = true 

    local fakeclick = Instance.new("TextButton",SliderFrame)

    fakeclick.BackgroundColor3 = Color3.fromRGB(15,15,15)
    fakeclick.BorderSizePixel = 0
    fakeclick.Size = UDim2.new(1, 0, 1, 0)
    fakeclick.Font = Enum.Font.GothamSemibold
    fakeclick.Text = ""
    fakeclick.TextColor3 = Color3.fromRGB(255, 255, 255)
    fakeclick.Transparency = 1
    fakeclick.TextSize = 10.000
    fakeclick.AutoButtonColor = false 
    fakeclick.AnchorPoint = Vector2.new(0.5, 0.5)
    fakeclick.Position = UDim2.new(0.5, 0, 0.3, 0)

    local Conner_SliderFrame1 = Instance.new("UICorner")
       
    Conner_SliderFrame1.CornerRadius = UDim.new(0, 5)
    Conner_SliderFrame1.Name = ""
    Conner_SliderFrame1.Parent = SliderFrame

    local SlisFrameStroke = Instance.new("UIStroke",SliderFrame)
                    
    SlisFrameStroke.Thickness = 1
    SlisFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
    SlisFrameStroke.Color = Color3.fromRGB(30, 215, 96)
    SlisFrameStroke.Transparency = 0
    local TalabelSlider = Instance.new("TextLabel") 

    TalabelSlider.Parent = SliderFrame
    TalabelSlider.Name = "TalabelSlider"
    TalabelSlider.BackgroundColor3 = Color3.fromRGB(30, 215, 96)
    TalabelSlider.BackgroundTransparency = 1
    TalabelSlider.AnchorPoint = Vector2.new(0.5, 0.5)
    TalabelSlider.Position = UDim2.new(0.5, 0, 0.3, 0)
    TalabelSlider.Size = UDim2.new(0, 200, 0, 20)
    TalabelSlider.Font = Enum.Font.GothamSemibold
    TalabelSlider.Text = text
    TalabelSlider.TextColor3 = Color3.fromRGB(255, 255, 255)
    TalabelSlider.TextSize = 11.000
    TalabelSlider.BorderSizePixel = 0
    TalabelSlider.ClipsDescendants = true 
    TalabelSlider.TextXAlignment = Enum.TextXAlignment.Left

       
    local ValueFrame = Instance.new("Frame")

    ValueFrame.Name = "ValueFrame"
    ValueFrame.Parent = SliderFrame
    ValueFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    ValueFrame.BorderSizePixel = 0
    ValueFrame.BackgroundTransparency = 0
    ValueFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    ValueFrame.Position = UDim2.new(0.5, 0, 0.7, 0)
    ValueFrame.Size = UDim2.new(0, 200, 0, 20)
    ValueFrame.BackgroundTransparency = 1
    ValueFrame.ClipsDescendants = true 

    local SecValue = Instance.new("Frame")

    SecValue.Name = "SecValue"
    SecValue.Parent = ValueFrame
    SecValue.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
    SecValue.BorderSizePixel = 0
    SecValue.BackgroundTransparency = 0
    SecValue.AnchorPoint = Vector2.new(0.5, 0.5)
    SecValue.Position = UDim2.new(0.5, 0, 0.5, 0)
    SecValue.Size = UDim2.new(0, 190, 0, 4)
    SecValue.BackgroundTransparency = 0
    SecValue.ClipsDescendants = false 

    
    local MainValue = Instance.new("Frame")

    MainValue.Name = "MainValue"
    MainValue.Parent = SecValue
    MainValue.BackgroundColor3 = Color3.fromRGB(30, 215, 96)
    MainValue.BorderSizePixel = 0
    MainValue.BackgroundTransparency = 0
    -- MainValue.AnchorPoint = Vector2.new(0.5, 0.5)
    MainValue.Position = UDim2.new(0., 0, 0., 0)
    MainValue.Size = UDim2.new((de or 0) / max, 0, 0, 4)
    MainValue.BackgroundTransparency = 0
    MainValue.ClipsDescendants = false 

     
    local ConneValue = Instance.new("Frame")

    ConneValue.Name = "ConneValue"
    ConneValue.Parent = SecValue
    ConneValue.BackgroundColor3 = Color3.fromRGB(255,255, 255)
    ConneValue.Size = UDim2.new(0, 10, 0, 10)
    ConneValue.BackgroundTransparency = 0
    ConneValue.BorderSizePixel = 0 
    ConneValue.AnchorPoint = Vector2.new(0.5, 0.5)
    ConneValue.Position = UDim2.new((de or 0)/max, 0.5, 0.5,0.5, 0) 
    ConneValue.ClipsDescendants = false 

    local Conner_Conne = Instance.new("UICorner")
                    
    Conner_Conne.CornerRadius = UDim.new(0, 10)
    Conner_Conne.Name = ""
    Conner_Conne.Parent = ConneValue

            
    local ScolDown_Uiconner2 = Instance.new("UICorner")
                
    ScolDown_Uiconner2.CornerRadius = UDim.new(0, 8)
    ScolDown_Uiconner2.Name = ""
    ScolDown_Uiconner2.Parent = MainValue

    local ScolDown_Uiconner3 = Instance.new("UICorner")
        
    ScolDown_Uiconner3.CornerRadius = UDim.new(0, 8)
    ScolDown_Uiconner3.Name = ""
    ScolDown_Uiconner3.Parent = SecValue


    
    local ShowValueFarm = Instance.new("Frame")

    ShowValueFarm.Name = "ShowValueFarm"
    ShowValueFarm.Parent = SliderFrame
    ShowValueFarm.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    ShowValueFarm.Size = UDim2.new(0, 50, 0, 14)
    ShowValueFarm.BackgroundTransparency = 1
    ShowValueFarm.BorderSizePixel = 0 
    ShowValueFarm.AnchorPoint = Vector2.new(0.5, 0.5)
    ShowValueFarm.Position = UDim2.new(0.80, 0, 0.28, 0)
    ShowValueFarm.ClipsDescendants = false

    local MheeFrameStroke1 = Instance.new("UIStroke",ShowValueFarm)
                    
    MheeFrameStroke1.Thickness = 1
    MheeFrameStroke1.LineJoinMode = Enum.LineJoinMode.Round
    MheeFrameStroke1.Color = Color3.fromRGB(30, 215, 96)
    MheeFrameStroke1.Transparency = 0

    local CustomValue = Instance.new("TextBox")

    CustomValue.Parent = ShowValueFarm
    CustomValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    CustomValue.BorderSizePixel = 0
    CustomValue.ClipsDescendants = true
    CustomValue.AnchorPoint = Vector2.new(0.5, 0.5)
    CustomValue.Position = UDim2.new(0.5, 0, 0.5, 0)
    CustomValue.Size = UDim2.new(0, 145, 0, 26)
    CustomValue.Font = Enum.Font.GothamSemibold
    CustomValue.PlaceholderColor3 = Color3.fromRGB(222, 222, 222)
    CustomValue.PlaceholderText =  ""
    CustomValue.Text =  tostring(de and math.floor((de / max) * (max - min) + min) or 0)
    CustomValue.TextColor3 = Color3.fromRGB(255, 255, 255)
    CustomValue.TextSize = 9.000
    CustomValue.BackgroundTransparency = 1

    local ScolDown_Uiconner3222 = Instance.new("UICorner")
        
    ScolDown_Uiconner3222.CornerRadius = UDim.new(0, 4)
    ScolDown_Uiconner3222.Name = ""
    ScolDown_Uiconner3222.Parent = ShowValueFarm
    local function move(input)
        local pos =
            UDim2.new(
                math.clamp((input.Position.X - SecValue.AbsolutePosition.X) / SecValue.AbsoluteSize.X, 0, 1),
                0,
                0.5,
                0
            )
        local pos1 =
            UDim2.new(
                math.clamp((input.Position.X - SecValue.AbsolutePosition.X) / SecValue.AbsoluteSize.X, 0, 1),
                0,
                0,
                5
            )
        
            MainValue:TweenSize(pos1, "Out", "Sine", 0.2, true)

            ConneValue:TweenPosition(pos, "Out", "Sine", 0.2, true)
            local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
            CustomValue.Text = tostring(value)
            callback(value)

        end
        local dragging = false 
        ConneValue.InputBegan:Connect(
            function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    dragging = true

                end
            end
        )
        ConneValue.InputEnded:Connect(
            function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    dragging = false
                 
                end
            end
        )
            
        
        ValueFrame.InputBegan:Connect(
            function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    dragging = true

                end
            end
        )
        ValueFrame.InputEnded:Connect(
            function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    dragging = false
                 
                end
            end
        )


        game:GetService("UserInputService").InputChanged:Connect(
            function(input)
                if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                    move(input)
                end
            end
            )
                   CustomValue.FocusLost:Connect(function()    
                        MainValue:TweenSize(UDim2.new((CustomValue.Text or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
                        ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.5, 0) , "Out", "Sine", 0.2, true)
                        CustomValue.Text = tostring(CustomValue.Text and math.floor((CustomValue.Text / max) * (max - min) + min) )
                        pcall(callback,tonumber( CustomValue.Text))
                        -- if  CustomValue.Text == "" then

                        --     MainValue:TweenSize(UDim2.new((CustomValue.PlaceholderText  or 0) / max, 0, 0, 2), "Out", "Sine", 0.2, true)
                        --     ConneValue:TweenPosition(UDim2.new((CustomValue.PlaceholderText  or 0)/max, 0,0, 0) , "Out", "Sine", 0.2, true)
                        --     CustomValue.Text = tostring(CustomValue.PlaceholderText  and math.floor((    CustomValue.PlaceholderText  / max) * (max - min) + min) or 0)
                        --     pcall(callback,CustomValue.PlaceholderText ) 
                        -- end
                    end)

				function SliderFunc:change(tochange)
                    MainValue:TweenSize(UDim2.new((tochange or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
                    ConneValue:TweenPosition(UDim2.new((tochange or 0)/max, 0,0.5, 0) , "Out", "Sine", 0.2, true)
					CustomValue.Text = tostring(tochange and math.floor((CustomValue.Text / max) * (max - min) + min) )
					pcall(callback, tonumber(tochange))
				end
                return  SliderFunc
                
end

function ems:AddTitle(text)
    local tiframe = Instance.new("Frame")

    tiframe.Name = "tiframe"
    tiframe.Parent = ScolPage2
    tiframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tiframe.BackgroundTransparency = 1
    tiframe.BorderSizePixel = 0
    tiframe.ClipsDescendants = true
    tiframe.AnchorPoint = Vector2.new(0.5, 0.5)
    tiframe.Position = UDim2.new(0.5, 0, 0.5, 0)
    tiframe.Size = UDim2.new(0, 230, 0, 20)

    local  lineframe = Instance.new("TextLabel")
                  
    lineframe.Parent = tiframe
    lineframe.BackgroundColor3 = Color3.fromRGB(30, 215, 96)
    lineframe.BackgroundTransparency = 0
    lineframe.AnchorPoint = Vector2.new(0.6, 0.5)
    lineframe.Position = UDim2.new(0., 0, 0.4, 0)
    lineframe.BorderSizePixel = 0
    lineframe.Size = UDim2.new(0, 40, 0, 1)
    lineframe.Font = Enum.Font.GothamSemibold
    lineframe.TextColor3 = Color3.fromRGB(255, 255, 255)
    lineframe.TextSize = 13.000
    lineframe.Text = ""

    local  lineframe2 = Instance.new("TextLabel")
                  
    lineframe2.Parent = tiframe
    lineframe2.BackgroundColor3 = Color3.fromRGB(30, 215, 96)
    lineframe2.BackgroundTransparency = 0
    lineframe2.AnchorPoint = Vector2.new(0.5, 0.5)
    lineframe2.Position = UDim2.new(1, 0, 0.4, 0)
    lineframe2.BorderSizePixel = 0
    lineframe2.Size = UDim2.new(0, 40, 0, 1)
    lineframe2.Font = Enum.Font.GothamSemibold
    lineframe2.TextColor3 = Color3.fromRGB(255, 255, 255)
    lineframe2.TextSize = 11.000
    lineframe2.Text = ""

    local  lineframe3 = Instance.new("TextLabel")
                  
    lineframe3.Parent = tiframe
    lineframe3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    lineframe3.BackgroundTransparency = 1
    lineframe3.AnchorPoint = Vector2.new(0.5, 0.5)
    lineframe3.Position = UDim2.new(0.5, 0, 0.5, 0)
    lineframe3.BorderSizePixel = 0
    lineframe3.Size = UDim2.new(0, 130, 0, 20)
    lineframe3.Font = Enum.Font.GothamBold
    lineframe3.Text = tostring(text)
    lineframe3.TextColor3 = Color3.fromRGB(30, 215, 96)
    lineframe3.TextSize = 12.000
end

function ems:AddLabel(text)

    local labelfuc = {}
    local  Labelxd = Instance.new("TextLabel")
                  
    Labelxd.Parent = ScolPage2
    Labelxd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Labelxd.BackgroundTransparency = 1
    Labelxd.AnchorPoint = Vector2.new(0.5, 0.5)
    Labelxd.Position = UDim2.new(0.5, 0, 0.8, 0)
    Labelxd.BorderSizePixel = 0
    Labelxd.Size = UDim2.new(0, 75, 0, 13)
    Labelxd.Font = Enum.Font.GothamSemibold
    Labelxd.Text = tostring(text)
    Labelxd.TextColor3 = Color3.fromRGB(255, 255, 255)
    Labelxd.TextSize = 12.000
    Labelxd.TextXAlignment = Enum.TextXAlignment.Left

function  labelfuc:Refresh(text2)
    Labelxd.Text = tostring(text2)
end
return  labelfuc
end
return ems 
end
return page
end
return tap
end


if game.PlaceId == 2753915549 then
    W = true
elseif game.PlaceId == 4442272183 then
    W2 = true
elseif game.PlaceId == 7449423635 then
    W3 = true
end

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

spawn(function()
    pcall(function()
        while wait() do
            if _G.Auto_Musketeer_Hat or _G.AutoMysticIsland or _G.Auto_Kill_Player_Gun or _G.Auto_Fully_Superhuman or _G.Auto_Fully_Death_Step or _G.Auto_Fully_SharkMan_Karate or _G.Auto_Open_Dough_Dungeon or _G.AutoFarmMasDF or _G.Auto_Tushita or _G.Auto_Yama or _G.Auto_New_World or _G.TpLab or _G.AutoBossLaw or _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.Auto_Saber or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or FarmBoss or _G.AutoElitehunter or _G.AutoThirdSea or _G.AutoFarmBone == true then
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
            if _G.Auto_Musketeer_Hat or _G.AutoMysticIsland or _G.Auto_Kill_Player_Gun or _G.Auto_Fully_SharkMan_Karate or _G.Auto_Open_Dough_Dungeon or _G.AutoFarmMasDF or _G.Auto_Tushita or _G.Auto_Yama or _G.Auto_New_World or _G.TpLab or _G.AutoBossLaw or _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.Auto_Saber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.AutoFarmBone == true then
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
        if _G.Auto_Musketeer_Hat or _G.AutoMysticIsland or _G.Auto_Kill_Player_Gun or _G.Auto_Fully_SharkMan_Karate or _G.Auto_Open_Dough_Dungeon or _G.AutoFarmMasDF or _G.Auto_Tushita or _G.Auto_Yama or _G.Auto_New_World or _G.AutoBossLaw or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.Auto_Saber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.AutoFarmBone == true then
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

local window = ui:win()
local tab1 = window:AddTab("General")
local tab2 = window:AddTab("Items")
local tab4 = window:AddTab("Visuals")
local page1 = tab1:Addpage()
local page2 = tab1:Addpage()
local pm1 = tab1:Addpage()
local pm2 = tab1:Addpage()
local page3 = tab2:Addpage()
local page4 = tab2:Addpage()
local page5 = tab2:Addpage()
local page6 = tab2:Addpage()
local page7 = tab4:Addpage()
local htter = page1:AddTitle("Main")

page1:AddToggle("Auto Farm Level",false,function (a)
    _G.AutoFarm = a
    StopTween(_G.AutoFarm)
end)
page1:AddToggle("Auto Farm Quest",true,function (a)
    _G.Quest = a
end)
page1:AddToggle("Auto Farm New World",false,function (a)
    _G.Auto_New_World = a
    StopTween(_G.Auto_New_World)
end)
page1:AddTitle("Miscellaneous")
page1:AddToggle("Auto Saber Sword",false,function (a)
    _G.Auto_Saber = a
    StopTween(_G.Auto_Saber)
end)
page1:AddToggle("Auto Legendary Sword",false,function (a)
    _G.AutoBuyLegendarySword = a
end)
page2:AddTitle("Settings")
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
local s = page2:AddDropDown("Select Weapons","Weapon",WeaponList,function (a)
    _G.SelectWeapon = a
end)
page2:AddButton("Refresh Weapon",function ()
    s:Clear()
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            s:Add(v.Name)
        end
    end
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("Tool") then
        s:Add(v.Name)
        end
    end
end)
_G.Fast_Delay = 0.1
page2:AddDropDown("Select Fast Attack","Delay",{"0","0.1","0.15","0.2","0.25","0.3"},function (a)
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
page2:AddToggle("Fast Attack",true,function (a)
    _G.FastAttack = a
end)
page2:AddToggle("Bring Mob",true,function (a)
    _G.BringMonster = a
end)
page2:AddToggle("Auto Set Spawn",true,function (a)
    _G.AutoSetSpawn = a
end)
Melee = {"Combat","Black Leg","Electro","Fishman Karate","Dragon Claw","Superhuman","Death Step","Electric Claw","Sharkman Karate","Dragon Talon","Godhuman"}
function MeleeBuy(N1,N2,N3,N4)
    page3:AddButton(N1,function ()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(N2,N3,N4)
    end)
end
page3:AddTitle("Buy Melees")
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
page4:AddTitle("Buy Swords")
page4:AddButton("Katana", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
end)

page4:AddButton("Cutlass", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
end)

page4:AddButton("Duel Katana", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
end)

page4:AddButton("Iron Mace", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
end)

page4:AddButton("Pipe", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
end)

page4:AddButton("Triple Katana", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
end)

page4:AddButton("Dual-Headed Blade", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
end)

page4:AddButton("Bisento", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
end)

page4:AddButton("Soul Cane", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
end)
page5:AddTitle("Buy Guns")
page5:AddButton("Slingshot", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
end)

page5:AddButton("Musket", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
end)

page5:AddButton("Flintlock", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
end)

page5:AddButton("Refined Flintlock", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock")
end)

page5:AddButton("Cannon", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
end)

page5:AddButton("Kabucha", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","1")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2")
end)
page6:AddTitle("Accessory")
page6:AddButton("Black Cape", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Black Cape")
end)

page6:AddButton("Toemo Ring", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Tomoe Ring")
end)

page6:AddButton("Swordsman Hat", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Swordsman Hat")
end)
page6:AddTitle("Ability")
page6:AddButton("Skyjump", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
end)
page6:AddButton("Buso Haki", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
end)
page6:AddButton("Soru", function()
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
end)
page6:AddButton("Ken Haki", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
end)
page6:AddTitle("Misc")
page6:AddButton("Refund Stat [2500 F]", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
end)

page6:AddButton("Reroll Race [3000 F]", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","1")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","2")
end)
page6:AddTitle("Bone")
page6:AddButton("Random Bone",function ()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
end)
page6:AddToggle("Auto Random Bone",false,function (a)
    _G.Auto_Random_Bone = a
end)
pm1:AddTitle("Event")
pm1:AddToggle("🍬 BuddySword 🍬",false,function (a)
    _G.AutoBudySword = a
    StopTween(_G.AutoBudySword)
end)
pm1:AddToggle("🎃 hallow Scythe 🎃",false,function (a)
    _G.AutoFarmBossHallow = a
    StopTween(_G.AutoFarmBossHallow)
end)
pm1:AddTitle("🌀 Portal 🌀")
local d = pm1:AddLabel("Defeat")
pm1:AddToggle("Auto Farm Cake Prince",false,function (a)
    _G.AutoDoughtBoss = a
    StopTween(_G.AutoDoughtBoss)
end)
pm2:AddTitle("Misc Farm")
pm2:AddToggle("Auto Rainbow Haki",false,function (a)
    _G.Auto_Rainbow_Haki = a
    StopTween(_G.Auto_Rainbow_Haki)
end)
pm2:AddToggle("Auto Musketeer Hat",false,function (a)
    _G.Auto_Musketeer_Hat = a
    StopTween(_G.Auto_Musketeer_Hat)
end)
pm2:AddToggle("")

page7:AddTitle("Teleport - Map")
page7:AddButton("Teleport To East Blue",function ()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
end)
page7:AddButton("Teleport To Second Sea",function ()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
end)
page7:AddButton("Teleport To Zou",function ()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
end)
page7:AddTitle("Teleport - Island")
if W then
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
elseif W2 then
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
elseif W3 then
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
        "Chocolate Island"
    }
end

page7:AddDropDown("Select Island","Island",Island,function (a)
    _G.SelectIsland = a
end)
page7:AddToggle("Teleport To Island",false,function (a)
    _G.TeleportIsland = a
    if _G.TeleportIsland == true then
        repeat wait()
            if _G.SelectIsland == "WindMill" then
                getgenv().ToTarget(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
            elseif _G.SelectIsland == "Marine" then
                getgenv().ToTarget(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
            elseif _G.SelectIsland == "Middle Town" then
                getgenv().ToTarget(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
            elseif _G.SelectIsland == "Jungle" then
                getgenv().ToTarget(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
            elseif _G.SelectIsland == "Pirate Village" then
                getgenv().ToTarget(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
            elseif _G.SelectIsland == "Desert" then
                getgenv().ToTarget(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
            elseif _G.SelectIsland == "Snow Island" then
                getgenv().ToTarget(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
            elseif _G.SelectIsland == "MarineFord" then
                getgenv().ToTarget(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
            elseif _G.SelectIsland == "Colosseum" then
                getgenv().ToTarget( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
            elseif _G.SelectIsland == "Sky Island 1" then
                getgenv().ToTarget(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
            elseif _G.SelectIsland == "Sky Island 2" then  
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
            elseif _G.SelectIsland == "Sky Island 3" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
            elseif _G.SelectIsland == "Prison" then
                getgenv().ToTarget( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
            elseif _G.SelectIsland == "Magma Village" then
                getgenv().ToTarget(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
            elseif _G.SelectIsland == "Under Water Island" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            elseif _G.SelectIsland == "Fountain City" then
                getgenv().ToTarget(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
            elseif _G.SelectIsland == "Shank Room" then
                getgenv().ToTarget(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
            elseif _G.SelectIsland == "Mob Island" then
                getgenv().ToTarget(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
            elseif _G.SelectIsland == "The Cafe" then
                getgenv().ToTarget(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
            elseif _G.SelectIsland == "Frist Spot" then
                getgenv().ToTarget(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
            elseif _G.SelectIsland == "Dark Area" then
                getgenv().ToTarget(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
            elseif _G.SelectIsland == "Flamingo Mansion" then
                getgenv().ToTarget(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
            elseif _G.SelectIsland == "Flamingo Room" then
                getgenv().ToTarget(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
            elseif _G.SelectIsland == "Green Zone" then
                getgenv().ToTarget( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
            elseif _G.SelectIsland == "Factory" then
                getgenv().ToTarget(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
            elseif _G.SelectIsland == "Colossuim" then
                getgenv().ToTarget( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
            elseif _G.SelectIsland == "Zombie Island" then
                getgenv().ToTarget(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
            elseif _G.SelectIsland == "Two Snow Mountain" then
                getgenv().ToTarget(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
            elseif _G.SelectIsland == "Punk Hazard" then
                getgenv().ToTarget(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
            elseif _G.SelectIsland == "Cursed Ship" then
                getgenv().ToTarget(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
            elseif _G.SelectIsland == "Ice Castle" then
                getgenv().ToTarget(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
            elseif _G.SelectIsland == "Forgotten Island" then
                getgenv().ToTarget(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
            elseif _G.SelectIsland == "Ussop Island" then
                getgenv().ToTarget(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
            elseif _G.SelectIsland == "Mini Sky Island" then
                getgenv().ToTarget(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
            elseif _G.SelectIsland == "Great Tree" then
                getgenv().ToTarget(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
            elseif _G.SelectIsland == "Castle On The Sea" then
                getgenv().ToTarget(CFrame.new(-5074.45556640625, 314.5155334472656, -2991.054443359375))
            elseif _G.SelectIsland == "MiniSky" then
                getgenv().ToTarget(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
            elseif _G.SelectIsland == "Port Town" then
                getgenv().ToTarget(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
            elseif _G.SelectIsland == "Hydra Island" then
                getgenv().ToTarget(CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625))
            elseif _G.SelectIsland == "Floating Turtle" then
                getgenv().ToTarget(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
            elseif _G.SelectIsland == "Mansion" then
                getgenv().ToTarget(CFrame.new(-12547.71, 340, -7487.06494))
            elseif _G.SelectIsland == "Haunted Castle" then
                getgenv().ToTarget(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
            elseif _G.SelectIsland == "Ice Cream Island" then
                getgenv().ToTarget(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
            elseif _G.SelectIsland == "Peanut Island" then
                getgenv().ToTarget(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
            elseif _G.SelectIsland == "Cake Island" then
                getgenv().ToTarget(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
            elseif _G.SelectIsland == 'Chocolate Island' then
                getgenv().ToTarget(CFrame.new(14.3735638, 20.5485172, -12048.2598, -0.68978548, 0, 0.724013805, 0, 1, 0, -0.724013805, 0, -0.68978548))
            end
        until not _G.TeleportIsland
    end
    StopTween(_G.TeleportIsland)
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

spawn(function()
    pcall(function()
        while wait() do
            if _G.Auto_Random_Bone then    
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
            end
        end
    end)
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
                    repeat wait() getgenv().ToTarget(CFrameQuest) until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoFarm
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
                                            getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
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
                        getgenv().ToTarget(CFrameMon)
                        StartMagnet = false
                        if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                            getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(0,0,30))
                        else
                            if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 15 then
                                if PosMon ~= nil then
                                    getgenv().ToTarget(PosMon * CFrame.new(0,0,30))
                                else
                                    if OldPos ~= nil then
                                        getgenv().ToTarget(OldPos.Position)
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
                                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
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
                        getgenv().ToTarget(CFrameMon)
                        StartMagnet = false
                        if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                            getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(0,0,30))
                        else
                            if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 15 then
                                if PosMon ~= nil then
                                    getgenv().ToTarget(PosMon * CFrame.new(0,0,30))
                                else
                                    if OldPos ~= nil then
                                        getgenv().ToTarget(OldPos.Position)
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
                    repeat wait() getgenv().ToTarget(CFrameQuest) until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoFarm
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
                                            getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
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
                        getgenv().ToTarget(CFrameMon)
                        StartMagnet = false
                        if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                            getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                        else
                            if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 15 then
                                if PosMon ~= nil then
                                    getgenv().ToTarget(PosMon * CFrame.new(0,35,0))
                                else
                                    if OldPos ~= nil then
                                        getgenv().ToTarget(OldPos.Position)
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
                                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
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
                        getgenv().ToTarget(CFrameMon)
                        StartMagnet = false
                        if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                            getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                        else
                            if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 15 then
                                if PosMon ~= nil then
                                    getgenv().ToTarget(PosMon * CFrame.new(0,35,0))
                                else
                                    if OldPos ~= nil then
                                        getgenv().ToTarget(OldPos.Position)
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
                    repeat wait() getgenv().ToTarget(CFrameQuest) until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoFarm
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
                                            getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
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
                        getgenv().ToTarget(CFrameMon)
                        StartMagnet = false
                        if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                            getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(0,0,30))
                        else
                            if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 15 then
                                if PosMon ~= nil then
                                    getgenv().ToTarget(PosMon * CFrame.new(0,0,30))
                                else
                                    if OldPos ~= nil then
                                        getgenv().ToTarget(OldPos.Position)
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
                                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
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
                        getgenv().ToTarget(CFrameMon)
                        StartMagnet = false
                        if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                            getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(0,0,30))
                        else
                            if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 15 then
                                if PosMon ~= nil then
                                    getgenv().ToTarget(PosMon * CFrame.new(0,0,30))
                                else
                                    if OldPos ~= nil then
                                        getgenv().ToTarget(OldPos.Position)
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
        if _G.Auto_New_World and W then
            pcall(function()
                if game.Players.LocalPlayer.Data.Level.Value >= 700 then
                    _G.AutoFarm = false
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
                                        EquipWeapon(_G.SelectWeapon)
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
        elseif _G.Auto_New_World and W2 then
            pcall(function()
                if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 then
                    _G.AutoFarm = false
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
                                        EquipWeapon(_G.SelectWeapon)
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

spawn(function ()
    pcall(function ()
        while wait() do
            if _G.AutoBuyLegendarySword and W2 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","1")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","2")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","3")
            end
        end
    end)
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
                                EquipWeapon(_G.SelectWeapon)
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
                if _G.Auto_Farm_Dough_Dungeon and StartCakeMagnet and (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and (v.HumanoidRootPart.Position - POSCAKE.Position).magnitude <= 350 then
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
    pcall(function()
        while wait() do
            if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
                d:Refresh("Defeat : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41))
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
                d:Refresh("Defeat : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40))
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
                d:Refresh("Defeat : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39))
            else
                d:Refresh("Defeat : Open")
            end
        end
    end)
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
                                    getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                until not _G.AutoDoughtBoss or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                        getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
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
                                                getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                                game:GetService("VirtualUser"):CaptureController()
                                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                            until not _G.AutoDoughtBoss or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or KillMob == 0
                                        end
                                    end
                                end
                            else
                                MagnetDought = false
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter [Lv. 2200]") then
                                    getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter [Lv. 2200]").HumanoidRootPart.CFrame * CFrame.new(0,35,0)) 
                                else
                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard [Lv. 2225]") then
                                        getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard [Lv. 2225]").HumanoidRootPart.CFrame * CFrame.new(0,35,0)) 
                                    else
                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff [Lv. 2250]") then
                                            getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff [Lv. 2250]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                        else
                                            if game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker [Lv. 2275]") then
                                                getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker [Lv. 2275]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                            end
                                        end
                                    end
                                end                       
                            end
                        else
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                                getgenv().ToTarget(game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                            else
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                                    getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                end
                            end
                        end
                    end
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
                                        EquipWeapon(_G.SelectWeapon)
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
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress") then
                    if _G.Auto_Rainbow_Haki and game.ReplicatedStorage:FindFirstChild("Island Empress [Lv. 1675] [Boss]") or game.Workspace.Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Island Empress [Lv. 1675] [Boss]" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
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
                    end
                elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
                    if _G.Auto_Rainbow_Haki and game.ReplicatedStorage:FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") or game.Workspace.Enemies:FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Kilo Admiral [Lv. 1750] [Boss]" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
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
                    end
                elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
                    if _G.Auto_Rainbow_Haki and game.ReplicatedStorage:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") or game.Workspace.Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
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
                    end
                elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
                    if _G.Auto_Rainbow_Haki and game.ReplicatedStorage:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") or game.Workspace.Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
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
                                            EquipWeapon(_G.SelectWeapon)
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
                                            EquipWeapon(_G.SelectWeapon)
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
