local PlayersService = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local Teachers = workspace:WaitForChild("Teachers")
local Students = workspace:WaitForChild("Students")

local Player = PlayersService.LocalPlayer
local PlayerGui = Player.PlayerGui
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character:FindFirstChildOfClass("Humanoid")

function AddCorner(Parent,Size)
	local UICorner = Instance.new("UICorner")
	UICorner.Parent = Parent
	UICorner.CornerRadius = UDim.new(0,Size or 8)
	return UICorner
end

function AddStroke(Parent,Color,Size)
	local UIStroke = Instance.new("UIStroke")
	UIStroke.Parent = Parent
	UIStroke.Color = Color
	UIStroke.Thickness = Size
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	return UIStroke
end

function CreateSound(SoundId)
	local Sound = Instance.new("Sound")
	Sound.SoundId = SoundId
	return Sound
end

local Hidded = false
local VersionAge = "1.0v"
local DebrisStorage = {}

local Gui = Instance.new("ScreenGui")
Gui.Parent = PlayerGui
Gui.Name = "TestCheats"
Gui.IgnoreGuiInset = true

local Main = Instance.new("Frame")
Main.Parent = Gui
Main.Name = "Main"
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.Size = UDim2.new(0, 0,0, 0)
Main.Position = UDim2.new(0.519331276, 0, 0.499441355, 0)
Main.BackgroundColor3 = Color3.new(0.231373, 0.231373, 0.231373)
Main.ZIndex = 1
Main.BorderSizePixel = 0
Main.ClipsDescendants = true
AddCorner(Main)
AddStroke(Main,Color3.fromRGB(45, 45, 45),2)
------------------------------------------------------------------------------------------------
local Line = Instance.new("Frame")
Line.Parent = Main
Line.Name = "Line"
Line.AnchorPoint = Vector2.new(0, 0)
Line.Size = UDim2.new(0, 569, 0, 2)
Line.Position = UDim2.new(-3.21237678e-07, 0, 0.107255518, 0)
Line.BackgroundColor3 = Color3.new(0.345098, 0.345098, 0.345098)
Line.ZIndex = 2
Line.BorderSizePixel = 0
------------------------------------------------------------------------------------------------
local Line2 = Instance.new("Frame")
Line2.Parent = Main
Line2.Name = "Line2"
Line2.AnchorPoint = Vector2.new(0, 0)
Line2.Size = UDim2.new(0, 2, 0, 281)
Line2.Position = UDim2.new(0.2596488, 0, 0.11356467, 0)
Line2.BackgroundColor3 = Color3.new(0.345098, 0.345098, 0.345098)
Line2.ZIndex = 2
Line2.BorderSizePixel = 0
------------------------------------------------------------------------------------------------
local Frame1 = Instance.new("Frame")
Frame1.Parent = Main
Frame1.Name = "Frame1"
Frame1.AnchorPoint = Vector2.new(0, 0)
Frame1.Size = UDim2.new(0, 148, 0, 240)
Frame1.Position = UDim2.new(-3.21237678e-07, 0, 0.11356467, 0)
Frame1.BackgroundColor3 = Color3.new(0.27451, 0.27451, 0.27451)
Frame1.ZIndex = 1
Frame1.BorderSizePixel = 0
------------------------------------------------------------------------------------------------
local Frame2 = Instance.new("Frame")
Frame2.Parent = Main
Frame2.Name = "Frame2"
Frame2.AnchorPoint = Vector2.new(0, 0)
Frame2.Size = UDim2.new(0, 148, 0, 50)
Frame2.Position = UDim2.new(-3.21237678e-07, 0, 0.842271268, 0)
Frame2.BackgroundColor3 = Color3.new(0.27451, 0.27451, 0.27451)
Frame2.ZIndex = 1
Frame2.BorderSizePixel = 0
AddCorner(Frame2)
------------------------------------------------------------------------------------------------
local Line3 = Instance.new("Frame")
Line3.Parent = Main
Line3.Name = "Line3"
Line3.AnchorPoint = Vector2.new(0, 0)
Line3.Size = UDim2.new(0, 149, 0, 2)
Line3.Position = UDim2.new(-3.21237678e-07, 0, 0.842271268, 0)
Line3.BackgroundColor3 = Color3.new(0.345098, 0.345098, 0.345098)
Line3.ZIndex = 2
Line3.BorderSizePixel = 0
------------------------------------------------------------------------------------------------
local Frame3 = Instance.new("Frame")
Frame3.Parent = Main
Frame3.Name = "Frame3"
Frame3.AnchorPoint = Vector2.new(0, 0)
Frame3.Size = UDim2.new(0, 80, 0, 50)
Frame3.Position = UDim2.new(0.119297922, 0, 0.842271268, 0)
Frame3.BackgroundColor3 = Color3.new(0.27451, 0.27451, 0.27451)
Frame3.ZIndex = 1
Frame3.BorderSizePixel = 0
------------------------------------------------------------------------------------------------
local Line4 = Instance.new("Frame")
Line4.Parent = Main
Line4.Name = "Line4"
Line4.AnchorPoint = Vector2.new(0, 0)
Line4.Size = UDim2.new(0, 2,0, 23)
Line4.Position = UDim2.new(0.942, 0,0.019, 0)
Line4.BackgroundColor3 = Color3.new(0.345098, 0.345098, 0.345098)
Line4.ZIndex = 2
Line4.BorderSizePixel = 0
------------------------------------------------------------------------------------------------
local Frame4 = Instance.new("Frame")
Frame4.Parent = Main
Frame4.Name = "Frame4"
Frame4.AnchorPoint = Vector2.new(0, 0)
Frame4.Size = UDim2.new(0, 52, 0, 25)
Frame4.Position = UDim2.new(0.898, 0, 0.016, 0)
Frame4.BackgroundColor3 = Color3.new(0.27451, 0.27451, 0.27451)
Frame4.ZIndex = 1
Frame4.BorderSizePixel = 0
AddCorner(Frame4,6)
AddStroke(Frame4,Color3.fromRGB(88, 88, 88),1.5)
------------------------------------------------------------------------------------------------
local Close = Instance.new("ImageButton")
Close.Parent = Main
Close.Name = "Close"
Close.AnchorPoint = Vector2.new(0, 0)
Close.Size = UDim2.new(0, 23, 0, 23)
Close.Position = UDim2.new(0.947, 0,0.019, 0)
Close.BackgroundTransparency = 1
Close.ZIndex = 1
Close.BorderSizePixel = 0
Close.Image = "rbxassetid://10002398990"
------------------------------------------------------------------------------------------------
local Pre_Close = Instance.new("ImageButton")
Pre_Close.Parent = Main
Pre_Close.Name = "Pre_Close"
Pre_Close.AnchorPoint = Vector2.new(0, 0)
Pre_Close.Size = UDim2.new(0, 23, 0, 23)
Pre_Close.Position = UDim2.new(0.9, 0,0.019, 0)
Pre_Close.BackgroundTransparency = 1
Pre_Close.ZIndex = 1
Pre_Close.BorderSizePixel = 0
Pre_Close.Image = "rbxassetid://85978890925776"
------------------------------------------------------------------------------------------------
local MoveFrame = Instance.new("Frame")
MoveFrame.Parent = Main
MoveFrame.Name = "MoveFrame"
MoveFrame.AnchorPoint = Vector2.new(0, 0)
MoveFrame.Size = UDim2.new(0, 511,0, 34)
MoveFrame.Position = UDim2.new(0,0,0,0)
MoveFrame.BackgroundTransparency = 1
MoveFrame.ZIndex = 1
MoveFrame.BorderSizePixel = 0
-----------------------------------------------------------------------------------------------
local HiddedIcon = Instance.new("ImageButton")
HiddedIcon.Parent = Gui
HiddedIcon.Name = "Icon"
HiddedIcon.AnchorPoint = Vector2.new(0.5, 0.5)
HiddedIcon.Size = UDim2.new(0, 70, 0, 70)
HiddedIcon.Position = UDim2.new(0.947, 0,0.019, 0)
HiddedIcon.BackgroundTransparency = 1
HiddedIcon.ZIndex = 1
HiddedIcon.BorderSizePixel = 0
HiddedIcon.Image = "rbxassetid://9763545065"
HiddedIcon.Visible = false
AddCorner(HiddedIcon)
AddStroke(HiddedIcon,Color3.fromRGB(141, 141, 141),1.5)
---------------------------------------------------------------------
local HD_ReturnText = Instance.new("TextLabel")
HD_ReturnText.Parent = HiddedIcon
HD_ReturnText.Name = "HD_ReturnText"
HD_ReturnText.AnchorPoint = Vector2.new(0, 0)
HD_ReturnText.Size = UDim2.new(1, 0,0.232, 0)
HD_ReturnText.Position = UDim2.new(0, 0,0.913, 0)
HD_ReturnText.BackgroundTransparency = 1
HD_ReturnText.ZIndex = 1
HD_ReturnText.BorderSizePixel = 0
HD_ReturnText.RichText = true
HD_ReturnText.Text = `<b>Return</b>`
HD_ReturnText.TextScaled = true
HD_ReturnText.Font = Enum.Font.RobotoCondensed
HD_ReturnText.TextColor3 = Color3.fromRGB(255,255,255)
HD_ReturnText.TextStrokeTransparency = 0.6
HD_ReturnText.TextStrokeColor3 = Color3.fromRGB(72, 72, 72)

local HD_Text = Instance.new("TextLabel")
HD_Text.Parent = HiddedIcon
HD_Text.Name = "HD_Text"
HD_Text.AnchorPoint = Vector2.new(0, 0)
HD_Text.Size = UDim2.new(1, 0,0.232, 0)
HD_Text.Position = UDim2.new(0, 0,-0.145, 0)
HD_Text.BackgroundTransparency = 1
HD_Text.ZIndex = 1
HD_Text.BorderSizePixel = 0
HD_Text.RichText = true
HD_Text.Text = `<b>FPE:S</b>`
HD_Text.TextScaled = true
HD_Text.Font = Enum.Font.RobotoCondensed
HD_Text.TextColor3 = Color3.fromRGB(255,255,255)
HD_Text.TextStrokeTransparency = 0.6
HD_Text.TextStrokeColor3 = Color3.fromRGB(72, 72, 72)

-----------------------------------------------------------------------------------------------
local Icon = Instance.new("ImageLabel")
Icon.Parent = Main
Icon.Name = "Icon"
Icon.AnchorPoint = Vector2.new(0, 0)
Icon.Size = UDim2.new(0, 31, 0, 31)
Icon.Position = UDim2.new(0, 0,0.006, 0)
Icon.BackgroundTransparency = 1
Icon.ZIndex = 1
Icon.BorderSizePixel = 0
Icon.Image = "rbxassetid://13437295658"
AddCorner(Icon,100)
-----------------------------------------------------------------------------------------------
local PlayerIcon = Instance.new("ImageLabel")
PlayerIcon.Parent = Main
PlayerIcon.Name = "PlayerIcon"
PlayerIcon.AnchorPoint = Vector2.new(0, 0)
PlayerIcon.Size = UDim2.new(0, 37, 0, 37)
PlayerIcon.Position = UDim2.new(0.01, 0, 0.868, 0)
PlayerIcon.BackgroundColor3 = Color3.fromRGB(102, 102, 102)
PlayerIcon.ZIndex = 1
PlayerIcon.BorderSizePixel = 0
PlayerIcon.Image = PlayersService:GetUserThumbnailAsync(PlayersService.LocalPlayer.UserId,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size420x420) --Make Player Icon
AddCorner(PlayerIcon,100)
AddStroke(PlayerIcon,Color3.fromRGB(59, 59, 59),2)
-----------------------------------------------------------------------------------------------
local PlayerName = Instance.new("TextLabel")
PlayerName.Parent = Main
PlayerName.Name = "PlayerIcon"
PlayerName.AnchorPoint = Vector2.new(0, 0)
PlayerName.Size = UDim2.new(0, 104, 0, 16)
PlayerName.Position = UDim2.new(0.075, 0,0.896, 0)
PlayerName.BackgroundTransparency = 1
PlayerName.ZIndex = 1
PlayerName.BorderSizePixel = 0
PlayerName.RichText = true
PlayerName.Text = `<b>{Player.Name}</b>`
PlayerName.TextScaled = true
PlayerName.Font = Enum.Font.RobotoCondensed
PlayerName.TextColor3 = Color3.fromRGB(255,255,255)
-----------------------------------------------------------------------------------------------
local VersionName = Instance.new("TextLabel")
VersionName.Parent = Main
VersionName.Name = "VersionName"
VersionName.AnchorPoint = Vector2.new(0, 0)
VersionName.Size = UDim2.new(0, 147,0, 14)
VersionName.Position = UDim2.new(-0.002, 0,0.114, 0)
VersionName.BackgroundTransparency = 1
VersionName.ZIndex = 1
VersionName.BorderSizePixel = 0
VersionName.RichText = true
VersionName.Text = `<b>{VersionAge}</b>`
VersionName.TextScaled = true
VersionName.Font = Enum.Font.RobotoCondensed
VersionName.TextColor3 = Color3.fromRGB(95, 95, 95)
VersionName.TextXAlignment = Enum.TextXAlignment.Right
-----------------------------------------------------------------------------------------------
local PanelName = Instance.new("TextLabel")
PanelName.Parent = Main
PanelName.Name = "PanelName"
PanelName.AnchorPoint = Vector2.new(0, 0)
PanelName.Size = UDim2.new(0, 174,0, 23)
PanelName.Position = UDim2.new(0.064, 0,0.019, 0)
PanelName.BackgroundTransparency = 1
PanelName.ZIndex = 1
PanelName.BorderSizePixel = 0
PanelName.RichText = true
PanelName.TextScaled = true
PanelName.Font = Enum.Font.RobotoCondensed
PanelName.TextColor3 = Color3.fromRGB(255,255,255)
PanelName.TextXAlignment = Enum.TextXAlignment.Left
-----------------------------------------------------------------------------------------------
local CategoriesList = Instance.new("Frame")
CategoriesList.Parent = Main
CategoriesList.Name = "CategoriesList"
CategoriesList.AnchorPoint = Vector2.new(0, 0)
CategoriesList.Size = UDim2.new(0, 146,0, 218)
CategoriesList.Position = UDim2.new(0, 0,0.155, 0)
CategoriesList.BackgroundTransparency = 1
CategoriesList.ZIndex = 1
CategoriesList.BorderSizePixel = 0

local UIList = Instance.new("UIListLayout")
UIList.Parent = CategoriesList
UIList.Padding = UDim.new(0,10)
UIList.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIList.SortOrder = Enum.SortOrder.LayoutOrder

-----------------------------------------------------------------------------------------------

local emoji = ({
	["01 01"] = "??",
	[(function(Year)
		local A = math.floor(Year/100)
		local B = math.floor((13+8*A)/25)
		local C = (15-B+A-math.floor(A/4))%30
		local D = (4+A-math.floor(A/4))%7
		local E = (19*(Year%19)+C)%30
		local F = (2*(Year%4)+4*(Year%7)+6*E+D)%7
		local G = (22+E+F)
		if E == 29 and F == 6 then
			return "04 19"
		elseif E == 28 and F == 6 then
			return "04 18"
		elseif 31 < G then
			return ("04 %02d"):format(G-31)
		end
		return ("03 %02d"):format(G)
	end)(tonumber(os.date"%Y"))] = "??",
	["10 31"] = "??",
	["12 25"] = "??"
})[os.date("%m %d")]

PanelName.Text = `{emoji or ""}<b>Bublik Panel</b>{emoji or ""}(For FPE:S)`

task.wait(1)
TweenService:Create(Main,TweenInfo.new(0.25,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out),{Size = UDim2.new(0, 570, 0, 317)}):Play()

local Notify = CreateSound("rbxassetid://18595195017")
Notify.Name = "Notify"
Notify.Volume = 0.5
Notify.Parent = Gui
Notify:Play()

------------------------------------------------------------------------------------------------
local Dragging,StartPos = false,nil
local LastPos = Main.Position

UserInputService.InputBegan:Connect(function(input,gpe)
	if input.UserInputType == Enum.UserInputType.MouseButton1 and (Hidded and HiddedIcon.GuiState == Enum.GuiState.Press or MoveFrame.GuiState == Enum.GuiState.Press) then
		local MousePos = UserInputService:GetMouseLocation()
		Dragging = true
		StartPos = Hidded and UDim2.fromOffset(MousePos.X,MousePos.Y) - HiddedIcon.Position or UDim2.fromOffset(MousePos.X,MousePos.Y) - Main.Position
		task.delay(0.1,function()
			if not Dragging and Hidded then
				
				Dragging = false
				Hidded = not Hidded
				Main.Visible = not Hidded
				--HiddedIcon.Position = Main.Position
				LastPos = HiddedIcon.Position
				TweenService:Create(HiddedIcon,TweenInfo.new(0.25,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out),{Size = UDim2.new(0, 0, 0, 0)}):Play()
				TweenService:Create(Main,TweenInfo.new(0.25,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out),{Size = UDim2.new(0, 570, 0, 317)}):Play()
				task.wait(0.25)
				HiddedIcon.Visible = Hidded
			end
		end)
	end
end)

UserInputService.InputEnded:Connect(function(input2)
	if input2.UserInputType == Enum.UserInputType.MouseButton1 and Dragging then
		Dragging = false
	end
end)

RunService.RenderStepped:Connect(function(dt)
	dt*=60
	if Dragging then
		local MousePos = UserInputService:GetMouseLocation()
		if Hidded then
			HiddedIcon.Position = HiddedIcon.Position:Lerp(UDim2.fromOffset(MousePos.X,MousePos.Y) - StartPos,dt*0.5)
		else
			Main.Position = Main.Position:Lerp(UDim2.fromOffset(MousePos.X,MousePos.Y) - StartPos,dt*0.5)
		end
	end
end)


Pre_Close.Activated:Connect(function()
	Dragging = false
	Hidded = not Hidded
	HiddedIcon.Visible = Hidded
	HiddedIcon.Position = LastPos
	HiddedIcon.Size = UDim2.new(0,0,0,0)
	TweenService:Create(HiddedIcon,TweenInfo.new(0.25,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out),{Size = UDim2.new(0, 70, 0, 70)}):Play()
	TweenService:Create(Main,TweenInfo.new(0.25,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out),{Size = UDim2.new(0, 0, 0, 0)}):Play()

	task.wait(0.25)
	Main.Visible = false
end)

--[[Close.Activated:Connect(function()
	TweenService:Create(Main,TweenInfo.new(0.25,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out),{Size = UDim2.new(0, 0, 0, 0)}):Play()
	task.wait(0.25)
	Main.Visible = false
end)]]

------------------------------------------------------------------------Functions----------------------------------------------------------------------------------

local function WalkSpeed(Value)
	local Type = "NumberValue"
	if Value == nil then
		return Type
	end
	Character:SetAttribute("DefaultWalk",tonumber(Value) or 12)
end

local function InfStamina(Value)
	local Type = "BoolValue"
	if Value == nil then
		return Type
	end
	Character:SetAttribute("StaminaDrain",Value and 0 or 1)
end

local function AlwaysRunning(Value)
	local Type = "BoolValue"
	if Value == nil then
		return Type
	end
	if Value then
		DebrisStorage["AlwaysRunning"] = true
		DebrisStorage["AR_Connection"] = RunService.RenderStepped:Connect(function()
			Character:SetAttribute("Running",true)
		end)
	else
		DebrisStorage["AlwaysRunning"] = false
		DebrisStorage["AR_Connection"]:Disconnect()
	end
	
end

local function RunSpeed(Value)
	local Type = "NumberValue"
	if Value == nil then
		return Type
	end
	Character:SetAttribute("RunSpeed",tonumber(Value) or 28)
end

local function ESP_Teachers(Value)
	local Type = "BoolValue"
	if Value == nil then
		return Type
	end
	
	local function esp(child)
		if child == Character then return end
		local hl = Instance.new("Highlight")
		hl.Parent = child
		hl.OutlineTransparency = 1
		hl.FillTransparency = 0.5
		table.insert(DebrisStorage["ESP_T_Storage"],hl)
	end
	
	if Value then
		DebrisStorage["ESP_T"] = true
		DebrisStorage["ESP_T_Storage"] = {}
		
		for i,v in pairs(Teachers:GetChildren()) do
			esp(v)
		end

		DebrisStorage["ESP_T_Connection"] = Teachers.ChildAdded:Connect(function(child)
			esp(child)
		end)
	else
		DebrisStorage["ESP_T"] = false
		DebrisStorage["ESP_T_Connection"]:Disconnect()
		for i,v in pairs(DebrisStorage["ESP_T_Storage"]) do
			v:Destroy()
		end
	end
end

local function ESP_Students(Value)
	local Type = "BoolValue"
	if Value == nil then
		return Type
	end

	local function esp(child)
		if child == Character then return end
		local hl = Instance.new("Highlight")
		hl.Parent = child
		hl.OutlineTransparency = 1
		hl.FillTransparency = 0.5
		hl.FillColor = Color3.fromRGB(0, 153, 255)
		table.insert(DebrisStorage["ESP_S_Storage"],hl)
	end

	if Value then
		DebrisStorage["ESP_S"] = true
		DebrisStorage["ESP_S_Storage"] = {}

		for i,v in pairs(Students:GetChildren()) do
			esp(v)
		end

		DebrisStorage["ESP_S_Connection"] = Students.ChildAdded:Connect(function(child)
			esp(child)
		end)
	else
		DebrisStorage["ESP_S"] = false
		DebrisStorage["ESP_S_Connection"]:Disconnect()
		for i,v in pairs(DebrisStorage["ESP_S_Storage"]) do
			v:Destroy()
		end
	end
end

---------------------------------------------------------------------------------------------------------------------------------------------------------------------

local Categories = {
	["Main"] = {
		["WalkSpeed"] = function(value)
			return WalkSpeed(value)
		end;
		["RunSpeed"] = function(value)
			return RunSpeed(value)
		end;
		["InfStamina"] = function(value)
			return InfStamina(value)
		end;
		["Running"] = function(value)
			return AlwaysRunning(value)
		end;
	};
	["ESP"] = {
		["ESP Teachers"] = function(value)
			return ESP_Teachers(value)
		end;
		["ESP Students"] = function(value)
			return ESP_Teachers(value)
		end;
	};
}

local ZIndex = 100
local OpenedCategory = nil

for i,v in pairs(Categories) do
	ZIndex -= 1

	local Cat_Button = Instance.new("TextButton")
	Cat_Button.Parent = CategoriesList
	Cat_Button.Name = i
	Cat_Button.AnchorPoint = Vector2.new(0, 0)
	Cat_Button.Size = UDim2.new(0, 146, 0, 24)
	Cat_Button.BackgroundTransparency = 1
	Cat_Button.ZIndex = ZIndex
	Cat_Button.BorderSizePixel = 0
	Cat_Button.RichText = true
	Cat_Button.Text = `<b>{i}</b>`
	Cat_Button.TextSize = 18
	Cat_Button.TextColor3 = Color3.fromRGB(118, 118, 118)
	Cat_Button.Font = Enum.Font.RobotoCondensed
	
	local ScrollList = Instance.new("ScrollingFrame")
	ScrollList.Parent = Main
	ScrollList.Name = "ScrollList_"..i
	ScrollList.AnchorPoint = Vector2.new(0, 0)
	ScrollList.Size = UDim2.new(0, 405,0, 275)
	ScrollList.Position = UDim2.new(0.277, 0, 0.132, 0)
	ScrollList.BackgroundTransparency = 1
	ScrollList.ZIndex = 1
	ScrollList.BorderSizePixel = 0
	ScrollList.ClipsDescendants = false
	ScrollList.ScrollBarImageTransparency = 1
	ScrollList.Visible = false
	
	local UIListLayout = Instance.new("UIListLayout")
	UIListLayout.Parent = ScrollList
	UIListLayout.Name = "UIListLayout"
	UIListLayout.Padding = UDim.new(0, 10)
	UIListLayout.FillDirection = Enum.FillDirection.Vertical
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Top
	
	local ZIndex2 = 100
	
	for name,func in pairs(v) do
		ZIndex2 -= 1
		local funcButton = Instance.new("TextLabel")
		funcButton.Parent = ScrollList
		funcButton.Name = name
		funcButton.AnchorPoint = Vector2.new(0, 0)
		funcButton.Size = UDim2.new(0, 405,0, 31)
		funcButton.BackgroundColor3 = Color3.fromRGB(47,47,47)
		funcButton.ZIndex = ZIndex2
		funcButton.BorderSizePixel = 0
		funcButton.RichText = true
		funcButton.ClipsDescendants = true
		funcButton.Text = ""
		AddCorner(funcButton,8)
		
		AddStroke(funcButton,Color3.fromRGB(81, 81, 81),2)
		
		local funcText = Instance.new("TextLabel")
		funcText.Parent = funcButton
		funcText.Name = "funcText"
		funcText.AnchorPoint = Vector2.new(0, 0)
		funcText.Size = UDim2.new(0, 397,0, 31)
		funcText.Position = UDim2.new(0.02, 0,0, 0)
		funcText.BackgroundTransparency = 1
		funcText.BorderSizePixel = 0
		funcText.RichText = true
		funcText.ZIndex = 150
		funcText.Text = `<b>{name}</b>`
		funcText.TextColor3 = Color3.fromRGB(255, 255, 255)
		funcText.Font = Enum.Font.RobotoCondensed
		funcText.TextSize = 18
		funcText.TextXAlignment = Enum.TextXAlignment.Left
		
		if func() == "BoolValue" then
			local BoolValue = Instance.new("TextButton")
			BoolValue.Parent = funcButton
			BoolValue.Name = "BoolValue"
			BoolValue.AnchorPoint = Vector2.new(0, 0)
			BoolValue.Size = UDim2.new(0, 20,0, 20)
			BoolValue.Position = UDim2.new(0.932, 0,0.161, 0)
			BoolValue.BorderSizePixel = 0
			BoolValue.RichText = true
			BoolValue.ZIndex = 150
			BoolValue.Text = ``
			BoolValue.Visible = true
			BoolValue.Font = Enum.Font.RobotoCondensed
			BoolValue.TextColor3 = Color3.fromRGB(255, 255, 255)
			BoolValue.BackgroundColor3 = Color3.fromRGB(68, 68, 68)
			BoolValue.TextScaled = true
			AddCorner(BoolValue,4)
			AddStroke(BoolValue,Color3.fromRGB(81, 81, 81),2)
			
			local BV_Value = false

			BoolValue.Activated:Connect(function()
				if not BV_Value then
					BoolValue.BackgroundColor3 = Color3.fromRGB(163, 255, 149)
					BoolValue.TextColor3 = Color3.fromRGB(34, 149, 8)
					BV_Value = true
					func(true)
				else
					BoolValue.BackgroundColor3 = Color3.fromRGB(68, 68, 68)
					BoolValue.TextColor3 = Color3.fromRGB(255, 255, 255)
					BV_Value = false
					func(false)
				end
			end)
		elseif func() == "NumberValue" then
			local NumberValue = Instance.new("TextBox")
			NumberValue.Parent = funcButton
			NumberValue.Name = "NumberValue"
			NumberValue.AnchorPoint = Vector2.new(0, 0)
			NumberValue.Size = UDim2.new(0, 46,0, 20)
			NumberValue.Position = UDim2.new(0.867, 0,0.194, 0)
			NumberValue.BorderSizePixel = 0
			NumberValue.RichText = true
			NumberValue.ZIndex = 150
			NumberValue.Text = ""
			NumberValue.TextScaled = true
			NumberValue.Font = Enum.Font.RobotoCondensed
			NumberValue.Visible = true
			NumberValue.TextColor3 = Color3.fromRGB(255, 255, 255)
			NumberValue.BackgroundColor3 = Color3.fromRGB(68, 68, 68)
			NumberValue.PlaceholderText = `16`
			AddCorner(NumberValue,4)
			AddStroke(NumberValue,Color3.fromRGB(81, 81, 81),2)
			
			NumberValue.FocusLost:Connect(function()
				func(NumberValue.Text)
			end)
		end
		
		
		
		
		
		
		
		
		--[[local NumberValue = Instance.new("TextBox")
		NumberValue.Parent = funcButton
		NumberValue.Name = "NumberValue"
		NumberValue.AnchorPoint = Vector2.new(0, 0)
		NumberValue.Size = UDim2.new(0, 20,0, 20)
		NumberValue.Position = UDim2.new(0.932, 0,0.161, 0)
		NumberValue.BorderSizePixel = 0
		NumberValue.RichText = true
		NumberValue.ZIndex = 150
		NumberValue.Text = ""
		NumberValue.TextColor3 = Color3.fromRGB(57, 57, 57)]]
	end
	
	Cat_Button.Activated:Connect(function()
		Cat_Button.TextColor3 = Color3.fromRGB(255,255,255)
		OpenedCategory = i
		ScrollList.Visible = true
		UIListLayout.Padding = UDim.new(0,100)
		TweenService:Create(UIListLayout,TweenInfo.new(0.25,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out),{Padding = UDim.new(0,10)}):Play()
		for _,bruh in pairs(ScrollList:GetChildren()) do
			if bruh:IsA("TextLabel") then
				bruh.Size = UDim2.new(0,0,0,31)
			end
		end
		for _,bruh in pairs(ScrollList:GetChildren()) do
			if bruh:IsA("TextLabel") then
				TweenService:Create(bruh,TweenInfo.new(0.25,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out),{Size = UDim2.new(0, 405,0, 31)}):Play()
				task.wait(0.1)
			end
		end
		task.spawn(function()
			repeat
				task.wait(0.01)
			until OpenedCategory ~= i
			ScrollList.Visible = false
			Cat_Button.TextColor3 = Color3.fromRGB(118,118,118)
		end)
	end)
end