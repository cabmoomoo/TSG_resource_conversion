\return \(fn (mod)

(set mod.resource_conversion_rooms_setup (fn ( rules)

    (mod_set_file_alias "station.tmx" (mod_rel_path mod "tilemaps/resource_conversion_station.tmx"))
    (mod_set_file_alias "station.png" (mod_rel_path mod "tilemaps/resource_conversion_station.png"))
    (mod_set_file_alias "station-color.png" (mod_rel_path mod "tilemaps/resource_conversion_station-color.png"))

    (core_station_set_room rules 49
        ROOM_CATEGORY_GREEN
        (_L "room_49" "Utilitarian Simplicity")
        2
        30
        (core_station_props_walls_auto_evens 3 15)
		true)

))

)