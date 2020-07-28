\return \(fn (mod)

(set mod.resource_conversion_texture_setup (fn ( rules)
\	mod_add_sprite_frames_rel(mod, "images/resourceSprites.plist", "images/resourceSprites.png")
\	mod_set_file_alias("resourceSprites.plist", mod_rel_path(mod, "images/resourceSprites.plist"))
\	mod_set_file_alias("resourceSprites.png", mod_rel_path(mod, "images/resourceSprites.png"))
\	mod_add_sprite_frames_rel(mod, "images/electrolyzerSprites.plist", "images/electrolyzerSprites.png")
\	mod_set_file_alias("electrolyzerSprites.plist", mod_rel_path(mod, "images/electrolyzerSprites.plist"))
\	mod_set_file_alias("electrolyzerSprites.png", mod_rel_path(mod, "images/electrolyzerSprites.png"))
))

(set mod.resource_conversion_resources_setup (fn (rules)
	
	--;; Basically just use the dev's work for shortcuts and whatnot. I see no reason not too,
	--;; and it works pretty well. When I don't forget the first "r" in fertilizer. That took
	--;; too long to debug.
	
    (local cr (fn (kwargs)
        (when (== nil kwargs) (set kwargs {}))

        (create_resource {
            .id kwargs.id
            .name kwargs.name .icons (list
                (.. "ui_icon_15px_" kwargs.icon_base)
                (.. "ui_icon_20px_" kwargs.icon_base)
                (.. "ui_icon_30px_" kwargs.icon_base)
                (.. "ui_icon_40px_" kwargs.icon_base)
            )
            .max_stack kwargs.max_stack
            .kinds kwargs.kinds
            .is_raw kwargs.is_raw
        })
    ))
	
	(local boi --;; Because it can be literally anything and boi is the funniest, non-offensive thing I could think of.
	(list 
		(cr { .id "Hydrogen" .name (_L "hydrogen" "Hydrogen") .icon_base "Hydrogen.png" .max_stack 1500 .kinds (list fluid_component gas_component) .is_raw true})
        (cr { .id "Oxygen" .name (_L "oxygen" "Oxygen") .icon_base "Oxygen.png" .max_stack 1500 .kinds (list fluid_component gas_component) .is_raw true})
        (cr { .id "Fertilizer" .name (_L "fertilizer" "Fertilizer") .icon_base "Fertilizer.png" .max_stack 150 .kinds (list product_component mineral_component) .is_raw false})
	))
	
    (add_resources_to_rules rules boi)

    (seti (R "Hydrogen") "price" 6)
	(seti (R "Oxygen") "price" 8)
	(seti (R "Fertilizer") "price" 20)

))

)