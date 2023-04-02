exports['qb-target']:AddBoxZone('SetMBA', vec3(-281.21, -1935.45, 30.2), 0.3, 0.5, {
	name = 'SetMBA', heading = 61.71, minZ = 30.2-0.3, maxZ = 30.2+0.3,	debugPoly = true, }, {
	options = { { type = "client", event = "xmmx-mbaEntity:OpenMenu", icon = "fas fa-film", label = "Change Scene", --[[job = "bahama"]] }, },
    distance = 2.0,
})

RegisterNetEvent("xmmx-mbaEntity:OpenMenu", function()
    exports['qb-menu']:openMenu({
        { header = "Change Maze Bank Arena Theme", txt = "(ESC to Close)", isMenuHeader = true, },
		{ header = "BASKETBALL", txt = "Change to Basketball Arena", params = { type = 'client', event = 'xmmx-mbaEntity:setEntity', args = { entity = "BASKETBALL", }, }, },
        { header = "BOXING", txt = "Change to Boxing Arena", params = { type = 'client', event = 'xmmx-mbaEntity:setEntity', args = { entity = "BOXING", }, }, }, 
        { header = "CONCERT", txt = "Change to Concert Arena", params = { type = 'client', event = 'xmmx-mbaEntity:setEntity', args = { entity = "CONCERT", }, }, },
        { header = "DERBY", txt = "Change to Derby Arena", params = { type = 'client', event = 'xmmx-mbaEntity:setEntity', args = { entity = "DERBY", }, }, },
        { header = "FAME or SHAME", txt = "Change to Fame or Shame Arena", params = { type = 'client', event = 'xmmx-mbaEntity:setEntity', args = { entity = "FAMEorSHAME", }, }, },
        { header = "FASHION", txt = "Change to Fashion Arena", params = { type = 'client', event = 'xmmx-mbaEntity:setEntity', args = { entity = "FASHION", }, }, },
        { header = "MMA", txt = "Change to MMA Arena", params = { type = 'client', event = 'xmmx-mbaEntity:setEntity', args = { entity = "MMA", }, }, },
        { header = "PAINTBALL", txt = "Change to Paintball Arena", params = { type = 'client', event = 'xmmx-mbaEntity:setEntity', args = { entity = "PAINTBALL", }, }, },
        { header = "WRESTLING", txt = "Change to Wrestling Arena", params = { type = 'client', event = 'xmmx-mbaEntity:setEntity', args = { entity = "WRESTLING", }, }, },
        { header = "CURLING", txt = "Change to Curling Arena", params = { type = 'client', event = 'xmmx-mbaEntity:setEntity', args = { entity = "CURLING", }, }, },
        { header = "FOOTBALL", txt = "Change to Football Arena", params = { type = 'client', event = 'xmmx-mbaEntity:setEntity', args = { entity = "FOOTBALL", }, }, },
        { header = "ICE HOCKEY", txt = "Change to Ice Hockey Arena", params = { type = 'client', event = 'xmmx-mbaEntity:setEntity', args = { entity = "ICEHOCKEY", }, }, },
        { header = "GO KART A", txt = "Change to Go Kart A Arena", params = { type = 'client', event = 'xmmx-mbaEntity:setEntity', args = { entity = "GOKARTA", }, }, },
        { header = "GO KART B", txt = "Change to Go Kart B Arena", params = { type = 'client', event = 'xmmx-mbaEntity:setEntity', args = { entity = "GOKARTB", }, }, },
        { header = "TRACK MANIA A", txt = "Change to Track Mania A Arena", params = { type = 'client', event = 'xmmx-mbaEntity:setEntity', args = { entity = "TRACKMANIAA", }, }, },
        { header = "TRACK MANIA B", txt = "Change to Track Mania B Arena", params = { type = 'client', event = 'xmmx-mbaEntity:setEntity', args = { entity = "TRACKMANIAB", }, }, },
        { header = "TRACK MANIA C", txt = "Change to Track Mania C Arena", params = { type = 'client', event = 'xmmx-mbaEntity:setEntity', args = { entity = "TRACKMANIAC", }, }, },
        { header = "TRACK MANIA D", txt = "Change to Track Mania D Arena", params = { type = 'client', event = 'xmmx-mbaEntity:setEntity', args = { entity = "TRACKMANIAD", }, }, },
        { header = "ROCKET LEAGUE", txt = "Change to Rocket League Arena", params = { type = 'client', event = 'xmmx-mbaEntity:setEntity', args = { entity = "ROCKETLEAGUE", }, }, },
        { header = "EMPTY", txt = "Change to Empty Arena", params = { type = 'client', event = 'xmmx-mbaEntity:setEntity', args = { entity = "EMPTY", }, }, },
    })
end)

RegisterNetEvent('xmmx-mbaEntity:setEntity')
AddEventHandler('xmmx-mbaEntity:setEntity', function(data)
	TriggerServerEvent('xmmx-mbaEntity:switchInterior', data.entity)
end)

RegisterNetEvent('xmmx-mbaEntity:switchToEntity')
AddEventHandler('xmmx-mbaEntity:switchToEntity', function(entity)
    local interiorId = GetInteriorAtCoords(-328.67, -1974.51, 23.2)
    if interiorId ~= 0 then
        local removeEntities = entitySet["RESET"]
        local addEntities = entitySet[entity]
        for i = 1, #removeEntities do DeactivateInteriorEntitySet(interiorId, removeEntities[i]) end
        Citizen.Wait(100)
        for i = 1, #addEntities do ActivateInteriorEntitySet(interiorId, addEntities[i]) end
        RefreshInterior(interiorId)
        SetInteriorActive(interiorId, true)
    end
end)