-- =============================================
-- Script Written By Kvetz(NoamKvet) & Titch2000
-- =============================================

AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/ooc" then
	CancelEvent()
	TriggerClientEvent('chatMessage', -1, "OOC | " .. name, { 196, 255, 0 }, string.sub(msg,5))
	elseif sm[1] == "/pts" then
    CancelEvent()
   	TriggerClientEvent("yt:PlaceCone", source)
    TriggerClientEvent('chatMessage', source, 'Service ', { 196, 255, 0 }, 'Cone Placed!')
	elseif sm[1] == "/911" then
	CancelEvent()
	TriggerClientEvent('chatMessage', -1, "911 | " .. name, { 13, 89, 146 }, string.sub(msg,5))
	elseif sm[1] == "/tow" then
	CancelEvent()
	TriggerClientEvent('chatMessage', -1, "Tow | " .. name, { 160, 165, 13 }, string.sub(msg,5))
	elseif sm[1] == "/twt" then
	CancelEvent()
	TriggerClientEvent('chatMessage', -1, "Twitter | " .. name, { 0, 255, 255 }, string.sub(msg,5))
	elseif sm[1] == "/cop" then
	TriggerClientEvent("yt:cop", source)
    CancelEvent()
    TriggerClientEvent('chatMessage', source, 'Police ', { 13, 89, 146 }, 'You are on duty, your loadout has been given!')
	elseif sm[1] == "/dis" then
    CancelEvent()
    TriggerClientEvent('chatMessage', -1, "Police Dispatch | " .. name, { 13, 89, 146 }, string.sub(msg,5))
	elseif sm[1] == "/me" then
    CancelEvent()
    TriggerClientEvent('chatMessage', -1, "Me | " .. name, { 135, 11, 48 }, string.sub(msg,5))
	elseif sm[1] == "/help" then
    CancelEvent()
    TriggerClientEvent('chatMessage', source, 'Server', { 13, 89, 146 }, '/ooc for out of character, /911 to call the emergency services, /tow to call a tow trucker, /twt to tweet tomething, /me to explain an action')
	elseif sm[1] == "/anc" then
    CancelEvent()
	TriggerClientEvent('chatMessage', -1, "Announce | " .. name, { 246, 223, 14 }, string.sub(msg,5))
	elseif sm[1] == "/ubr" then
    CancelEvent()
	TriggerClientEvent('chatMessage', -1, "Uber | " .. name, { 14, 161, 246 }, string.sub(msg,5))
	elseif sm[1] == "/civilian" then
	TriggerClientEvent("yt:civilian", source)
    CancelEvent()
    TriggerClientEvent('chatMessage', source, 'City', { 160, 165, 13 }, 'You are a citizen! go rob some places!')
	elseif sm[1] == "/medic" then
	TriggerClientEvent("yt:medic", source)
    CancelEvent()
    TriggerClientEvent('chatMessage', source, 'Clinic', { 255, 0, 0 }, 'You are a medic!! go save some pepole!')
	elseif sm[1] == "/firefighter" then
	TriggerClientEvent("yt:firefighter", source)
    CancelEvent()
    TriggerClientEvent('chatMessage', source, 'Firestation', { 246, 223, 14 }, 'You are a firefighter! go save some pepole!')
	
    end
end)


function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end