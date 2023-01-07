ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



RegisterServerEvent('smerfikcraft:zlomiarzzbier') 
AddEventHandler('smerfikcraft:zlomiarzzbier', function()
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local jabka = xPlayer.getInventoryItem('zlom').count
    if jabka < 40 then
    if xPlayer.job.name == 'zlom' then


        TriggerClientEvent('smerfik:zamrozcrft22', _source)


        TriggerClientEvent('zacznijtekst2', _source)

        TriggerClientEvent('smerfik:craftanimacja22', _source)
        TriggerClientEvent('smerfik:tekstjab2', _source)
        Citizen.Wait(1000)


       -- TriggerClientEvent('smerfik:craftanimacja22', _source)
        Citizen.Wait(1000)

       -- TriggerClientEvent('smerfik:craftanimacja22', _source)
        Citizen.Wait(1000)
--
      --  TriggerClientEvent('smerfik:craftanimacja22', _source)
        Citizen.Wait(1000)
      --  TriggerClientEvent('smerfik:craftanimacja22', _source)

        Citizen.Wait(1000)

       local ilosc = math.random(10,35)
        xPlayer.addInventoryItem('zlom', ilosc)
        TriggerClientEvent('smerfik:odmrozcrft22', _source)

        TriggerClientEvent('esx:showNotification', _source, 'Recogiste '.. ilosc .. ' de Chatarra')


else
    TriggerClientEvent('smerfik:stopcraftanimacja2', _source)
    TriggerClientEvent('esx:showNotification', _source, '~y~¡No eres un recolector de Chatarra!')
end 
else
    TriggerClientEvent('smerfik:zdejmijznaczek2', _source)
    TriggerClientEvent('esx:showNotification', _source, '~y~¡No tienes espacio para más chatarra!')   
end
end)


RegisterServerEvent('smerfik:pobierzjablka2') 
AddEventHandler('smerfik:pobierzjablka2', function()
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
        xPlayer.removeMoney(3000)

end)
RegisterServerEvent('smerfik:pobierzjablka22') 
AddEventHandler('smerfik:pobierzjablka22', function()
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
xPlayer.addMoney(3000)
        TriggerClientEvent('esx:deleteVehicle', source)

end)
RegisterServerEvent('smerfikcraft:skup2') 
AddEventHandler('smerfikcraft:skup2', function()
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local jabka = xPlayer.getInventoryItem('zlom').count
    if xPlayer.job.name == 'zlom' then
    if jabka >= 1 then 

        local cena = 20
        xPlayer.removeInventoryItem('zlom', ESX.Math.Round(jabka / 4))
        TriggerClientEvent('sprzedawanie:jablekanim2', _source)
        Citizen.Wait(3000)
        xPlayer.removeInventoryItem('zlom', ESX.Math.Round(jabka / 4))
        TriggerClientEvent('sprzedawanie:jablekanim2', _source)
        Citizen.Wait(3000)
        xPlayer.removeInventoryItem('zlom', ESX.Math.Round(jabka / 4))
        TriggerClientEvent('sprzedawanie:jablekanim2', _source)
        Citizen.Wait(3000)
        local jabka2 = xPlayer.getInventoryItem('zlom').count
        xPlayer.removeInventoryItem('zlom', jabka2)
        TriggerClientEvent('sprzedawanie:jablekanim2', _source)
        Citizen.Wait(3000)
        xPlayer.addMoney(jabka * cena)
        TriggerClientEvent('odlacz:propa', _source)
        TriggerClientEvent('esx:showHelpNotification', _source, 'Vendiste ~y~' .. ESX.Math.Round(jabka) ..' de ~w~Chatarra')
    else
        TriggerClientEvent('esx:showHelpNotification', _source, '~y~No tienes chatarra')
    end
else
    TriggerClientEvent('esx:showHelpNotification', source, '~y~¡No eres un recolector de chatarra!')
end 
end)
