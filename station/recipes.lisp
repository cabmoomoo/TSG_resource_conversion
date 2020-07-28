\return \(fn (mod)

(set mod.resource_conversion_recipes_setup (fn (rules)
	
	--;; Biological Workshop
	
    (register_recipe { --;; Net 0 because it's really easy and only basic resources.
        .name (_L "make_conversion_oils" "Extract Oils") --;; Net price: 0
        .id "make-conversion-oils"
        .difficulty 0
        .duration 300
        .icon (.icons.px30 (R "Oils"))
        .input {"Slime" 4} --;; Cost: 12
        .output {"Oils" 3} --;; Value: 12
        .job_component chemistry_job_component})	

    (register_recipe {
        .name (_L "make_conversion_microbiota" "Culture Microbiota") --;; Net price: 3
        .id "make-conversion-microbiota"
        .difficulty 1
        .duration 300
        .icon (.icons.px30 (R "Microbiota"))
        .input { 
            "Water" 2 --;; Cost: 4
            "Slime" 1 --;; Cost: 3
             }
        .output {"Microbiota" 1} --;; Value: 10
        .job_component chemistry_job_component})

    (register_recipe {
        .name (_L "make_conversion_algae" "Grow Algae") --;; Net price: 3
        .id "make-conversion-algae"
        .difficulty 1
        .duration 400
        .icon (.icons.px30 (R "Algae"))
        .input { 
            "Water" 5 --;; Cost: 10
            "FruitsVeggies" 4 --;; Cost: 16
			"Oxygen" 2 --;; Cost: 16
             }
        .output {"Algae" 3} --;; Value: 45
        .job_component chemistry_job_component})

    (register_recipe { --;; The only net negative in price recipe is that way because... ¯\_(ツ)_/¯
        .name (_L "make_conversion_spores" "Grow Spores") --;; Net price: -11
        .id "make-conversion-spores"
        .difficulty 2
        .duration 500
        .icon (.icons.px30 (R "Spores"))
        .input { 
            "Water" 3 --;; Cost: 6
            "Hydrogen" 2 --;; Cost: 12
			"Algae" 1 --;; Cost: 15
             }
        .output {"Spores" 1} --;; Value: 22
        .job_component chemistry_job_component})
		
	--;; Electrolyzer
    (register_recipe {
        .name (_L "make_electrolysis_water" "Electrolyze Water") --;; Net price: 9
        .id "make-electrolysis-water"
        .difficulty 0
        .duration 300
        .icon (.icons.px30 (R "Water"))
        .input { 
            "Water" 3 --;; Cost: 6
			"Aluminium" 1 --;; Cost: 5
             }
        .output {
			"Hydrogen" 2 --;; Value: 12
			"Oxygen" 1 --;; Value: 8
			 }
        .job_component chemistry_job_component})
		
	--;; Farms
    (register_recipe {
        .name (_L "grow_meat" "Raise meat animals") --;; Net price: 20
        .id "grow-meat"
        .difficulty 1
        .duration 2000
        .icon (.icons.px30 (R "Meat"))
        .input { 
            "FruitsVeggies" 35 --;; Cost: 140
			"Water" 30 --;; Cost: 60
			"Oxygen" 10 --;; Cost: 80
             }
        .output {"Meat" 20} --;; Value: 300
        .job_component cooking_job_component})
		
    (register_recipe {
        .name (_L "grow_fruits" "Grow fruits") --;; Net price: 10
        .id "grow-fruits"
        .difficulty 1
        .duration 2000
        .icon (.icons.px30 (R "FruitsVeggies"))
        .input {
			"Water" 15 --;; Cost: 30
			"Oxygen" 5 --;; Cost: 40
             }
        .output {"FruitsVeggies" 20} --;; Value: 80
        .job_component cooking_job_component})
		
	--;; Other
    (register_recipe {
        .name (_L "make_fertilizer" "Make Fertilizer") --;; Net price: 2
        .id "make-fertilizer"
        .difficulty 1
        .duration 200
        .icon (.icons.px30 (R "Fertilizer"))
        .input {"Nitrogen" 3} --;; Cost: 18
        .output {"Fertilizer" 1} --;; Value: 20
        .job_component chemistry_job_component})

	--;; recipe_redo check
	(if (and (not recipe_redo_installed) (not recipe_redo_checked))
		(
			(set recipe_redo_checked true)
			(set core_tutorial_station_tutorial (tutorial_make_book (list
				(tutorial_make_chapter "recipe_redo_check" (_L "recipe_redo_not_activated" "Recipe Redo is not Activated") (list
					(tutorial_make_page {
						.body (gui_v { .grow true }
							(gui_label { .width tutorial_w .text (_L "recipe_redo_not_installed_1"
								"The mod Recipe Redo is not activated.\nAt least one of your activated mods needs Recipe Redo in order to function properly.\nThat mod cares so much about it, it's gone and replaced the tutorial with this message, just to let you know.\nIt is highly recommended you start a new game with Recipe Redo activated."
								) }))
						.is_next false})
				))
			)))
		)
		(set recipe_redo_checked true)
	)

))

)