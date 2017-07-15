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
    TriggerClientEvent('chatMessage', source, 'Police ', { 13, 89, 146 }, 'Cone Placed!')
	elseif sm[1] == "/911" then
	CancelEvent()
	TriggerClientEvent('chatMessage', -1, "911 | " .. name, { 13, 89, 146 }, string.sub(msg,5))
	elseif sm[1] == "/tow" then
	CancelEvent()
	TriggerClientEvent('chatMessage', -1, "Tow | " .. name, { 160, 165, 13 }, string.sub(msg,5))
	elseif sm[1] == "/twt" then
	CancelEvent()
	TriggerClientEvent('chatMessage', -1, "Twitter | " .. name, { 0, 255, 255 }, string.sub(msg,5))
	elseif sm[1] == "/onduty" then
	TriggerClientEvent("yt:policeLoadout", source)
    CancelEvent()
    TriggerClientEvent('chatMessage', source, 'Police Loadout', { 13, 89, 146 }, 'Loadout Given!')
	elseif sm[1] == "/dis" then
    CancelEvent()
    TriggerClientEvent('chatMessage', -1, "Police Dispatch | " .. name, { 13, 89, 146 }, string.sub(msg,5))
    end
end)


function stringsplit(self, delimiter)
	local a = self:Split(delimiter)
	local t = {}
	
	for i = 0, #a - 1 do
		table.insert(t, a[i])
	end
	
	return t
end
