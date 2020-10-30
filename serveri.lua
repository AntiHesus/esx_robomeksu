ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



RegisterServerEvent('robomeksu:rahatarkistus')

AddEventHandler('robomeksu:rahatarkistus', function()

	local _source = source

	local xPlayer = ESX.GetPlayerFromId(_source)

	local rahaa = xPlayer.getMoney()

	local price = 500


	if rahaa >= price then

	xPlayer.removeMoney(price)

	TriggerClientEvent('robomeksu:onnistunut', source, price)
	
else

	moneyleft = price - rahaa

	TriggerClientEvent('robomeksu:eirahaa', source, moneyleft)

	end

end)
