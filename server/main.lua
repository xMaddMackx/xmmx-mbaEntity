RegisterServerEvent('xmmx-mbaEntity:switchInterior')
AddEventHandler('xmmx-mbaEntity:switchInterior', function(entity)
    if entitySet[entity] then
        currentEntity = entity
        TriggerClientEvent('xmmx-mbaEntity:switchToEntity', -1, currentEntity)
		print('MBA Interior Changed to: '..currentEntity)
    else
        print('Invalid entity selected')
    end
end)