return function (mod)

	--;; Organized in this folder structure to make for easier comparison to Core files
	include_lisp(mod, "station/recipes.lisp")
	include_lisp(mod, "station/objects.lisp")
	include_lisp(mod, "system/research.lisp")
	include_lisp(mod, "system/resources.lisp")

    mod.on_prepare_rules = function (rules)
		mod.resource_conversion_texture_setup(rules) -- Also in resources.lisp
		mod.resource_conversion_resources_setup(rules)
		mod.resource_conversion_recipes_setup(rules)
		mod.resource_conversion_objects_setup(rules)
		mod.resource_conversion_research_setup(rules)
    end

end
