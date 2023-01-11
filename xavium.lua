local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Xavium V1", HidePremium = true, IntroEnabled = false, SaveConfig = true, ConfigFolder = "XaviumCF" })


--Values


--Functions


--Tabs

local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local ToolTab = Window:MakeTab({
    Name = "Tools",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local CreditsTab = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


--Sections

local PlayerSec = MainTab:AddSection({
	Name = "Player"
})


--Toggles

PlayerSec:AddToggle({
	Name = "SetSpeed",
	Default = false,
	Callback = function(Setspeed)
		print(Setspeed)
        if Setspeed == true then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = SpeedValue
        else
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 20
        end
	end    
})

PlayerSec:AddTextbox({
	Name = "SpeedVal",
	Default = "20",
	TextDisappear = false,
	Callback = function(SpeedValue)
		print(SpeedValue)
	end	  
})

--Buttons

PlayerSec:AddButton({
	Name = "InfJump",
	Callback = function()
    	print("InfJump")
        game:GetService("UserInputService").JumpRequest:connect(function()
                game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
        end)
	end    
})

ToolTab:AddButton({
    Name = "Simplespy",
    Callback = function()
                print("loaded Simplespy")
                loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()
        end    
})

--labels

CreditsTab:AddLabel("Hub made by xavipt1#5952, some scripts are made by others")

--Init

OrionLib:Init()
