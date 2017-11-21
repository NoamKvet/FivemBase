-- [[-----------------------------------------------------------------------

	-- ActionMenu By WolfKnight
	-- Script By Kvetz
	-- Thanks Titch For The Help!

-- ---------------------------------------------------------------------]]--


AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/ooc" then
	CancelEvent()
	TriggerClientEvent('chatMessage', -1, "OOC | " .. name, { 196, 255, 0 }, string.sub(msg,5))
	elseif sm[1] == "/911" then
	CancelEvent()
	TriggerClientEvent('chatMessage', -1, "911 | " .. name, { 13, 89, 146 }, string.sub(msg,5))
	elseif sm[1] == "/dis" then
        CancelEvent()
        TriggerClientEvent('chatMessage', -1, "Police Dispatch | " .. name, { 13, 89, 146 }, string.sub(msg,5))
	elseif sm[1] == "/tow" then
	CancelEvent()
	TriggerClientEvent('chatMessage', -1, "Tow | " .. name, { 160, 165, 13 }, string.sub(msg,5))
	elseif sm[1] == "/twt" then
	CancelEvent()
	TriggerClientEvent('chatMessage', -1, "Twitter | " .. name, { 0, 255, 255 }, string.sub(msg,5))
	elseif sm[1] == "/me" then
    CancelEvent()
    TriggerClientEvent('chatMessage', -1, "> " .. name, { 255, 196, 0 }, string.sub(msg,5))
	elseif sm[1] == "/do" then
    CancelEvent()
    TriggerClientEvent('chatMessage', -1, "< " .. name, { 210, 170, 90 }, string.sub(msg,5))
	elseif sm[1] == "/anc" then
    CancelEvent()
	TriggerClientEvent('chatMessage', -1, "Announce | " .. name, { 246, 223, 14 }, string.sub(msg,5))
	elseif sm[1] == "/ubr" then
    CancelEvent()
	TriggerClientEvent('chatMessage', -1, "Uber | " .. name, { 14, 161, 246 }, string.sub(msg,5))
	elseif sm[1] == "/loadout" then
    CancelEvent()
    TriggerClientEvent("ToggleActionmenu", source)
	TriggerClientEvent("DrawIbuttons", source)
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
