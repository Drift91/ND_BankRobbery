# EnackBankRobbery
Modify the server.lua to update the costs of payouts.

``RegisterServerEvent("GiveRewardBank", function()
	local player = source
	NDCore.Functions.AddMoney(20000, player, "cash")
end)``