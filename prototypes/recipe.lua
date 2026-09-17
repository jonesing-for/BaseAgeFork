data:extend({
	{
		type = "recipe",
		name = "turbo-transport-belt",
		categories = {"crafting-with-fluid", "metallurgy"},
		enabled = false,
		ingredients = {
			{type = "item", name = "steel-plate", amount = 2},
			{type = "item", name = "express-transport-belt", amount = 1},
			{type = "fluid", name = "lubricant", amount = 20},
		},
		results = {{type = "item", name = "turbo-transport-belt", amount = 1}},
		auto_recycle = true,
	},
	{
		type = "recipe",
		name = "turbo-underground-belt",
		energy_required = 2,
		categories = {"crafting-with-fluid", "metallurgy"},
		enabled = false,
		ingredients = {
			{type = "item", name = "steel-plate", amount = 10},
			{type = "item", name = "express-underground-belt", amount = 2},
			{type = "fluid", name = "lubricant", amount = 40},
		},
		results = {{type = "item", name = "turbo-underground-belt", amount = 2}},
		auto_recycle = true,
	},
	{
		type = "recipe",
		name = "turbo-splitter",
		categories = {"crafting-with-fluid", "metallurgy"},
		enabled = false,
		energy_required = 2,
		ingredients = {
			{type = "item", name = "steel-plate", amount = 4},
			{type = "item", name = "express-splitter", amount = 1},
			{type = "item", name = "processing-unit", amount = 2},
			{type = "fluid", name = "lubricant", amount = 80},
		},
		results = {{type = "item", name = "turbo-splitter", amount = 1}},
		auto_recycle = true,
	},
	{
		type = "recipe",
		name = "turbo-loader",
		enabled = false,
		hidden = true,
		energy_required = 20,
		ingredients = {
			{type = "item", name = "turbo-transport-belt", amount = 5},
			{type = "item", name = "express-loader", amount = 1},
		},
		results = {{type = "item", name = "turbo-loader", amount = 1}},
	},
	{
    type = "recipe",
    name = "stack-inserter",
    enabled = false,
    energy_required = 0.5,
    ingredients =
    {
      {type = "item", name = "bulk-inserter", amount = 1},
      {type = "item", name = "processing-unit", amount = 1},
      {type = "item", name = "low-density-structure", amount = 2},
      {type = "item", name = "electronic-circuit", amount = 10}
    },
    results = {{type="item", name="stack-inserter", amount=1}},
	auto_recycle = true,
  },
  {
    type = "recipe",
    name = "foundry",
    categories = {"metallurgy", "crafting-with-fluid"},
    enabled = false,
    ingredients =
    {
      {type = "item", name = "low-density-structure", amount = 10},
      {type = "item", name = "steel-plate", amount = 50},
      {type = "item", name = "electronic-circuit", amount = 30},
      {type = "item", name = "refined-concrete", amount = 20},
      {type = "fluid", name = "lubricant", amount = 20}
    },
    energy_required = 10,
    results = {{type="item", name="foundry", amount=1}}
  },
  {
    type = "recipe",
    name = "iron-ore-melting",
    localised_name = {"recipe-name.iron-ore-melting"},
    icon = "__base-age-plus__/graphics/icons/iron-ore-melting.png",
    categories = {"metallurgy"},
    order = "a[melting]-b[iron-ore-melting]",
    auto_recycle = false,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "iron-ore", amount = 50},
      {type = "item", name = "stone", amount = 1},
    },
    energy_required = 32,
    results =
    {
      {type = "fluid", name = "molten-iron", amount = 500},
    },
    allow_productivity = true,
    hide_from_signal_gui = false,
    main_product = "molten-iron"
  },
  {
    type = "recipe",
    name = "copper-ore-melting",
    localised_name = {"recipe-name.copper-ore-melting"},
    icon = "__base-age-plus__/graphics/icons/copper-ore-melting.png",
    categories = {"metallurgy"},
    order = "a[melting]-c[copper-ore-melting]",
    auto_recycle = false,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "copper-ore", amount = 50},
      {type = "item", name = "stone", amount = 1},
    },
    energy_required = 32,
    results =
    {
      {type = "fluid", name = "molten-copper", amount = 500},
    },
    hide_from_signal_gui = false,
    allow_productivity = true,
    main_product = "molten-copper"
  },
  {
    type = "recipe",
    name = "casting-iron",
    categories = {"metallurgy"},
    order = "b[casting]-a[casting-iron]",
    icon = "__base-age-plus__/graphics/icons/casting-iron.png",
    enabled = false,
    ingredients =
    {
      {type = "fluid", name = "molten-iron", amount = 20, fluidbox_multiplier = 10},
    },
    energy_required = 3.2,
    allow_decomposition = false,
    results = {{type = "item", name = "iron-plate", amount = 2}},
    allow_productivity = true,
    auto_recycle = false,
  },
  {
    type = "recipe",
    name = "casting-steel",
    categories = {"metallurgy"},
    order = "b[casting]-c[casting-steel]",
    icon = "__base-age-plus__/graphics/icons/casting-steel.png",
    enabled = false,
    ingredients =
    {
      {type = "fluid", name = "molten-iron", amount = 30, fluidbox_multiplier = 10}
    },
    energy_required = 3.2,
    allow_decomposition = false,
    results = {{type = "item", name = "steel-plate", amount = 1}},
    allow_productivity = true,
    auto_recycle = false,
  },
  {
    type = "recipe",
    name = "casting-copper",
    categories = {"metallurgy"},
    order = "b[casting]-b[casting-copper]",
    icon = "__base-age-plus__/graphics/icons/casting-copper.png",
    enabled = false,
    ingredients =
    {
      {type = "fluid", name = "molten-copper", amount = 20, fluidbox_multiplier = 10},
    },
    energy_required = 3.2,
    allow_decomposition = false,
    results = {{type = "item", name = "copper-plate", amount = 2}},
    allow_productivity = true,
    auto_recycle = false,
  },

  {
    type = "recipe",
    name = "casting-iron-gear-wheel",
    categories = {"metallurgy"},
    order = "b[casting]-d[casting-iron-gear-wheel]",
    icon = "__base-age-plus__/graphics/icons/casting-iron-gear-wheel.png",
    enabled = false,
    ingredients =
    {
      {type = "fluid", name = "molten-iron", amount = 10, fluidbox_multiplier = 10},
    },
    energy_required = 1,
    allow_decomposition = false,
    results = {{type = "item", name = "iron-gear-wheel", amount = 1}},
    allow_productivity = true,
    auto_recycle = false,
  },
  {
    type = "recipe",
    name = "casting-iron-stick",
    categories = {"metallurgy"},
    order = "b[casting]-e[casting-iron-stick]",
    icon = "__base-age-plus__/graphics/icons/casting-iron-stick.png",
    enabled = false,
    ingredients =
    {
      {type = "fluid", name = "molten-iron", amount = 20, fluidbox_multiplier = 10},
    },
    energy_required = 1,
    allow_decomposition = false,
    results = {{type = "item", name = "iron-stick", amount = 4}},
    allow_productivity = true,
    auto_recycle = false,
  },
  {
    type = "recipe",
    name = "casting-pipe",
    categories = {"metallurgy"},
    subgroup = "energy-pipe-distribution",
    order = "b[casting]-f[casting-pipe]",
    icon = "__base-age-plus__/graphics/icons/casting-pipe.png",
    enabled = false,
    ingredients =
    {
      {type = "fluid", name = "molten-iron", amount = 10, fluidbox_multiplier = 10},
    },
    energy_required = 1,
    allow_decomposition = false,
    results = {{type = "item", name = "pipe", amount = 1}},
    allow_productivity = false,
    auto_recycle = false,
  },
  {
    type = "recipe",
    name = "casting-pipe-to-ground",
    categories = {"metallurgy"},
    subgroup = "energy-pipe-distribution",
    order = "b[casting]-g[casting-pipe-to-ground]",
    icon = "__base-age-plus__/graphics/icons/casting-pipe-to-ground.png",
    enabled = false,
    ingredients =
    {
      {type = "fluid", name = "molten-iron", amount = 50, fluidbox_multiplier = 10},
      {type = "item", name = "pipe", amount = 10}
    },
    energy_required = 1,
    allow_decomposition = false,
    results = {{type = "item", name = "pipe-to-ground", amount = 2}},
    allow_productivity = false,
    auto_recycle = false,
  },
  {
    type = "recipe",
    name = "casting-low-density-structure",
    categories = {"metallurgy"},
    order = "b[casting]-f[low-density-structure]",
    icon = "__base-age-plus__/graphics/icons/casting-low-density-structure.png",
    enabled = false,
    ingredients =
    {
      {type = "fluid", name = "molten-iron", amount = 80},
      {type = "fluid", name = "molten-copper", amount = 250},
      {type = "item", name = "plastic-bar", amount = 5},
    },
    energy_required = 15,
    allow_decomposition = false,
    auto_recycle = false,
    results = {{type = "item", name = "low-density-structure", amount = 1}},
    allow_productivity = true
  },
  {
    type = "recipe",
    name = "concrete-from-molten-iron",
    categories = {"metallurgy"},
    order = "b[casting]-g[concrete]",
    icon = "__base-age-plus__/graphics/icons/concrete-from-molten-iron.png",
    enabled = false,
    ingredients =
    {
      {type = "fluid", name = "molten-iron", amount = 20},
      {type = "fluid", name = "water", amount = 100},
      {type = "item", name = "stone-brick", amount = 5},
    },
    energy_required = 10,
    allow_decomposition = false,
    results = {{type = "item", name = "concrete", amount = 10}},
    allow_productivity = true,
    auto_recycle = false,
  },
  {
    type = "recipe",
    name = "casting-copper-cable",
    categories = {"metallurgy"},
    order = "b[casting]-h[casting-copper-cable]",
    icon = "__base-age-plus__/graphics/icons/casting-copper-cable.png",
    enabled = false,
    ingredients =
    {
      {type = "fluid", name = "molten-copper", amount = 5, fluidbox_multiplier = 5},
    },
    energy_required = 1,
    allow_decomposition = false,
    results = {{type = "item", name = "copper-cable", amount = 2}},
    allow_productivity = true,
    auto_recycle = false
  },
  {
    type = "recipe",
    name = "big-mining-drill",
    categories = {"metallurgy"},
    enabled = false,
    energy_required = 30,
    ingredients =
    {
      {type = "item", name = "electric-mining-drill", amount = 1},
      {type = "fluid", name = "molten-iron", amount = 200},
      {type = "item", name = "low-density-structure", amount = 4},
      {type = "item", name = "electric-engine-unit", amount = 10},
      {type = "item", name = "advanced-circuit", amount = 10},
    },
    results = {{type="item", name="big-mining-drill", amount=1}},
    auto_recycle = true,
  },
  {
    type = "recipe",
    name = "electromagnetic-plant",
    categories = {"electromagnetics", "advanced-crafting"},
    energy_required = 10,
    ingredients =
    {
      {type = "item", name = "copper-plate", amount = 150},
      {type = "item", name = "steel-plate", amount = 50},
      {type = "item", name = "processing-unit", amount = 50},
      {type = "item", name = "refined-concrete", amount = 50}
    },
    results = {{type="item", name="electromagnetic-plant", amount=1}},
    enabled = false,
    auto_recycle = true
  },
  {
    type = "recipe",
    name = "heating-tower",
    energy_required = 10,
    ingredients =
    {
      {type = "item", name = "boiler", amount = 2},
      {type = "item", name = "heat-pipe", amount = 5},
      {type = "item", name = "concrete", amount = 20},
    },
    results = {{type="item", name="heating-tower", amount=1}},
    enabled = false,
    auto_recycle = true
  },
  {
    type = "recipe",
    name = "biolab",
    energy_required = 10,
    ingredients =
    {
      {type = "item", name = "lab", amount = 1},
      {type = "item", name = "low-density-structure", amount = 2},
      {type = "item", name = "refined-concrete", amount = 25},
      {type = "item", name = "logistic-robot", amount = 2},
      {type = "item", name = "uranium-235", amount = 3}
    },
    results = {{type="item", name="biolab", amount=1}},
    auto_recycle = false,
    enabled = false
  },
  {
    type = "recipe",
    name = "cryogenic-plant",
    categories = {"cryogenics", "advanced-crafting"},
    energy_required = 10,
    ingredients =
    {
      {type = "item", name = "refined-concrete", amount = 40},
      {type = "item", name = "copper-cable", amount = 100},
      {type = "item", name = "processing-unit", amount = 20},
      {type = "item", name = "low-density-structure", amount = 4},
    },
    results = {{type="item", name="cryogenic-plant", amount=1}},
    enabled = false,
    crafting_machine_tint =
    {
      primary = {r = 0.294, g = 0.368, b = 0.862, a = 1.000}, -- #4a5ddbff
      secondary = {r = 0.420, g = 0.851, b = 0.767, a = 1.000}, -- #6ad9c3ff
      tertiary = {r = 0.260, g = 0.245, b = 0.301, a = 1.000}, -- #423e4cff
      quaternary = {r = 0.566, g = 0.841, b = 0.769, a = 1.000}, -- #90d6c4ff
    },
    auto_recycle = true
  },
  {
    type = "recipe",
    name = "fusion-power-cell",
    categories = {"cryogenics"},
    subgroup = "uranium-processing",
    order = "c[uranium]-d[fusion-power-cell]",
    auto_recycle = false,
    energy_required = 10,
    ingredients =
    {
      {type = "item", name = "copper-plate", amount = 5},
      {type = "item", name = "low-density-structure", amount = 1},
      {type = "fluid", name = "water", amount = 100}
    },
    results = {{type="item", name="fusion-power-cell", amount=1}},
    allow_productivity = true,
    enabled = false,
    crafting_machine_tint =
    {
      primary = {r = 0.054, g = 0.897, b = 1.000, a = 1.000}, -- #0de4ffff
      secondary = {r = 1.000, g = 0.779, b = 0.974, a = 1.000}, -- #ffc6f8ff
      tertiary = {r = 0.497, g = 0.655, b = 0.757, a = 1.000}, -- #7ea7c1ff
      quaternary = {r = 0.761, g = 0.312, b = 1.000, a = 1.000}, -- #c14fffff
    }
  },
  {
    type = "recipe",
    name = "fusion-reactor",
    categories = {"cryogenics"},
    energy_required = 60,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "steel-plate", amount = 200},
      {type = "item", name = "copper-plate", amount = 200},
      {type = "item", name = "processing-unit", amount = 250},
    },
    results = {{type="item", name="fusion-reactor", amount=1}},
    requester_paste_multiplier = 1,
    crafting_machine_tint =
    {
      primary = {r = 0.298, g = 0.442, b = 0.518, a = 1.000}, -- #4c7084ff
      secondary = {r = 0.864, g = 0.706, b = 0.902, a = 1.000}, -- #dcb4e6ff
      tertiary = {r = 0.159, g = 0.136, b = 0.207, a = 1.000}, -- #282234ff
      quaternary = {r = 0.945, g = 0.370, b = 1.000, a = 1.000}, -- #f15effff
    },
    auto_recycle = true
  },
  {
    type = "recipe",
    name = "fusion-generator",
    categories = {"cryogenics"},
    energy_required = 30,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "steel-plate", amount = 100},
      {type = "item", name = "copper-plate", amount = 100},
      {type = "item", name = "processing-unit", amount = 50},
    },
    results = {{type="item", name="fusion-generator", amount=1}},
    requester_paste_multiplier = 1,
    crafting_machine_tint =
    {
      primary = {r = 0.298, g = 0.442, b = 0.518, a = 1.000}, -- #4c7084ff
      secondary = {r = 0.864, g = 0.706, b = 0.902, a = 1.000}, -- #dcb4e6ff
      tertiary = {r = 0.159, g = 0.136, b = 0.207, a = 1.000}, -- #282234ff
      quaternary = {r = 0.945, g = 0.370, b = 1.000, a = 1.000}, -- #f15effff
    },
    auto_recycle = true
  },
  {
    type = "recipe",
    name = "ultra-hot-steam-cooling",
    categories = {"cryogenics"},
    energy_required = 5,
    enabled = false,
    ingredients =
    {
      {type = "fluid", name = "ultra-hot-steam", amount = 10}
    },
    results = {{type="fluid", name="water", amount=10}},
    auto_recycle = false
  },
  {
    type = "recipe",
    name = "mech-armor",
    enabled = false,
    energy_required = 60,
    ingredients =
    {
      {type = "item", name = "power-armor-mk2", amount = 1},
      {type = "item", name = "copper-plate", amount = 200},
      {type = "item", name = "processing-unit", amount = 100},
      {type = "item", name = "copper-cable", amount = 50},
      {type = "item", name = "battery", amount = 50}
    },
    results = {{type="item", name="mech-armor", amount=1}},
    auto_recycle = true
  },
  {
    type = "recipe",
    name = "toolbelt-equipment",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {type = "item", name = "advanced-circuit", amount = 3},
      {type = "item", name = "low-density-structure", amount = 10}
    },
    results = {{type="item", name="toolbelt-equipment", amount=1}}
  },
  {
    type = "recipe",
    name = "battery-mk3-equipment",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {type = "item", name = "battery-mk2-equipment", amount = 5},
      {type = "item", name = "low-density-structure", amount = 10}
    },
    results = {{type="item", name="battery-mk3-equipment", amount=1}}
  },
  {
    type = "recipe",
    name = "fusion-reactor-equipment",
    enabled = false,
    energy_required = 30,
    ingredients =
    {
      {type = "item", name = "fission-reactor-equipment", amount = 1},
      {type = "item", name = "fusion-power-cell", amount = 10},
      {type = "item", name = "steel-plate", amount = 250},
      {type = "item", name = "low-density-structure", amount = 100},
      {type = "item", name = "battery", amount = 25},
      {type = "item", name = "processing-unit", amount = 250}
    },
    results = {{type="item", name="fusion-reactor-equipment", amount=1}},
    crafting_machine_tint =
    {
      primary = {r = 0.298, g = 0.442, b = 0.518, a = 1.000}, -- #4c7084ff
      secondary = {r = 0.864, g = 0.706, b = 0.902, a = 1.000}, -- #dcb4e6ff
      tertiary = {r = 0.159, g = 0.136, b = 0.207, a = 1.000}, -- #282234ff
      quaternary = {r = 0.945, g = 0.370, b = 1.000, a = 1.000}, -- #f15effff
    }
  },
  {
    type = "recipe",
    name = "teslagun",
    categories = {"electromagnetics"},
    energy_required = 30,
    ingredients =
    {
      {type = "item", name = "copper-plate", amount = 10},
      {type = "item", name = "battery-mk2-equipment", amount = 1},
      {type = "item", name = "plastic-bar", amount = 30},
	    {type = "item", name = "steel-plate", amount = 10},
	   -- {type = "fluid", name = "electrolyte", amount = 100},
    },
    results = {{type="item", name="teslagun", amount=1}},
    enabled = false
  },
  {
    type = "recipe",
    name = "tesla-turret",
    categories = {"electromagnetics"},
    energy_required = 30,
    ingredients =
    {
      {type = "item", name = "teslagun", amount = 1},
	    {type = "item", name = "accumulator", amount = 5},
      --{type = "item", name = "supercapacitor", amount = 10},
      {type = "item", name = "processing-unit", amount = 10},
      --{type = "item", name = "superconductor", amount = 50},
	    {type = "item", name = "steel-plate", amount = 10},
      --{type = "fluid", name = "electrolyte", amount = 500},
    },
    results = {{type="item", name="tesla-turret", amount=1}},
    enabled = false
  },
  {
    type = "recipe",
    name = "tesla-ammo",
    categories = {"electromagnetics"},
    energy_required = 30,
    ingredients =
    {
      --{type = "item", name = "supercapacitor", amount = 1},
	  {type = "item", name = "battery-equipment", amount = 1},
      {type = "item", name = "plastic-bar", amount = 1},
      --{type = "fluid", name = "electrolyte", amount = 10},
    },
    results = {{type="item", name="tesla-ammo", amount=1}},
    enabled = false
  },
  {
    type = "recipe",
    name = "railgun",
    categories = {"cryogenics"},
    enabled = false,
    energy_required = 10,
    ingredients =
    {
	  {type = "item", name = "battery-mk3-equipment", amount = 1},
	  {type = "item", name = "steel-plate", amount = 100},
	  {type = "item", name = "processing-unit", amount = 100},
	  {type = "fluid", name = "water", amount = 10}
      --{type = "item", name = "tungsten-plate", amount = 10},
      --{type = "item", name = "superconductor", amount = 10},
      --{type = "item", name = "quantum-processor", amount = 20},
      --{type = "fluid", name = "fluoroketone-cold", amount = 10}
    },
    results = {{type="item", name="railgun", amount=1}},
    crafting_machine_tint =
    {
      primary = {r = 0.504, g = 0.448, b = 0.321, a = 1.000}, -- #807251ff
      secondary = {r = 0.312, g = 0.519, b = 0.601, a = 1.000}, -- #4f8499ff
      tertiary = {r = 0.402, g = 0.558, b = 0.880, a = 1.000}, -- #668ee0ff
      quaternary = {r = 0.246, g = 0.246, b = 0.246, a = 1.000}, -- #3e3e3eff
    },
    auto_recycle = true,
  },
  {
    type = "recipe",
    name = "railgun-turret",
    categories = {"cryogenics"},
    enabled = false,
    energy_required = 10,
    ingredients =
    {
	  {type = "item", name = "battery-mk2-equipment", amount = 5},
	  {type = "item", name = "steel-plate", amount = 400},
	  {type = "item", name = "processing-unit", amount = 300},
	  {type = "fluid", name = "water", amount = 100}
      -- {type = "item", name = "quantum-processor", amount = 100},
      -- {type = "item", name = "tungsten-plate", amount = 30},
      -- {type = "item", name = "superconductor", amount = 50},
      -- {type = "item", name = "carbon-fiber", amount = 20},
      -- {type = "fluid", name = "fluoroketone-cold", amount = 100}
    },
    results = {{type="item", name="railgun-turret", amount=1}},
    crafting_machine_tint =
    {
      primary = {r = 0.504, g = 0.448, b = 0.321, a = 1.000}, -- #807251ff
      secondary = {r = 0.312, g = 0.519, b = 0.601, a = 1.000}, -- #4f8499ff
      tertiary = {r = 0.402, g = 0.558, b = 0.880, a = 1.000}, -- #668ee0ff
      quaternary = {r = 0.246, g = 0.246, b = 0.246, a = 1.000}, -- #3e3e3eff
    },
    auto_recycle = true,
  },
  {
    type = "recipe",
    name = "railgun-ammo",
    enabled = false,
    energy_required = 25,
    ingredients =
    {
      {type = "item", name = "steel-plate", amount = 5},
      {type = "item", name = "copper-cable", amount = 10},
      {type = "item", name = "explosives", amount = 2}
    },
    results = {{type="item", name="railgun-ammo", amount=1}}
  },
  {
    type = "recipe",
    name = "rocket-turret",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {type = "item", name = "rocket-launcher", amount = 4},
      {type = "item", name = "processing-unit", amount = 4},
      --{type = "item", name = "carbon-fiber", amount = 20},
      {type = "item", name = "steel-plate", amount = 20},
      {type = "item", name = "iron-gear-wheel", amount = 20}
    },
    results = {{type="item", name="rocket-turret", amount=1}}
  },
  {
    type = "recipe",
    name = "capture-robot-rocket",
    energy_required = 10,
    ingredients =
    {
      {type = "item", name = "flying-robot-frame", amount = 1},
      {type = "item", name = "steel-plate", amount = 2},
--[[       {type = "item", name = "bioflux", amount = 20}, ]]
      {type = "item", name = "processing-unit", amount = 2},
    },
    results = {{type="item", name="capture-robot-rocket", amount=1}},
    enabled = false
  },
  {
    type = "recipe",
    name = "captive-biter-spawner",
    categories = {"cryogenics"},
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "biter-egg", amount = 10},
      {type = "item", name = "capture-robot-rocket", amount = 1},
      {type = "item", name = "uranium-235", amount = 15},
      {type = "fluid", name = "light-oil", amount = 100},
    },
    results =
    {
      {type = "item", name = "captive-biter-spawner", amount = 1, reset_freshness_on_craft = true}
    },
    auto_recycle = false,
  },
  {
    type = "recipe",
    name = "biter-egg",
    icon = "__base-age-plus__/graphics/icons/biter-egg.png",
    categories = {"captive-spawner-process"},
    order = "c[eggs]-a[biter-egg]",
    hide_from_player_crafting = true,
    auto_recycle = false,
    preserve_products_in_machine_output = true,
    energy_required = 10,
    ingredients = {},
    results =
    {
      {type = "item", name = "biter-egg", amount = 5}
    },
    enabled = false
  },
})
