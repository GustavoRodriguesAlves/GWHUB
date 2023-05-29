local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/cerberus.lua"))()
local window = Library.new("Cerberus")


--Values
_G.speed = true


--Functions
function speed()
	if _G.speed == true then
	local player = game.Players.LocalPlayer
	local character = player.Character
	local humanoid = character:WaitForChild("Humanoid")

	humanoid.WalkSpeed = humanoid.WalkSpeed * 20
 end
end

--Tabs
local principalTab = window:Tab("Principal")


--Sections
local cerberusSection = principalTab:Section("Cerberus")

local hadesSection = principalTab:Section("Hades")

local demonSection = principalTab:Section("Demon")

local rageSection = principalTab:Section("Rage")

--Toggles
local cerberusToggle = cerberusSection:Toggle("Aimbot", function()
	print("Seção Cerberus")
end)

local hadesToggle = hadesSection:Toggle("Fov", function()
	print("Seção Hades")
end)

local demonToggle = demonSection:Toggle("Esp", function()
	print("Seção Demon")
end)

local rageToggle = rageSection:Toggle("Speed", function(Value)
	_G.speed = Value
	speed()
end)


