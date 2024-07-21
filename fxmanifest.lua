fx_version 'cerulean'
game 'gta5'

name "nf-skin_migrate"
description "Migration Tool for nf-skin"
author "nafing"
version "1.0.0"

shared_scripts {
	'@ox_lib/init.lua',
	'shared/*.lua'
}

client_scripts {
	'client/*.lua'
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'server/*.lua'
}

lua54 'yes'
use_experimental_fxv2_oal 'yes'
