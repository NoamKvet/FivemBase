-- [[-----------------------------------------------------------------------

	-- ActionMenu By Darklandz
	-- Script By Kvetz
	-- Thanks Titch For The Help!

-- ---------------------------------------------------------------------]]--


resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

ui_page "nui/ui.html"

files {
	"nui/ui.html",
    "nui/background.png",
    "nui/player.png",
    "nui/cop.png",
    "nui/firefighter.png",
    "nui/medic.png",
    "nui/close-btn.png",
   	"nui/ui.js", 
	"nui/ui.css"
}

client_script 'cl_action.lua'
client_script 'client.lua'
server_script 'server.lua'