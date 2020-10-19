\return \(fn (mod)

--;; This, surprisingly, worked first time. I'm also really proud of how that image looks, even if all I did
--;; was invert the colors to match the theme. It is interesting to note that the new research tab created
--;; is placed at the top of the list. I believe that is because I never told it where in the list to go
--;; (that would have meant overriding the entire list, no thanks), so it just appended to the... top?
--;; It's of no consequence, but still interesting.

(set mod.resource_conversion_research_setup (fn (rules)
	
	(set rules.research_tech_groups.biology {
		.group "biology"
		.name (_L "group_biology" "Biology")
		.icon "ui_icon_40px_biology.png" --;; Image released under public domain. Credit to Karen Arnold. (https://www.publicdomainpictures.net/en/view-image.php?image=75290&picture=microscope-silhouette-clipart )
	})
	
	(set rules.research_tech.biology (list

		{ 
			.name (_L "biology_tier_1" "Basic Biology")
			.points 200
			.tokens (list)
			.objects (list 
				"biological_workshop"
			)
			.recipes (list 
				"make-conversion-oils"
				"make-conversion-microbiota"
				)
			.rooms (list 49)
			.ships (list)
		 }

		{ 
			.name (_L "biology_tier_2" "Advanced Biology")
			.points 800
			.tokens (list)
			.objects (list 
				"electrolyzer"
				"animal_farm"
				"fruit_farm"
			)
			.recipes (list 
				"make-electrolysis-water"
				"make-conversion-algae"
				"make-conversion-spores"
				"make-fertilizer"
				"grow-meat"
				"grow-fruits"
				)
			.rooms (list)
			.ships (list)
		 }
		
	))

))

)