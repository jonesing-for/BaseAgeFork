data:extend({
    {
        type = "fluid",
        name = "molten-iron",
        icon = "__base-age-plus__/graphics/icons/fluid/molten-iron.png",
        subgroup = "fluid",
        order = "b[new-fluid]-a[molten-iron]",
        default_temperature = 1500,
        base_color = {0, 0.1, 0.53},
        flow_color = {0.2, 0.68, 0.93},
        draw_as_glow = true,
        auto_barrel = false
    },
    {
        type = "fluid",
        name = "molten-copper",
        icon = "__base-age-plus__/graphics/icons/fluid/molten-copper.png",
        subgroup = "fluid",
        order = "b[new-fluid]-b[molten-copper]",
        default_temperature = 1100,
        base_color = {0.53, 0.1, 0},
        flow_color = {0.93, 0.68, 0.2},
        draw_as_glow = true,
        auto_barrel = false
    },
    {
        type = "fluid",
        name = "fusion-plasma",
        icon = "__base-age-plus__/graphics/icons/fluid/fusion-plasma.png",
        subgroup = "fluid",
        order = "b[new-fluid]-e[aquilo]-g[fusion-plasma]",
        default_temperature = 1000000,
        max_temperature = 10000000,
        heat_capacity = "25J",
        base_color = {0.0, 0.1, 0.53},
        flow_color = {0.2, 0.68, 0.93},
        auto_barrel = false
    },
    {
        type = "fluid",
        name = "ultra-hot-steam",
        subgroup = "fluid",
        default_temperature = 1000,
        max_temperature = 1000,
        heat_capacity = "0.2kJ",
        icon = "__base__/graphics/icons/fluid/steam.png",
        base_color = {0.5, 0.5, 0.5},
        flow_color = {1.0, 1.0, 1.0},
        order = "a[fluid]-a[water]-b[steam]",
        gas_temperature = 1000,
        auto_barrel = false
  },
})
  