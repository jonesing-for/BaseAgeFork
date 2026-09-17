local electric_weapons_damage_1_icon = "__base-age-plus__/graphics/technology/electric-weapons-damage.png"
local electric_weapons_damage_2_icon = "__base-age-plus__/graphics/technology/electric-weapons-damage.png"
local electric_weapons_damage_3_icon = "__base-age-plus__/graphics/technology/electric-weapons-damage.png"

data:extend({
  {
    type = "technology",
    name = "turbo-transport-belt",
    icon = "__base-age-plus__/graphics/technology/turbo-transport-belt.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "turbo-transport-belt"
      },
      {
        type = "unlock-recipe",
        recipe = "turbo-underground-belt"
      },
      {
        type = "unlock-recipe",
        recipe = "turbo-splitter"
      },
    },
    prerequisites = {"production-science-pack", "utility-science-pack", "logistics-3"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack",1},
        {"logistic-science-pack",1},
        {"chemical-science-pack",1},
        {"production-science-pack",1},
        {"utility-science-pack",1},
      },
      time = 60
    }
  },
  {
    type = "technology",
    name = "stack-inserter",
    icon = "__base-age-plus__/graphics/technology/stack-inserter.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "stack-inserter"
      },
      {
        type = "belt-stack-size-bonus",
        modifier = 1
      }
    },
    prerequisites = {"production-science-pack", "utility-science-pack", "bulk-inserter"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack",1},
        {"logistic-science-pack",1},
        {"chemical-science-pack",1},
        {"production-science-pack",1},
        {"utility-science-pack",1},
      },
      time = 60
    }
  },
  {
    type = "technology",
    name = "transport-belt-capacity-1",
    localised_description = {"technology-description.belt-capacity"},
    icons = util.technology_icon_constant_stack_size("__base-age-plus__/graphics/technology/transport-belt-capacity.png"),
    effects =
    {
      {
        type = "belt-stack-size-bonus",
        modifier = 1
      }
    },
    prerequisites = {"stack-inserter"},
    unit =
    {
      count = 2000,
      ingredients =
      {
        {"automation-science-pack",1},
        {"logistic-science-pack",1},
        {"chemical-science-pack",1},
        {"production-science-pack",1},
        {"utility-science-pack",1},
      },
      time = 60
    },
    upgrade = true
  },
  {
    type = "technology",
    name = "transport-belt-capacity-2",
    localised_description = {"technology-description.belt-capacity"},
    icons = util.technology_icon_constant_stack_size("__base-age-plus__/graphics/technology/transport-belt-capacity.png"),
    effects =
    {
      {
        type = "belt-stack-size-bonus",
        modifier = 1
      },
      {
        type = "inserter-stack-size-bonus",
        modifier = 1
      }
    },
    prerequisites = {"transport-belt-capacity-1"},
    unit =
    {
      count = 3000,
      ingredients =
      {
        {"automation-science-pack",1},
        {"logistic-science-pack",1},
        {"chemical-science-pack",1},
        {"production-science-pack",1},
        {"utility-science-pack",1},
      },
      time = 60
    },
    upgrade = true
  },
  {
    type = "technology",
    name = "foundry",
    icon = "__base-age-plus__/graphics/technology/foundry.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "foundry"
      },
      {
        type = "unlock-recipe",
        recipe = "concrete-from-molten-iron"
      },
      {
        type = "unlock-recipe",
        recipe = "casting-low-density-structure"
      },
      {
        type = "unlock-recipe",
        recipe = "iron-ore-melting"
      },
      {
        type = "unlock-recipe",
        recipe = "copper-ore-melting"
      },
      {
        type = "unlock-recipe",
        recipe = "casting-iron"
      },
      {
        type = "unlock-recipe",
        recipe = "casting-steel"
      },
      {
        type = "unlock-recipe",
        recipe = "casting-copper"
      },
      {
        type = "unlock-recipe",
        recipe = "casting-iron-gear-wheel"
      },
      {
        type = "unlock-recipe",
        recipe = "casting-iron-stick"
      },
      {
        type = "unlock-recipe",
        recipe = "casting-pipe"
      },
      {
        type = "unlock-recipe",
        recipe = "casting-pipe-to-ground"
      },
      {
        type = "unlock-recipe",
        recipe = "casting-copper-cable"
      },
    },
    prerequisites = {"production-science-pack"},
    unit =
    {
      count = 2000,
      ingredients =
      {
        {"automation-science-pack",1},
        {"logistic-science-pack",1},
        {"chemical-science-pack",1},
        {"production-science-pack",1},
      },
      time = 60
    },
  },
  {
    type = "technology",
    name = "big-mining-drill",
    icon = "__base-age-plus__/graphics/technology/big-mining-drill.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "big-mining-drill"
      }
    },
    prerequisites = {"foundry", "electric-mining-drill"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack",1},
        {"logistic-science-pack",1},
        {"chemical-science-pack",1},
        {"production-science-pack",1},
      },
      time = 60
    }
  },
  {
    type = "technology",
    name = "electromagnetic-plant",
    icon = "__base-age-plus__/graphics/technology/electromagnetic-plant.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "electromagnetic-plant",
      }
    },
    prerequisites = {"automation-3"},
    unit =
    {
      count = 2000,
      ingredients =
      {
        {"automation-science-pack",1},
        {"logistic-science-pack",1},
        {"chemical-science-pack",1},
        {"production-science-pack",1},
      },
      time = 60
    }
  },
  {
    type = "technology",
    name = "heating-tower",
    icon = "__base-age-plus__/graphics/technology/heating-tower.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "heating-tower"
      },
      {
        type = "unlock-recipe",
        recipe = "heat-pipe"
      },
      {
        type = "unlock-recipe",
        recipe = "heat-exchanger"
      },
      {
        type = "unlock-recipe",
        recipe = "steam-turbine"
      }
    },
    prerequisites = {"oil-processing", "concrete"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"automation-science-pack",1},
        {"logistic-science-pack",1},
      },
      time = 30
    }
  },
  {
    type = "technology",
    name = "biolab",
    icon = "__base-age-plus__/graphics/technology/biolab.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "biolab"
      }
    },
    prerequisites = {"space-science-pack", "uranium-processing"},
    unit =
    {
      count = 5000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
      },
      time = 60
    }
  },
  {
    type = "technology",
    name = "cryogenic-plant",
    icon = "__base-age-plus__/graphics/technology/cryogenic-plant.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "cryogenic-plant"
      }
    },
    prerequisites = {"production-science-pack", "utility-science-pack"},
    unit =
    {
      count = 2500,
      ingredients =
      {
        {"automation-science-pack",1},
        {"logistic-science-pack",1},
        {"chemical-science-pack",1},
        {"production-science-pack",1},
        {"utility-science-pack",1},
      },
      time = 60
    },
  },
  {
    type = "technology",
    name = "fusion-reactor",
    icon = "__base-age-plus__/graphics/technology/fusion-reactor.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fusion-reactor"
      },
      {
        type = "unlock-recipe",
        recipe = "fusion-generator"
      },
      {
        type = "unlock-recipe",
        recipe = "fusion-power-cell"
      },
      {
        type = "unlock-recipe",
        recipe = "ultra-hot-steam-cooling"
      }
    },
    prerequisites = {"space-science-pack"},
    unit =
    {
      count = 2000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
      },
      time = 60
    }
  },
  {
    type = "technology",
    name = "mech-armor",
    icon = "__base-age-plus__/graphics/technology/mech-armor.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "mech-armor"
      },
    },
    prerequisites = {"space-science-pack", "power-armor-mk2"},
    unit =
    {
      count = 5000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 60
    }
  },
  {
    type = "technology",
    name = "toolbelt-equipment",
    icons = util.technology_icon_constant_equipment("__base-age-plus__/graphics/technology/toolbelt-equipment.png"),
    prerequisites = {"utility-science-pack", "power-armor", "toolbelt", "low-density-structure"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "toolbelt-equipment"
      }
    },
    unit =
    {
      count = 300,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    }
  },
  {
    type = "technology",
    name = "battery-mk3-equipment",
    icons = util.technology_icon_constant_equipment("__base-age-plus__/graphics/technology/battery-mk3-equipment.png"),
    prerequisites = {"battery-mk2-equipment"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "battery-mk3-equipment"
      }
    },
    unit =
    {
      count = 500,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 60
    }
  },
  {
    type = "technology",
    name = "fusion-reactor-equipment",
    icons = util.technology_icon_constant_equipment("__base-age-plus__/graphics/technology/fusion-reactor-equipment.png"),
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fusion-reactor-equipment"
      }
    },
    prerequisites = {"fusion-reactor", "fission-reactor-equipment"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 60
    }
  },
  {
    type = "technology",
    name = "steel-plate-productivity",
    icons = util.technology_icon_constant_recipe_productivity("__base-age-plus__/graphics/technology/steel-plate-productivity.png"),
    icon_size = 256,
    effects =
    {
      {
        type = "change-recipe-productivity",
        recipe = "steel-plate",
        change = 0.1
      },
      {
        type = "change-recipe-productivity",
        recipe = "casting-steel",
        change = 0.1
      }
    },
    prerequisites = {"space-science-pack", "foundry"},
    unit =
    {
      count_formula = "1.5^L*1000",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 60
    },
    max_level = 30,
    upgrade = true
  },
  {
    type = "technology",
    name = "low-density-structure-productivity",
    icons = util.technology_icon_constant_recipe_productivity("__base-age-plus__/graphics/technology/low-density-structure-productivity.png"),
    icon_size = 256,
    effects =
    {
      {
        type = "change-recipe-productivity",
        recipe = "low-density-structure",
        change = 0.1
      },
      {
        type = "change-recipe-productivity",
        recipe = "casting-low-density-structure",
        change = 0.1
      }
    },
    prerequisites = {"space-science-pack", "foundry"},
    unit =
    {
      count_formula = "1.5^L*1000",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 60
    },
    max_level = 30,
    upgrade = true
  },
  {
    type = "technology",
    name = "plastic-bar-productivity",
    icons = util.technology_icon_constant_recipe_productivity("__base-age-plus__/graphics/technology/plastics-productivity.png"),
    icon_size = 256,
    effects =
    {
      {
        type = "change-recipe-productivity",
        recipe = "plastic-bar",
        change = 0.1
      }
    },
    prerequisites = {"space-science-pack", "cryogenic-plant"},
    unit =
    {
      count_formula = "1.5^L*1000",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 60
    },
    max_level = 30,
    upgrade = true
  },
  {
    type = "technology",
    name = "rocket-fuel-productivity",
    icons = util.technology_icon_constant_recipe_productivity("__base-age-plus__/graphics/technology/rocket-fuel-productivity.png"),
    icon_size = 256,
    effects =
    {
      {
        type = "change-recipe-productivity",
        recipe = "rocket-fuel",
        change = 0.1
      }
    },
    prerequisites = {"space-science-pack"},
    unit =
    {
      count_formula = "1.5^L*1000",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 60
    },
    max_level = 30,
    upgrade = true
  },
  {
    type = "technology",
    name = "rocket-part-productivity",
    icons = util.technology_icon_constant_recipe_productivity("__base-age-plus__/graphics/technology/rocket-part-productivity.png"),
    icon_size = 256,
    effects =
    {
      {
        type = "change-recipe-productivity",
        recipe = "rocket-part",
        change = 0.1
      }
    },
    prerequisites = {"space-science-pack"},
    unit =
    {
      count_formula = "1.5^L*2000",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 60
    },
    max_level = 30,
    upgrade = true
  },
  {
    type = "technology",
    name = "processing-unit-productivity",
    icons = util.technology_icon_constant_recipe_productivity("__base-age-plus__/graphics/technology/processing-unit-productivity.png"),
    icon_size = 256,
    effects =
    {
      {
        type = "change-recipe-productivity",
        recipe = "processing-unit",
        change = 0.1
      }
    },
    prerequisites = {"space-science-pack", "electromagnetic-plant"},
    unit =
    {
      count_formula = "1.5^L*1000",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 60
    },
    max_level = 30,
    upgrade = true
  },
  {
    type = "technology",
    name = "tesla-weapons",
    icon = "__base-age-plus__/graphics/technology/tesla-weapons.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "teslagun",
      },
      {
        type = "unlock-recipe",
        recipe = "tesla-turret",
      },
      {
        type = "unlock-recipe",
        recipe = "tesla-ammo",
      },
    },
    prerequisites = {"military-4"},
    unit =
    {
      count = 1500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
      },
      time = 60
    }
  },
  {
    type = "technology",
    name = "electric-weapons-damage-1",
    icons = util.technology_icon_constant_damage(electric_weapons_damage_1_icon),
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "beam",
        modifier = 0.3
      }
    },
    prerequisites = {"destroyer"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
    upgrade = true
  },
  {
    type = "technology",
    name = "electric-weapons-damage-2",
    icons = util.technology_icon_constant_damage(electric_weapons_damage_2_icon),
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "beam",
        modifier = 0.4
      }
    },
    prerequisites = {"electric-weapons-damage-1", "space-science-pack"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 60
    },
    upgrade = true
  },
  {
    type = "technology",
    name = "electric-weapons-damage-3",
    icons = util.technology_icon_constant_damage(electric_weapons_damage_3_icon),
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "tesla",
        modifier = 0.7
      },
      {
        type = "ammo-damage",
        ammo_category = "electric",
        modifier = 0.7
      },
      {
        type = "ammo-damage",
        ammo_category = "beam",
        modifier = 0.6
      }
    },
    prerequisites = {"electric-weapons-damage-2",  "tesla-weapons"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
      },
      time = 60
    },
    upgrade = true
  },
  {
    type = "technology",
    name = "electric-weapons-damage-4",
    icons = util.technology_icon_constant_damage(electric_weapons_damage_3_icon),
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "tesla",
        modifier = 0.7
      },
      {
        type = "ammo-damage",
        ammo_category = "electric",
        modifier = 0.7
      },
      {
        type = "ammo-damage",
        ammo_category = "beam",
        modifier = 0.3
      }
    },
    prerequisites = {"electric-weapons-damage-3"},
    unit =
    {
      count_formula = "2^(L-3)*1000",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true
  },
  {
    type = "technology",
    name = "rocket-turret",
    icon = "__base-age-plus__/graphics/technology/rocket-turret.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "rocket-turret"
      }
    },
    prerequisites = {"rocketry", "stronger-explosives-2"},
    unit =
    {
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"space-science-pack", 1},
      },
      time = 30,
      count = 1500
    }
  },
  {
    type = "technology",
    name = "railgun",
    icon = "__base-age-plus__/graphics/technology/railgun.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "railgun"
      },
      {
        type = "unlock-recipe",
        recipe = "railgun-turret"
      },
      {
        type = "unlock-recipe",
        recipe = "railgun-ammo"
      },
    },
    prerequisites = {"military-4", "tank", "concrete", "radar"},
    unit =
    {
      count = 3000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
      },
      time = 60
    }
  },
  {
    type = "technology",
    name = "railgun-shooting-speed-1",
    icons = util.technology_icon_constant_speed("__base-age-plus__/graphics/technology/railgun-shooting-speed.png"),
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "railgun",
        icon = "__base-age-plus__/graphics/icons/railgun-ammo.png",
        icon_size = 64,
        modifier = 0.15
      },
    },
    prerequisites = {"railgun"},
    unit =
    {
      count_formula = "2^(L-1)*1000",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
      },
      time = 60
    },
    max_level = "infinite"
  },
  {
    type = "technology",
    name = "railgun-damage-1",
    icons = util.technology_icon_constant_damage("__base-age-plus__/graphics/technology/railgun-damage.png"),
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "railgun",
        modifier = 0.4
      }
    },
    prerequisites = {"railgun"},
    unit =
    {
      count_formula = "2^(L-1)*1000",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
      },
      time = 60
    },
    max_level = "infinite"
  },
  {
    type = "technology",
    name = "captivity",
    icon = "__base-age-plus__/graphics/technology/captivity.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "capture-robot-rocket"
      }
    },
    prerequisites = {"military-3", "rocketry"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"space-science-pack", 1},
--[[         {"agricultural-science-pack", 1} ]]

      },
      time = 60
    }
  },
  {
    type = "technology",
    name = "biter-egg-handling",
    icon = "__base-age-plus__/graphics/technology/biter-egg-handling.png",
    icon_size = 256,
    prerequisites = {"captivity"},
    research_trigger =
    {
      type = "capture-spawner"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "biter-egg"
      },
    }
  },
})
