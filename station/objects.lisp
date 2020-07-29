\return \(fn (mod)

--;; Literally every object defined here is a placeholder. If nothing else, all of them make use of unmodified Core
--;; sprites, which is the exact opposite of ideal.

(set mod.resource_conversion_objects_setup (fn (rules)

	(set core_system_object_group_models (append-list
		core_system_object_group_models
		(list {
		    .group "biology"
            .name (_L "obj_group_biology" "Biology")
            .icon "ui_icon_30px_biology.png" })
	))
	
    (register_model_object station_objects "biological_workshop" false { 
        .v2 true
        .makers (list make_model_object make_station_object core_station_make_factory)
        .cursor_makers (list make_model_object make_station_object finalize_model_object_cursor)
        .aesthetical -10
        .noise 10
        .name (_L "biological_workshop" "Biological Workshop")
        .description (_L "biological_workshop_desc" "Culture, harvest, and refine various biological materials")
        .recipe_ids (list 
            "make-conversion-oils"
			"make-conversion-microbiota"
            "make-conversion-algae"
            "make-conversion-spores"
			"make-fertilizer"
            )
        .floor 18
        .group "biology"
        .flips 9
        .sheet_plist_alias "station-v2.plist" .sheet_image_alias "station-v2.png"
        .menu_order 1
        .is_decor false
        .ownable true
        .idle (list "station-v2/chemicalworkshop_right_off.png" "station-v2/chemicalworkshop_right_off.png" "station-v2/chemicalworkshop_top_off.png" "station-v2/chemicalworkshop_top_off.png")
        .action (list "station-v2/chemicalworkshop_right_on.png" "station-v2/chemicalworkshop_right_on.png" "station-v2/chemicalworkshop_top_on.png" "station-v2/chemicalworkshop_top_on.png")
        .building_cost 450
     })
	 
    (register_model_object station_objects "electrolyzer" false { 
        .v2 true
        .makers (list make_model_object make_station_object core_station_make_factory)
        .cursor_makers (list make_model_object make_station_object finalize_model_object_cursor)
        .aesthetical -10
        .noise 10
        .name (_L "electrolyzer" "Electrolyzer")
        .description (_L "electrolyzer_desc" "Electrolysis device used to break water into hydrogen and oxygen")
        .recipe_ids (list 
            "make-electrolysis-water"
            )
        .floor 18
        .group "biology"
        .flips 9
        .sheet_plist_alias "electrolyzerSprites.plist" .sheet_image_alias "electrolyzerSprites.png"
        .menu_order 2
        .is_decor false
        .duration 2
        .ownable true
        .idle (list "electrolyzer_right_off.png" "electrolyzer_right_off.png" "electrolyzer_top_off.png" "electrolyzer_top_off.png")
        .action (list 
			(list "electrolyzer_right_on_00.png" "electrolyzer_right_on_left01.png" "electrolyzer_right_on_left02.png" "electrolyzer_right_on_left03.png" "electrolyzer_right_on_left04.png" "electrolyzer_right_on_left05.png" "electrolyzer_right_on_left04.png" "electrolyzer_right_on_left03.png" "electrolyzer_right_on_left02.png" "electrolyzer_right_on_left01.png" "electrolyzer_right_on_00.png" "electrolyzer_right_on_right01.png" "electrolyzer_right_on_right02.png" "electrolyzer_right_on_right03.png" "electrolyzer_right_on_right04.png" "electrolyzer_right_on_right05.png" "electrolyzer_right_on_right04.png" "electrolyzer_right_on_right03.png" "electrolyzer_right_on_right02.png" "electrolyzer_right_on_right01.png")
			(list "electrolyzer_right_on_00.png" "electrolyzer_right_on_left01.png" "electrolyzer_right_on_left02.png" "electrolyzer_right_on_left03.png" "electrolyzer_right_on_left04.png" "electrolyzer_right_on_left05.png" "electrolyzer_right_on_left04.png" "electrolyzer_right_on_left03.png" "electrolyzer_right_on_left02.png" "electrolyzer_right_on_left01.png" "electrolyzer_right_on_00.png" "electrolyzer_right_on_right01.png" "electrolyzer_right_on_right02.png" "electrolyzer_right_on_right03.png" "electrolyzer_right_on_right04.png" "electrolyzer_right_on_right05.png" "electrolyzer_right_on_right04.png" "electrolyzer_right_on_right03.png" "electrolyzer_right_on_right02.png" "electrolyzer_right_on_right01.png")
			(list "electrolyzer_top_on_00.png" "electrolyzer_top_on_left01.png" "electrolyzer_top_on_left02.png" "electrolyzer_top_on_left03.png" "electrolyzer_top_on_left04.png" "electrolyzer_top_on_left05.png" "electrolyzer_top_on_left04.png" "electrolyzer_top_on_left03.png" "electrolyzer_top_on_left02.png" "electrolyzer_top_on_left01.png" "electrolyzer_top_on_00.png" "electrolyzer_top_on_right01.png" "electrolyzer_top_on_right02.png" "electrolyzer_top_on_right03.png" "electrolyzer_top_on_right04.png" "electrolyzer_top_on_right05.png" "electrolyzer_top_on_right04.png" "electrolyzer_top_on_right03.png" "electrolyzer_top_on_right02.png" "electrolyzer_top_on_right01.png")
			(list "electrolyzer_top_on_00.png" "electrolyzer_top_on_left01.png" "electrolyzer_top_on_left02.png" "electrolyzer_top_on_left03.png" "electrolyzer_top_on_left04.png" "electrolyzer_top_on_left05.png" "electrolyzer_top_on_left04.png" "electrolyzer_top_on_left03.png" "electrolyzer_top_on_left02.png" "electrolyzer_top_on_left01.png" "electrolyzer_top_on_00.png" "electrolyzer_top_on_right01.png" "electrolyzer_top_on_right02.png" "electrolyzer_top_on_right03.png" "electrolyzer_top_on_right04.png" "electrolyzer_top_on_right05.png" "electrolyzer_top_on_right04.png" "electrolyzer_top_on_right03.png" "electrolyzer_top_on_right02.png" "electrolyzer_top_on_right01.png")
		)
        .building_cost 450
     })
	 
    (register_model_object station_objects "animal_farm" false { 
        .v2 true
        .makers (list make_model_object make_station_object core_station_make_factory)
        .cursor_makers (list make_model_object make_station_object finalize_model_object_cursor)
        .aesthetical -10
        .noise 10
        .name (_L "animal_farm" "Animal Farm")
        .description (_L "animal_farm_desc" "Sub-surface farm containing various non-hostile, imported livestock.")
        .recipe_ids (list 
            "grow-meat"
            )
        .floor 18
        .group "biology"
        .flips 9
        .sheet_plist_alias "station-v2.plist" .sheet_image_alias "station-v2.png"
        .menu_order 3
        .is_decor false
        .ownable true
        .idle (list "station-v2/holotraining_right_off.png" "station-v2/holotraining_right_off.png" "station-v2/holotraining_top_off.png" "station-v2/holotraining_top_off.png")
        .action (list "station-v2/holotraining_right_on.png" "station-v2/holotraining_right_on.png" "station-v2/holotraining_top_on.png" "station-v2/holotraining_top_on.png")
        .building_cost 450
     })
	 
    (register_model_object station_objects "fruit_farm" false { 
        .v2 true
        .makers (list make_model_object make_station_object core_station_make_factory)
        .cursor_makers (list make_model_object make_station_object finalize_model_object_cursor)
        .aesthetical -10
        .noise 10
        .name (_L "fruit_farm" "Fruit Farm")
        .description (_L "fruit_farm_desc" "Hydroponic farm containing various fruit-bearing flora.")
        .recipe_ids (list 
            "grow-fruits"
            )
        .floor 18
        .group "biology"
        .flips 0
        .sheet_plist_alias "hyrdoponicsSprites.plist" .sheet_image_alias "hyrdoponicsSprites.png"
        .menu_order 4
        .is_decor false
        .ownable true
        .idle (list "hydroponics_left_off.png" "hydroponics_top_off.png" "hydroponics_right_off.png" "hydroponics_down_off.png")
        .action (list "hydroponics_left_on.png" "hydroponics_top_on.png" "hydroponics_right_on.png" "hydroponics_down_on.png")
        .building_cost 450
     })

))

)