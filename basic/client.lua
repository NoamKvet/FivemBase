-- [[-----------------------------------------------------------------------

	-- ActionMenu By WolfKnight
	-- Script By Kvetz
	-- Thanks Titch For The Help!

-- ---------------------------------------------------------------------]]--

local cop = {
	{['i'] = 1, ['weapon'] = "WEAPON_TEARGAS"},
	{['i'] = 2, ['weapon'] = "WEAPON_COMBATPISTOL"},
	{['i'] = 3, ['weapon'] = "WEAPON_STUNGUN"},
	{['i'] = 4, ['weapon'] = "WEAPON_PUMPSHOTGUN"},
	{['i'] = 5, ['weapon'] = "WEAPON_CARBINERIFLE"},
	{['i'] = 6, ['weapon'] = "WEAPON_NIGHTSTICK"},
	{['i'] = 6, ['weapon'] = "WEAPON_FLASHLIGHT"},
}

RegisterNetEvent("yt:cop")
AddEventHandler("yt:cop", function()
 RemoveAllPedWeapons(GetPlayerPed(-1))
 local model = GetHashKey("s_m_y_cop_01")
    RequestModel(model)
    while not HasModelLoaded(model) do
        RequestModel(model)
        Citizen.Wait(0)
    end
    SetPlayerModel(PlayerId(), model)
    SetModelAsNoLongerNeeded(model)


local playerPed = GetPlayerPed(-1)
	for k,v in ipairs(cop) do
		Citizen.Trace("Weapon: "..v.i.." "..v.weapon.." Given to ".. playerPed)
	    GiveWeaponToPed(playerPed, GetHashKey(v.weapon), 9999, true, true)
	end
end)


-- ----------------------------------------------


RegisterNetEvent("yt:medic")
AddEventHandler("yt:medic", function()
 RemoveAllPedWeapons(GetPlayerPed(-1))
 local model = GetHashKey("S_M_M_Paramedic_01")
    RequestModel(model)
    while not HasModelLoaded(model) do
        RequestModel(model)
        Citizen.Wait(0)
    end
    SetPlayerModel(PlayerId(), model)
    SetModelAsNoLongerNeeded(model)
end)


-- ----------------------------------------------


local fire = {
	{['i'] = 1, ['weapon'] = "WEAPON_FLAREGUN"},
	{['i'] = 2, ['weapon'] = "WEAPON_FIREEXTINGUISHER"},
	{['i'] = 3, ['weapon'] = "WEAPON_CROWBAR"},

}

RegisterNetEvent("yt:firefighter")
AddEventHandler("yt:firefighter", function()
 RemoveAllPedWeapons(GetPlayerPed(-1))
 local model = GetHashKey("S_M_Y_Fireman_01")
    RequestModel(model)
    while not HasModelLoaded(model) do
        RequestModel(model)
        Citizen.Wait(0)
    end
    SetPlayerModel(PlayerId(), model)
    SetModelAsNoLongerNeeded(model)


local playerPed = GetPlayerPed(-1)
	for k,v in ipairs(fire) do
		Citizen.Trace("Weapon: "..v.i.." "..v.weapon.." Given to ".. playerPed)
	    GiveWeaponToPed(playerPed, GetHashKey(v.weapon), 9999, true, true)
		
	end
end)



-- ----------------------------------------------

RegisterNetEvent("yt:civilian")
AddEventHandler("yt:civilian", function()
 RemoveAllPedWeapons(GetPlayerPed(-1))
 local model = GetHashKey("A_M_Y_methhead_01")
    RequestModel(model)
    while not HasModelLoaded(model) do
        RequestModel(model)
        Citizen.Wait(0)
    end
    SetPlayerModel(PlayerId(), model)
    SetModelAsNoLongerNeeded(model)
end)

-- ----------------------------------------------



RegisterNetEvent("yt:PlaceCone")
AddEventHandler("yt:PlaceCone", function()     
	x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
    local object = CreateObject("prop_mp_cone_01", x+1, y, z-2, true, true, true)    
    PlaceObjectOnGroundProperly(object) 
end)





