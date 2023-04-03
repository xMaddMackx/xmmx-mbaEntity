fx_version "cerulean"
game "gta5"

lua54 "yes"

author "XMMX Development"
description "Gabz MBA EntitySet Changer"
version "1.0"

client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    'shared.lua',
    'client/*.lua'
}

server_scripts {
    'shared.lua',
    'server/*.lua'
}
