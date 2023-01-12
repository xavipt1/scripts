local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Xavium V1", HidePremium = true, IntroEnabled = false, SaveConfig = true, ConfigFolder = "XaviumCF" })


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

local ESPTab = Window:MakeTab({
	Name = "Esp",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local ClientTab = Window:MakeTab({
	Name = "Client",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local CreditsTab = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--MainTab

local PlayerSec = MainTab:AddSection({
	Name = "Player"
})

PlayerSec:AddButton({
	Name = "InfJump",
	Callback = function()
    	print("InfJump")
        game:GetService("UserInputService").JumpRequest:connect(function()
                game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
        end)
	end    
})

PlayerSec:AddSlider({
	Name = "Speed Slider (defaut is 16)",
	Min = 1,
	Max = 60,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Studs",
	Callback = function(s)
		print(s)
	end    
})

PlayerSec:AddToggle({
	Name = "Toggle Speed",
	Default = false,
	Callback = function(ToggleSpeed)
		print(ToggleSpeed)
        if ToggleSpeed == true then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
        else
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        end
	end    
})

--Tooltab

ToolTab:AddButton({
    Name = "Simplespy",
    Callback = function()
                print("loaded Simplespy")
                loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()
        end    
})

ToolTab:AddButton({
    Name = "Dex",
    Callback = function()
                print("loaded Dex")
                loadstring(game:HttpGet("https://gist.githubusercontent.com/DinosaurXxX/b757fe011e7e600c0873f967fe427dc2/raw/ee5324771f017073fc30e640323ac2a9b3bfc550/dark%2520dex%2520v4"))()
        end    
})

--EspTab


--ClientTab

ClientTab:AddButton({
	Name = "Fps Boost",
	Callback = function()
      		print("Fps Boost activated")
			  local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
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
			  settings().Rendering.QualityLevel = "1"
			  for i,v in pairs(g:GetDescendants()) do
				  if v:IsA("Part") or v:IsA("Union") or v:IsA("MeshPart") then
					  v.Material = "Plastic"
			  v.Reflectance = 0
			  elseif v:IsA("Decal") and decalsyeeted then 
			  v.Transparency = 1
			  elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then 
			  v.Lifetime = NumberRange.new(0)
				  end
			  end
  	end    
})

local SkyboxSec = ClientTab:AddSection({
	Name = "Skybox"
})

SkyboxSec:AddButton({
	Name = "amongus skybox",
	Callback = function()
      		print("amongus skybox")
  	end    
})

--creditstab

CreditsTab:AddLabel("Hub made by xavipt1#5952, some scripts are made by others")



--Init

OrionLib:Init()
