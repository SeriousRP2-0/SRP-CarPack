fx_version 'adamant'
game 'gta5'
client_script 'vehicle_names.lua'
name "Carpack"
description "Made BY Stevie & SeriousRP Dev"
version '0.0.1'

files {
    --allcars
    '**/vehiclelayouts.meta',
    '**/vehicles.meta',
    '**/carvariations.meta',
    '**/carcols.meta',
    '**/handling.meta',
    '**/clips_sets.xml'
}

--allcars
data_file 'HANDLING_FILE' '**/handling.meta'
data_file 'VEHICLE_LAYOUTS_FILE' '**/vehiclelayouts.meta'
data_file 'VEHICLE_METADATA_FILE' '**/vehicles.meta'
data_file 'CARCOLS_FILE' '**/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' '**/carvariations.meta'

server_script 'server.lua'
