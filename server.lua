-------------------------
--- NDBankRobbery ---
-------------------------
NDCore = exports["ND_Core"]:GetCoreObject()

RegisterNetEvent("GiveRewardBank")
AddEventHandler("GiveRewardBank", function(player)
	local player = source
	NDCore.Functions.AddMoney(20000, player, "cash")
end)

RegisterNetEvent("GiveRewardAmmo")
AddEventHandler("GiveRewardAmmo", function(player)
	local player = source
	NDCore.Functions.AddMoney(500, player, "cash")
end)

RegisterNetEvent("GiveRewardLTD")
AddEventHandler("GiveRewardLTD", function(player)
	local player = source
	NDCore.Functions.AddMoney(5000, player, "cash")
end)

RegisterNetEvent("GiveReward247")
AddEventHandler("GiveReward247", function(player)
	local player = source
	NDCore.Functions.AddMoney(5000, player, "cash")
end)

RegisterNetEvent("GiveRewardLiq")
AddEventHandler("GiveRewardLiq", function(player)
	local player = source
	NDCore.Functions.AddMoney(5000, player, "cash")
end)


--- Server ---
robberyActive = false
RegisterNetEvent('NDBankRobbery:IsActive')
AddEventHandler('NDBankRobbery:IsActive', function()
	-- Check if active or not
	if robberyActive then
		-- One is active
		TriggerClientEvent('NDBankRobbery:IsActive:Return', source, true)
	else
		-- One is not active
		TriggerClientEvent('NDBankRobbery:IsActive:Return', source, false)
	end
end)

RegisterNetEvent('NDBankRobbery:SetActive')
AddEventHandler('NDBankRobbery:SetActive', function(bool)
	robberyActive = bool
	if bool then
		Wait((1000 * 60 * config.robberyCooldown)) -- Wait 15 minutes
		robberyActive = false
	end
end)

RegisterNetEvent('Print:PrintDebug')
AddEventHandler('Print:PrintDebug', function(msg)
	print(msg)
	TriggerClientEvent('chatMessage', -1, "^7[^1Badger's Scripts^7] ^1DEBUG ^7" .. msg)
end)
RegisterNetEvent('PrintBR:PrintMessage')
AddEventHandler('PrintBR:PrintMessage', function(msg)
	TriggerClientEvent('chatMessage', -1, msg)
end)