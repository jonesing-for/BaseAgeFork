local function add_recipe_category(recipe, category)
  recipe.categories = recipe.categories or {"crafting"}
  table.insert(recipe.categories, category)
end

add_recipe_category(data.raw.recipe["transport-belt"], "metallurgy")
add_recipe_category(data.raw.recipe["underground-belt"], "metallurgy")
add_recipe_category(data.raw.recipe["splitter"], "metallurgy")
add_recipe_category(data.raw.recipe["fast-transport-belt"], "metallurgy")
add_recipe_category(data.raw.recipe["fast-underground-belt"], "metallurgy")
add_recipe_category(data.raw.recipe["fast-splitter"], "metallurgy")
add_recipe_category(data.raw.recipe["express-transport-belt"], "metallurgy")
add_recipe_category(data.raw.recipe["express-underground-belt"], "metallurgy")
add_recipe_category(data.raw.recipe["express-splitter"], "metallurgy")

add_recipe_category(data.raw.recipe["beacon"], "electromagnetics")
add_recipe_category(data.raw.recipe["solar-panel"], "electromagnetics")

add_recipe_category(data.raw.recipe["speed-module"], "electromagnetics")
add_recipe_category(data.raw.recipe["speed-module-2"], "electromagnetics")
add_recipe_category(data.raw.recipe["speed-module-3"], "electromagnetics")

add_recipe_category(data.raw.recipe["productivity-module"], "electromagnetics")
add_recipe_category(data.raw.recipe["productivity-module-2"], "electromagnetics")
add_recipe_category(data.raw.recipe["productivity-module-3"], "electromagnetics")

add_recipe_category(data.raw.recipe["efficiency-module"], "electromagnetics")
add_recipe_category(data.raw.recipe["efficiency-module-2"], "electromagnetics")
add_recipe_category(data.raw.recipe["efficiency-module-3"], "electromagnetics")
table.insert(data.raw.recipe["productivity-module-3"].ingredients, {type = "item", name = "biter-egg", amount = 1})

add_recipe_category(data.raw.recipe["quality-module"], "electromagnetics")
add_recipe_category(data.raw.recipe["quality-module-2"], "electromagnetics")
add_recipe_category(data.raw.recipe["quality-module-3"], "electromagnetics")

add_recipe_category(data.raw.recipe["sulfuric-acid"], "cryogenics")
add_recipe_category(data.raw.recipe["sulfur"], "cryogenics")

add_recipe_category(data.raw.recipe["accumulator"], "electromagnetics")
add_recipe_category(data.raw.recipe["discharge-defense-equipment"], "electromagnetics")
add_recipe_category(data.raw.recipe["electronic-circuit"], "electromagnetics")
add_recipe_category(data.raw.recipe["small-electric-pole"], "electromagnetics")
add_recipe_category(data.raw.recipe["big-electric-pole"], "electromagnetics")
add_recipe_category(data.raw.recipe["medium-electric-pole"], "electromagnetics")
add_recipe_category(data.raw.recipe["copper-cable"], "electromagnetics")
add_recipe_category(data.raw.recipe["advanced-circuit"], "electromagnetics")
add_recipe_category(data.raw.recipe["processing-unit"], "electromagnetics")
add_recipe_category(data.raw.recipe["substation"], "electromagnetics")

add_recipe_category(data.raw.recipe["plastic-bar"], "cryogenics")
add_recipe_category(data.raw.recipe["explosives"], "cryogenics")
add_recipe_category(data.raw.recipe["battery"], "cryogenics")