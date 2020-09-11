ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



RegisterServerEvent('robomeksu:rahatarkistus')

AddEventHandler('robomeksu:rahatarkistus', function(price)

	local _source = source

	local xPlayer = ESX.GetPlayerFromId(_source)

	local price = 500

	if xPlayer.getMoney() >= price then

	TriggerClientEvent('robomeksu:onnistunut', source)

	xPlayer.removeMoney(price)
	
else

	TriggerClientEvent('robomeksu:eirahaa', source)

	end

end)
