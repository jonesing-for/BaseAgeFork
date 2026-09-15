local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
local space_age_sounds = require ("__base-age-plus__.prototypes.entity.sounds")

data:extend({
  {
    type = "assembling-machine",
    name = "electromagnetic-plant",
    icon = "__base-age-plus__/graphics/icons/electromagnetic-plant.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.1, result = "electromagnetic-plant"},
    fast_replaceable_group = "electromagnetic-plant",
    max_health = 350,
    corpse = "electromagnetic-plant-remnants",
    dying_explosion = "electromagnetic-plant-explosion",
    icon_draw_specification = {shift = {0, -0.25}},
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["electromagnetic-plant"],
    effect_receiver = { base_effect = { productivity = 0.5 }},
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{-2, -2}, {2, 2}},
    damaged_trigger_effect = hit_effects.entity(),
    drawing_box_vertical_extension = 0.7,
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = require("__base-age-plus__.prototypes.entity.electromagnetic-plant-pictures").pipe_pictures,
        pipe_covers = pipecoverspictures(),
        volume = 200,
        secondary_draw_orders = { north = -1 },
        pipe_connections = {{ flow_direction="input-output", direction = defines.direction.west, position = {-1.5, 0.5} }}
      },
      {
        production_type = "input",
        pipe_picture = require("__base-age-plus__.prototypes.entity.electromagnetic-plant-pictures").pipe_pictures,
        pipe_covers = pipecoverspictures(),
        volume = 200,
        secondary_draw_orders = { north = -1 },
        pipe_connections = {{ flow_direction="input-output", direction = defines.direction.east, position = {1.5, -0.5} }}
      },
      {
        production_type = "output",
        pipe_picture = require("__base-age-plus__.prototypes.entity.electromagnetic-plant-pictures").pipe_pictures,
        pipe_covers = pipecoverspictures(),
        volume = 100,
        secondary_draw_orders = { north = -1 },
        pipe_connections = {{ flow_direction="input-output", direction = defines.direction.south, position = {0.5, 1.5} }}
      },
      {
        production_type = "output",
        pipe_picture = require("__base-age-plus__.prototypes.entity.electromagnetic-plant-pictures").pipe_pictures,
        pipe_covers = pipecoverspictures(),
        volume = 100,
        secondary_draw_orders = { north = -1 },
        pipe_connections = {{ flow_direction="input-output", direction = defines.direction.north, position = {-0.5, -1.5} }}
      }
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    perceived_performance = {minimum = 0.25, maximum = 10},
    use_mirroring = true,
    graphics_set = require("__base-age-plus__.prototypes.entity.electromagnetic-plant-pictures").graphics_set,
    open_sound = sounds.electric_large_open,
    close_sound = sounds.electric_large_close,
    working_sound = space_age_sounds.electromagnetic_plant,
    crafting_speed = 2,
    crafting_categories = {"electromagnetics"},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 4 }
    },
    energy_usage = "2000kW",
    module_slots = 5,
    icons_positioning =
    {
      {inventory_index = defines.inventory.crafter_modules, shift = {0, 1}}
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
    water_reflection = require("__base-age-plus__.prototypes.entity.electromagnetic-plant-pictures").water_reflection,
  },
})
  