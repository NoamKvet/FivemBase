-- [[-----------------------------------------------------------------------

	-- ActionMenu By WolfKnight & Darklandz
	-- Script By Kvetz
	-- Thanks Titch For The Help!

-- ---------------------------------------------------------------------]]--

local menuEnabled = false 


function ToggleActionMenu()
	menuEnabled = not menuEnabled
	if ( menuEnabled ) then 
		SetNuiFocus( true, true ) 
		SendNUIMessage({
			showmenu = true 
		})
	else 
		SetNuiFocus( false )
		SendNUIMessage({
			hidemenu = true 
		})
	end 
end 


function chatPrint( msg )
	TriggerEvent( 'chatMessage', "Loadout", { 255, 255, 255 }, msg )
end 


-- NUI Callback Methods

RegisterNUICallback('close', function(data, cb)  
  ToggleActionMenu()
  cb('ok')
end)

-- NUI Civilian Callback

RegisterNUICallback('civLoad', function(data, cb) 
  	chatPrint( "You are a civilian! go rob some places!" )
	TriggerEvent("yt:civilian", source)
  	ToggleActionMenu()
  	cb('ok')
end)

-- NUI Medic Callback

RegisterNUICallback('medLoad', function(data, cb)
  chatPrint( "You are a medic!! go save some pepole!" )
  TriggerEvent("yt:medic", source)
  ToggleActionMenu()
  cb('ok')
end)

-- NUI Police Callback

RegisterNUICallback('polLoad', function(data, cb)
  	chatPrint( "You are a cop! go arrest some pepole!" )
	TriggerEvent("yt:cop", source)
  	ToggleActionMenu()
  	cb('ok')
end)

-- NUI Firefighter Callback

RegisterNUICallback('fireLoad', function(data, cb)
  	chatPrint( "You are a firefighter! go save some pepole!" )
	TriggerEvent("yt:firefighter", source)
  	ToggleActionMenu()
  	cb('ok')
end)


