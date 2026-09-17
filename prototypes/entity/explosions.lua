local explosion_animations = require("__base__/prototypes/entity/explosion-animations")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
	{
		type = "explosion",
		name = "turbo-transport-belt-explosion-base",
		icon = "__base-age-plus__/graphics/icons/turbo-transport-belt.png",
		flags = { "not-on-map" },
		hidden = true,
		height = 0,
		animations = explosion_animations.small_dust_explosion(),
		sound = sounds.small_explosion,
		created_effect = {
			type = "direct",
			action_delivery = {
				type = "instant",
				target_effects = {
					{
						type = "create-trivial-smoke",
						repeat_count = 10,
						smoke_name = "small-dusty-explosion-smoke",
						offset_deviation = { { -0.4, -0.4 }, { 0.4, 0.4 } },
						initial_height = 0,
						speed_from_center = 0.008,
						speed_from_center_deviation = 0.03,
					},
					{
						type = "create-particle",
						repeat_count = 1,
						particle_name = "turbo-transport-belt-metal-particle-medium",
						offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
						initial_height = 0.1,
						initial_height_deviation = 0.5,
						initial_vertical_speed = 0.09,
						initial_vertical_speed_deviation = 0.05,
						speed_from_center = 0.04,
						speed_from_center_deviation = 0.05,
					},
					{
						type = "create-particle",
						repeat_count = 4,
						particle_name = "turbo-transport-belt-metal-particle-small",
						offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
						initial_height = 0.1,
						initial_height_deviation = 0.5,
						initial_vertical_speed = 0.071,
						initial_vertical_speed_deviation = 0.05,
						speed_from_center = 0.03,
						speed_from_center_deviation = 0.05,
					},
					{
						type = "create-particle",
						repeat_count = 20,
						particle_name = "transport-belt-wooden-splinter-particle-medium",
						offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
						initial_height = 0.1,
						initial_height_deviation = 0.5,
						initial_vertical_speed = 0.08,
						initial_vertical_speed_deviation = 0.016,
						speed_from_center = 0.04,
						speed_from_center_deviation = 0.05,
					},
					{
						type = "create-particle",
						repeat_count = 5,
						particle_name = "turbo-transport-belt-mechanical-component-particle-medium",
						offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
						initial_height = 0.1,
						initial_height_deviation = 0.32,
						initial_vertical_speed = 0.041,
						initial_vertical_speed_deviation = 0.042,
						speed_from_center = 0.01,
						speed_from_center_deviation = 0.05,
					},
				},
			},
		},
	},
	{
		type = "explosion",
		name = "turbo-transport-belt-explosion",
		icon = "__base-age-plus__/graphics/icons/turbo-transport-belt.png",
		flags = { "not-on-map" },
		hidden = true,
		subgroup = "belt-explosions",
		order = "b-c-a",
		animations = util.empty_sprite(),
		created_effect = {
			type = "direct",
			action_delivery = {
				type = "instant",
				target_effects = {
					{
						type = "create-explosion",
						entity_name = "turbo-transport-belt-explosion-base",
						offsets = { { 0, 0.3 } },
						offset_deviation = { { -0.25, -0.25 }, { 0.25, 0.25 } },
					},
				},
			},
		},
	},

	{
		type = "explosion",
		name = "turbo-underground-belt-explosion-base",
		icon = "__base-age-plus__/graphics/icons/turbo-underground-belt.png",
		flags = { "not-on-map" },
		hidden = true,
		height = 0,
		animations = explosion_animations.small_dust_explosion(),
		sound = sounds.small_explosion,
		created_effect = {
			type = "direct",
			action_delivery = {
				type = "instant",
				target_effects = {
					{
						type = "create-trivial-smoke",
						repeat_count = 10,
						smoke_name = "small-dusty-explosion-smoke",
						offset_deviation = { { -0.4, -0.4 }, { 0.4, 0.4 } },
						initial_height = 0,
						speed_from_center = 0.008,
						speed_from_center_deviation = 0.03,
					},
					{
						type = "create-particle",
						repeat_count = 10,
						particle_name = "express-underground-belt-metal-particle-medium",
						offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
						initial_height = 0.2,
						initial_height_deviation = 0.5,
						initial_vertical_speed = 0.081,
						initial_vertical_speed_deviation = 0.05,
						speed_from_center = 0.03,
						speed_from_center_deviation = 0.05,
					},
					{
						type = "create-particle",
						repeat_count = 25,
						particle_name = "turbo-underground-belt-metal-particle-small",
						offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
						initial_height = 0.2,
						initial_height_deviation = 0.43,
						initial_vertical_speed = 0.087,
						initial_vertical_speed_deviation = 0.048,
						speed_from_center = 0.05,
						speed_from_center_deviation = 0.05,
					},
					{
						type = "create-particle",
						repeat_count = 2,
						particle_name = "turbo-underground-belt-metal-particle-medium-green",
						offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
						initial_height = 0.2,
						initial_height_deviation = 0.5,
						initial_vertical_speed = 0.042,
						initial_vertical_speed_deviation = 0.05,
						speed_from_center = 0.02,
						speed_from_center_deviation = 0.05,
					},
				},
			},
		},
	},
	{
		type = "explosion",
		name = "turbo-underground-belt-explosion",
		icon = "__base-age-plus__/graphics/icons/turbo-underground-belt.png",
		flags = { "not-on-map" },
		hidden = true,
		subgroup = "belt-explosions",
		order = "b-f-a",
		animations = util.empty_sprite(),
		created_effect = {
			type = "direct",
			action_delivery = {
				type = "instant",
				target_effects = {
					{
						type = "create-explosion",
						entity_name = "turbo-underground-belt-explosion-base",
						offsets = { { 0, 0.3 } },
						offset_deviation = { { -0.25, -0.25 }, { 0.25, 0.25 } },
					},
				},
			},
		},
	},

	{
		type = "explosion",
		name = "turbo-splitter-explosion",
		icon = "__base-age-plus__/graphics/icons/turbo-splitter.png",
		flags = { "not-on-map" },
		hidden = true,
		subgroup = "belt-explosions",
		order = "b-i-a",
		height = 0,
		animations = explosion_animations.small_explosion(),
		smoke = "smoke-fast",
		smoke_count = 2,
		smoke_slow_down_factor = 1,
		sound = sounds.small_explosion,
		created_effect = {
			type = "direct",
			action_delivery = {
				type = "instant",
				target_effects = {
					{
						type = "create-particle",
						repeat_count = 13,
						particle_name = "turbo-splitter-metal-particle-medium",
						offset_deviation = { { -0.5, -0.5977 }, { 0.5, 0.5977 } },
						initial_height = 0.3,
						initial_height_deviation = 0.5,
						initial_vertical_speed = 0.047,
						initial_vertical_speed_deviation = 0.05,
						speed_from_center = 0.05,
						speed_from_center_deviation = 0.05,
					},
					{
						type = "create-particle",
						repeat_count = 25,
						particle_name = "express-splitter-metal-particle-small",
						offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
						initial_height = 0.6,
						initial_height_deviation = 0.5,
						initial_vertical_speed = 0.049,
						initial_vertical_speed_deviation = 0.05,
						speed_from_center = 0.05,
						speed_from_center_deviation = 0.05,
					},
					{
						type = "create-particle",
						repeat_count = 3,
						particle_name = "express-splitter-long-metal-particle-medium",
						offset_deviation = { { -0.6953, -0.5977 }, { 0.6953, 0.5977 } },
						initial_height = 0.4,
						initial_height_deviation = 0.5,
						initial_vertical_speed = 0.072,
						initial_vertical_speed_deviation = 0.05,
						speed_from_center = 0.03,
						speed_from_center_deviation = 0.05,
					},
					{
						type = "create-particle",
						repeat_count = 2,
						particle_name = "turbo-splitter-metal-particle-big",
						offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
						initial_height = 0.2,
						initial_height_deviation = 0.5,
						initial_vertical_speed = 0.05,
						initial_vertical_speed_deviation = 0.05,
						speed_from_center = 0.05,
						speed_from_center_deviation = 0.05,
					},
					{
						type = "create-particle",
						repeat_count = 3,
						particle_name = "express-splitter-mechanical-component-particle-medium",
						offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
						initial_height = 0.2,
						initial_height_deviation = 0.5,
						initial_vertical_speed = 0.029,
						initial_vertical_speed_deviation = 0.05,
						speed_from_center = 0.04,
						speed_from_center_deviation = 0.05,
					},
				},
			},
		},
	},
	{
    type = "explosion",
    name = "stack-inserter-explosion",
    icon = "__base-age-plus__/graphics/icons/stack-inserter.png",
    flags = {"not-on-map"},
    hidden = true,
    subgroup = "inserter-explosions",
    order = "c-h-a",
    height = 0,
    animations = explosion_animations.small_explosion(),
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1,
    sound = sounds.small_explosion,
    created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-particle",
            repeat_count = 17,
            particle_name = "bulk-inserter-metal-particle-medium",
            offset_deviation = { { -0.5, -0.4922 }, { 0.5, 0.4922 } },
            initial_height = 0.3,
            initial_height_deviation = 0.44,
            initial_vertical_speed = 0.058,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.04,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 10,
            particle_name = "bulk-inserter-metal-particle-small",
            offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
            initial_height = 0.2,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.08,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.05,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 7,
            particle_name = "cable-and-electronics-particle-small-medium",
            offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
            initial_height = 0.3,
            initial_height_deviation = 0.4,
            initial_vertical_speed = 0.06,
            initial_vertical_speed_deviation = 0.049,
            speed_from_center = 0.04,
            speed_from_center_deviation = 0.05
          }
        }
      }
    }
  },
  {
    type = "explosion",
    name = "foundry-explosion",
    icon = "__base-age-plus__/graphics/icons/foundry.png",
    flags = {"not-on-map"},
    hidden = true,
    subgroup = "smelting-machine-explosions",
    order = "d[foundry]",
    height = 0,
    animations = explosion_animations.big_explosion(),
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1,
    sound = sounds.large_explosion(0.7, 1.0),
    created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-particle",
            repeat_count = 10,
            probability = 1,
            particle_name = "oil-refinery-metal-particle-big",
            offsets =
            {
              { 0.7734, -0.6484 },
              { -0.7266, 0.5859 }
            },
            offset_deviation = { { -0.6875, -0.6875 }, { 0.6875, 0.6875 } },
            initial_height = 0.8,
            initial_height_deviation = 0.49,
            initial_vertical_speed = 0.088,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.03,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 38,
            probability = 1,
            particle_name = "oil-refinery-metal-particle-medium",
            offsets = { { 0, 0 }  },
            offset_deviation = { { -0.9805, -0.8867 }, { 0.9805, 0.8867 } },
            initial_height = 0.6,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.098,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.07,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 10,
            probability = 1,
            particle_name = "foundry-metal-particle-big",
            offsets =
            {
              { -1.492, -1.453 },
              { 1.555, -1.469 },
              { 1.477, 1.469 },
              { -0.6172, 0.3281 }
            },
            offset_deviation = { { -0.9961, -0.5938 }, { 0.9961, 0.5938 } },
            initial_height = 0.4,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.075,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.04,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 35,
            probability = 1,
            particle_name = "foundry-metal-particle-medium",
            offsets =
            {
              { -0.02344, -0.8984 }
            },
            offset_deviation = { { -0.5, -0.2969 }, { 0.5, 0.2969 } },
            initial_height = 0.7,
            initial_height_deviation = 0.15,
            initial_vertical_speed = 0.166,
            initial_vertical_speed_deviation = 0.047,
            speed_from_center = 0.05,
            speed_from_center_deviation = 0.005
          },
          {
            type = "create-particle",
            repeat_count = 20,
            particle_name = "foundry-metal-particle-small",
            offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
            initial_height = 0.5,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.06,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.04,
            speed_from_center_deviation = 0.05
          },
        }
      }
    }
  },
  {
    type = "explosion",
    name = "big-mining-drill-explosion",
    icon = "__base-age-plus__/graphics/icons/big-mining-drill.png",
    flags = {"not-on-map"},
    hidden = true,
    subgroup = "extraction-machine-explosions",
    order = "b-b-b[big-mining-drill]",
    height = 0,
    animations = explosion_animations.big_explosion(),
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1,
    sound = sounds.large_explosion(0.7, 1.0),
    created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-particle",
            repeat_count = 5,
            probability = 1,
            particle_name = "oil-refinery-metal-particle-big",
            offset_deviation = { { -1.5, -1.5 }, { 1.5, 1.5 } },
            initial_height = 0.6,
            initial_height_deviation = 0.49,
            initial_vertical_speed = 0.088,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.03,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 38,
            probability = 1,
            particle_name = "oil-refinery-metal-particle-medium",
            offset_deviation = { { -1.5, -1.5 }, { 1.5, 1.5 } },
            initial_height = 0.6,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.098,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.07,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 25,
            probability = 1,
            particle_name = "foundry-metal-particle-big",
            offset_deviation = { { -1.5, -1.5 }, { 1.5, 1.5 } },
            initial_height = 0.8,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.075,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.04,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 20,
            particle_name = "foundry-metal-particle-small",
            offset_deviation = { { -1.5, -1.5 }, { 1.5, 1.5 } },
            initial_height = 0.5,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.06,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.04,
            speed_from_center_deviation = 0.05
          },
        }
      }
    }
  },
    {
    type = "explosion",
    name = "electromagnetic-plant-explosion",
    icon = "__base-age-plus__/graphics/icons/electromagnetic-plant.png",
    flags = {"not-on-map"},
    hidden = true,
    subgroup = "production-machine-explosions",
    order = "g[electromagnetic-plant]",
    height = 0,
    animations = explosion_animations.medium_explosion(),
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1,
    sound = sounds.large_explosion(0.6, 0.8),
    created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-particle",
            repeat_count = 10,
            probability = 1,
            particle_name = "oil-refinery-metal-particle-big",
            offsets =
            {
              { -0.0, -0.0 }
            },
            offset_deviation = { { -0.6875, -0.6875 }, { 0.6875, 0.6875 } },
            initial_height = 0.8,
            initial_height_deviation = 0.49,
            initial_vertical_speed = 0.088,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.03,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 38,
            probability = 1,
            particle_name = "oil-refinery-metal-particle-medium",
            offsets = { { 0, 0 }  },
            offset_deviation = { { -0.9805, -0.8867 }, { 0.9805, 0.8867 } },
            initial_height = 0.6,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.098,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.07,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 5,
            probability = 1,
            particle_name = "electromagnetic-plant-metal-particle-big",
            offset_deviation = { { -1.5, -1.5 }, { 1.5, 1.5 } },
            initial_height = 0.4,
            initial_height_deviation = 0.2,
            initial_vertical_speed = 0.075,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.04,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 25,
            probability = 1,
            particle_name = "electromagnetic-plant-metal-particle-medium",
            offset_deviation = { { -1.5, -1.5 }, { 1.5, 1.5 } },
            initial_height = 0.7,
            initial_height_deviation = 0.15,
            initial_vertical_speed = 0.06,
            initial_vertical_speed_deviation = 0.047,
            speed_from_center = 0.05,
            speed_from_center_deviation = 0.005
          },
          {
            type = "create-particle",
            repeat_count = 15,
            particle_name = "electromagnetic-plant-metal-particle-small",
            offset_deviation = { { -1.5, -1.5 }, { 1.5, 1.5 } },
            initial_height = 0.5,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.06,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.04,
            speed_from_center_deviation = 0.05
          },
        }
      }
    }
  },
  {
    type = "explosion",
    name = "heating-tower-explosion",
    icon = "__base-age-plus__/graphics/icons/heating-tower.png",
    flags = {"not-on-map"},
    hidden = true,
    subgroup = "energy-explosions",
    order = "i[heating-tower]",
    height = 0,
    animations = explosion_animations.medium_explosion(),
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1,
    sound = sounds.medium_explosion,
    created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-particle",
            repeat_count = 13,
            probability = 1,
            particle_name = "heating-tower-particle-big",
            offsets = { { 0, 0 }  },
            offset_deviation = {
              left_top = { -0.9805, -0.9805 },
              right_bottom = { 0.9805, 0.9805 }
            },
            initial_height = 0.2,
            initial_height_deviation = 0.3,
            initial_vertical_speed = 0.058,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.03,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 12,
            repeat_count_deviation = 0,
            probability = 1,
            affects_target = false,
            show_in_tooltip = false,
            particle_name = "oil-refinery-metal-particle-medium",
            offsets = {
              { 0, 0}
            },
            offset_deviation = {
              left_top = { -0.9805, -0.9805 },
              right_bottom = { 0.9805, 0.9805 }
            },
            tile_collision_mask = nil,
            initial_height = 0.5,
            initial_height_deviation = 0.3,
            initial_vertical_speed = 0.058,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.04,
            speed_from_center_deviation = 0.05,
            frame_speed = 1,
            frame_speed_deviation = 0,
            rotate_offsets = false
          },
          {
            type = "create-particle",
            repeat_count = 14,
            repeat_count_deviation = 0,
            probability = 1,
            affects_target = false,
            show_in_tooltip = false,
            particle_name = "heating-tower-particle-medium",
            offset_deviation = {
              left_top = { -0.5, -0.5 },
              right_bottom = { 0.5, 0.5 }
            },
            tile_collision_mask = nil,
            initial_height = 1.1,
            initial_height_deviation = 0.7,
            initial_vertical_speed = 0.1,
            initial_vertical_speed_deviation = 0.07,
            speed_from_center = 0.03,
            speed_from_center_deviation = 0.005,
            frame_speed = 1,
            frame_speed_deviation = 0,
            rotate_offsets = false
          },
          {
            type = "create-particle",
            repeat_count = 10,
            repeat_count_deviation = 0,
            probability = 1,
            affects_target = false,
            show_in_tooltip = false,
            particle_name = "metal-particle-small",

            offset_deviation = {
              left_top = { -0.5, -0.5 },
              right_bottom = { 0.5, 0.5 }
            },
            tile_collision_mask = nil,
            initial_height = 1.0,
            initial_height_deviation = 0.2,
            initial_vertical_speed = 0.1,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.04,
            speed_from_center_deviation = 0.05,
            frame_speed = 1,
            frame_speed_deviation = 0,
            rotate_offsets = false
          }
        }
      }
    }
  },
  {
    type = "explosion",
    name = "biolab-explosion",
    icon = "__base-age-plus__/graphics/icons/biolab.png",
    flags = {"not-on-map"},
    hidden = true,
    subgroup = "explosions",
    order = "b[biolab]",
    height = 0,
    animations = explosion_animations.medium_explosion(),
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1,
    sound = sounds.medium_explosion,
    created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-particle",
            repeat_count = 25,
            probability = 1,
            particle_name = "biolab-metal-particle-big",
            offset_deviation = { { -2.0, -2.0 }, { 2.0, 2.0 } },
            initial_height = 0.3,
            initial_height_deviation = 0.2,
            initial_vertical_speed = 0.075,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.04,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 30,
            probability = 1,
            particle_name = "biolab-metal-particle-medium",
            offset_deviation = { { -2.0, -2.0 }, { 2.0, 2.0 } },
            initial_height = 0.4,
            initial_height_deviation = 0.15,
            initial_vertical_speed = 0.06,
            initial_vertical_speed_deviation = 0.047,
            speed_from_center = 0.05,
            speed_from_center_deviation = 0.005
          },
          {
            type = "create-particle",
            repeat_count = 25,
            particle_name = "biolab-metal-particle-small",
            offset_deviation = { { -2.0, -2.0 }, { 2.0, 2.0 } },
            initial_height = 0.3,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.06,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.04,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 7,
            repeat_count_deviation = 0,
            probability = 1,
            affects_target = false,
            show_in_tooltip = false,
            particle_name = "blood-particle",
            offsets = {
              { 0.02344, -0.6016 }
            },
            offset_deviation = {
              left_top = { -0.5, -0.5 },
              right_bottom = { 0.5, 0.5 }
            },
            initial_height = 0.2,
            initial_height_deviation = 0.05,
            initial_vertical_speed = 0.062,
            initial_vertical_speed_deviation = 0.01,
            speed_from_center = 0.1,
            speed_from_center_deviation = 0.047,
            frame_speed = 1,
            frame_speed_deviation = 0,
            tail_length = 25,
            tail_length_deviation = 0,
            tail_width = 1,
            rotate_offsets = false
          },
          {
            type = "create-particle",
            repeat_count = 11,
            repeat_count_deviation = 0,
            probability = 1,
            affects_target = false,
            show_in_tooltip = false,
            particle_name = "blood-particle-carpet",
            offsets = {
              { 0, -0.3594 }
            },
            offset_deviation = {
              left_top = { -1, -1 },
              right_bottom = { 1, 1 }
            },
            initial_height = 0.1,
            initial_height_deviation = 0.05,
            initial_vertical_speed = 0.09,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.04,
            speed_from_center_deviation = 0,
            frame_speed = 1,
            frame_speed_deviation = 0,
            tail_length = 21,
            tail_length_deviation = 3,
            tail_width = 1,
            rotate_offsets = false
          },
          {
            type = "create-particle",
            repeat_count = 13,
            repeat_count_deviation = 1,
            probability = 1,
            affects_target = false,
            show_in_tooltip = false,
            particle_name = "blood-particle-carpet",
            offsets = {
              { 0, 0 }
            },
            offset_deviation = {
              left_top = { -1, -1 },
              right_bottom = { 1, 1 }
            },
            initial_height = 0.1,
            initial_height_deviation = 0.01,
            initial_vertical_speed = 0.018,
            initial_vertical_speed_deviation = 0.005,
            speed_from_center = 0.19,
            speed_from_center_deviation = 0.041,
            frame_speed = 1,
            frame_speed_deviation = 0,
            tail_length = 11,
            tail_length_deviation = 7,
            tail_width = 1,
            rotate_offsets = false
          },
          {
            type = "create-particle",
            repeat_count = 20,
            repeat_count_deviation = 5,
            probability = 1,
            affects_target = false,
            show_in_tooltip = false,
            particle_name = "internal-fluids-particle",
            offsets = {
              { 0.0, -0.3125 }
            },
            offset_deviation = {
              left_top = { -1, -1 },
              right_bottom = { 1, 1 }
            },
            initial_height = 0.3,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.055,
            initial_vertical_speed_deviation = 0.003,
            speed_from_center = 0.05,
            speed_from_center_deviation = 0.042,
            frame_speed = 1,
            frame_speed_deviation = 0,
            tail_length = 10,
            tail_length_deviation = 12,
            tail_width = 1,
            rotate_offsets = false
          },

          {
            type = "create-particle",
            repeat_count = 4,
            repeat_count_deviation = 2,
            probability = 1,
            affects_target = false,
            show_in_tooltip = false,
            particle_name = "guts-entrails-particle-small-medium",
            offsets = {
              { 0.0, -0.3281 }
            },
            offset_deviation = {
              left_top = { -0.5, -0.5 },
              right_bottom = { 0.5, 0.5 }
            },
            initial_height = 1,
            initial_height_deviation = 0.52,
            initial_vertical_speed = 0.078,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.07,
            speed_from_center_deviation = 0,
            frame_speed = 1,
            frame_speed_deviation = 0,
            rotate_offsets = false
          },
          {
            type = "create-particle",
            repeat_count = 4,
            repeat_count_deviation = 2,
            probability = 1,
            affects_target = false,
            show_in_tooltip = false,
            particle_name = "guts-entrails-particle-big",
            offsets = {
              { -0.01563, -0.3438 }
            },
            offset_deviation = {
              left_top = { -0.5, -0.5 },
              right_bottom = { 0.5, 0.5 }
            },
            initial_height = 1,
            initial_height_deviation = 0.52,
            initial_vertical_speed = 0.078,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.07,
            speed_from_center_deviation = 0,
            frame_speed = 1,
            frame_speed_deviation = 0,
            rotate_offsets = false
          },
          {
            type = "play-sound",
            sound = sounds.spawner_gore
          }
        }
      }
    }
  },
  {
    type = "explosion",
    name = "cryogenic-plant-explosion",
    icon = "__base-age-plus__/graphics/icons/cryogenic-plant.png",
    flags = {"not-on-map"},
    hidden = true,
    subgroup = "production-machine-explosions",
    order = "i[cryogenic-plant]",
    height = 0,
    animations = explosion_animations.big_explosion(),
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1,
    sound = sounds.large_explosion(0.7, 1.0),
    created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-particle",
            repeat_count = 15,
            probability = 1,
            particle_name = "oil-refinery-metal-particle-big",
            offsets = { { 0, 0 }  },
            offset_deviation = { { -1.9805, -1.8867 }, { 1.9805, 1.8867 } },
            initial_height = 0.6,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.098,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.07,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 25,
            probability = 1,
            particle_name = "cryogenic-plant-metal-particle-big",
            offset_deviation = { { -2.0, -2.0 }, { 2.0, 2.0 } },
            initial_height = 0.3,
            initial_height_deviation = 0.2,
            initial_vertical_speed = 0.075,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.04,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 30,
            probability = 1,
            particle_name = "cryogenic-plant-metal-particle-medium",
            offset_deviation = { { -2.0, -2.0 }, { 2.0, 2.0 } },
            initial_height = 0.4,
            initial_height_deviation = 0.15,
            initial_vertical_speed = 0.06,
            initial_vertical_speed_deviation = 0.047,
            speed_from_center = 0.05,
            speed_from_center_deviation = 0.005
          },
          {
            type = "create-particle",
            repeat_count = 25,
            particle_name = "cryogenic-plant-metal-particle-small",
            offset_deviation = { { -2.0, -2.0 }, { 2.0, 2.0 } },
            initial_height = 0.3,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.06,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.04,
            speed_from_center_deviation = 0.05
          },
        }
      }
    }
  },
  {
    type = "explosion",
    name = "fusion-reactor-explosion",
    icon = "__base-age-plus__/graphics/icons/fusion-reactor.png",
    flags = {"not-on-map"},
    hidden = true,
    subgroup = "energy-explosions",
    order = "g[fusion-energy]-a[reactor]",
    height = 0,
    animations = explosion_animations.big_explosion(),
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1,
    sound = sounds.large_explosion(0.7, 1.0),
    created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-particle",
            repeat_count = 20,
            probability = 1,
            particle_name = "oil-refinery-metal-particle-big",
            offsets = { { 0, 0 }  },
            offset_deviation = { { -1.9805, -1.8867 }, { 1.9805, 1.8867 } },
            initial_height = 0.6,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.138,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.09,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 30,
            probability = 1,
            particle_name = "fusion-reactor-metal-particle-big",
            offset_deviation = { { -2.5, -2.5 }, { 2.5, 2.5 } },
            initial_height = 0.3,
            initial_height_deviation = 0.2,
            initial_vertical_speed = 0.095,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.06,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 35,
            probability = 1,
            particle_name = "fusion-reactor-metal-particle-medium",
            offset_deviation = { { -2.5, -2.5 }, { 2.5, 2.5 } },
            initial_height = 0.4,
            initial_height_deviation = 0.15,
            initial_vertical_speed = 0.1,
            initial_vertical_speed_deviation = 0.047,
            speed_from_center = 0.08,
            speed_from_center_deviation = 0.005
          },
          {
            type = "create-particle",
            repeat_count = 30,
            particle_name = "fusion-reactor-metal-particle-small",
            offset_deviation = { { -2.5, -2.5 }, { 2.5, 2.5 } },
            initial_height = 0.3,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.1,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.06,
            speed_from_center_deviation = 0.05
          },
        }
      }
    }
  },
  {
    type = "explosion",
    name = "fusion-generator-explosion",
    icon = "__base-age-plus__/graphics/icons/fusion-generator.png",
    flags = {"not-on-map"},
    hidden = true,
    subgroup = "energy-explosions",
    order = "g[fusion-energy]-a[generator]",
    height = 0,
    animations = explosion_animations.big_explosion(),
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1,
    sound = sounds.large_explosion(0.6, 0.8),
    created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-particle",
            repeat_count = 15,
            probability = 1,
            particle_name = "oil-refinery-metal-particle-big",
            offsets = { { 0, 0 }  },
            offset_deviation = { { -1.5, -1.5 }, { 1.5, 1.5 } },
            initial_height = 0.3,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.098,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.07,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 20,
            probability = 1,
            particle_name = "fusion-reactor-metal-particle-big",
            offset_deviation = { { -1.5, -1.5 }, { 1.5, 1.5 } },
            initial_height = 0.2,
            initial_height_deviation = 0.2,
            initial_vertical_speed = 0.075,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.03,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 22,
            probability = 1,
            particle_name = "fusion-reactor-metal-particle-medium",
            offset_deviation = { { -1.5, -1.5 }, { 1.5, 1.5 } },
            initial_height = 0.3,
            initial_height_deviation = 0.15,
            initial_vertical_speed = 0.1,
            initial_vertical_speed_deviation = 0.047,
            speed_from_center = 0.05,
            speed_from_center_deviation = 0.005
          },
          {
            type = "create-particle",
            repeat_count = 22,
            particle_name = "fusion-reactor-metal-particle-small",
            offset_deviation = { { -1.5, -1.5 }, { 1.5, 1.5 } },
            initial_height = 0.2,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.1,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.03,
            speed_from_center_deviation = 0.05
          },
        }
      }
    }
  },
  {
    type = "explosion",
    name = "tesla-turret-explosion",
    icon = "__base-age-plus__/graphics/icons/tesla-turret.png",
    flags = {"not-on-map"},
    hidden = true,
    subgroup = "defensive-structure-explosions",
    order = "d-e-f",
    height = 0,
    animations = explosion_animations.big_explosion(),
    smoke = "smoke-fast",
    smoke_count = 6,
    smoke_slow_down_factor = 1,
    sound = sounds.small_explosion,
    created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-particle",
            repeat_count = 32,
            particle_name = "tesla-turret-metal-particle-big",
            offset_deviation = { { -0.75, -0.75 }, { 0.75, 0.75 } },
            initial_height = 0.6,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.1,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.04,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 40,
            particle_name = "tesla-turret-metal-particle-medium",
            offset_deviation = { { -0.75, -0.75 }, { 0.75, 0.75 } },
            initial_height = 0.6,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.1,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.05,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 25,
            particle_name = "tesla-turret-metal-particle-small",
            offset_deviation = { { -0.75, -0.75 }, { 0.75, 0.75 } },
            initial_height = 0.6,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.11,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.03,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 18,
            particle_name = "cable-and-electronics-particle-small-medium",
            offset_deviation = { { -0.75, -0.75 }, { 0.75, 0.75 } },
            initial_height = 0.6,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.11,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.03,
            speed_from_center_deviation = 0.05
          }
        }
      }
    }
  },
  {
    type = "explosion",
    name = "rocket-turret-explosion",
    icon = "__base-age-plus__/graphics/icons/rocket-turret.png",
    flags = {"not-on-map"},
    hidden = true,
    subgroup = "defensive-structure-explosions",
    order = "c-d-a",
    height = 0,
    animations = explosion_animations.medium_explosion(),
    smoke = "smoke-fast",
    smoke_count = 4,
    smoke_slow_down_factor = 1,
    sound = sounds.small_explosion,
    created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-particle",
            repeat_count = 22,
            particle_name = "rocket-turret-metal-particle-big",
            offset_deviation = { { -0.75, -0.75 }, { 0.75, 0.75 } },
            initial_height = 0.6,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.1,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.04,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 25,
            particle_name = "rocket-turret-metal-particle-medium",
            offset_deviation = { { -0.75, -0.75 }, { 0.75, 0.75 } },
            initial_height = 0.6,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.1,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.05,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 15,
            particle_name = "rocket-turret-metal-particle-small",
            offset_deviation = { { -0.75, -0.75 }, { 0.75, 0.75 } },
            initial_height = 0.6,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.11,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.03,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 18,
            particle_name = "cable-and-electronics-particle-small-medium",
            offset_deviation = { { -0.75, -0.75 }, { 0.75, 0.75 } },
            initial_height = 0.6,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.11,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.03,
            speed_from_center_deviation = 0.05
          }
        }
      }
    }
  },
  {
    type = "explosion",
    name = "railgun-beam",
    localised_name = {"entity-name.railgun-beam"},
    flags = {"not-on-map"},
    hidden = true,
    subgroup = "explosions",
    rotate = true,
    beam = true,
    animations =
    {
      {
        filename = "__base-age-plus__/graphics/entity/railgun-turret/railgun-beam.png",
        priority = "extra-high",
        width = 64,
        height = 440,
        frame_count = 16,
        animation_speed = 1,
        draw_as_glow = true,
        blend_mode = "additive"
      }
    },
    light = {intensity = 2, size = 20, color = {r = 0.55, g = 0.9, b = 0.9}},
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1
  },
  {
    type = "explosion",
    name = "railgun-turret-explosion",
    icon = "__base-age-plus__/graphics/icons/railgun-turret.png",
    flags = {"not-on-map"},
    hidden = true,
    subgroup = "defensive-structure-explosions",
    order = "c-d-i",
    height = 0.6,
    animations = explosion_animations.big_explosion(),
    smoke = "smoke-fast",
    smoke_count = 6,
    smoke_slow_down_factor = 1,
    sound = sounds.small_explosion,
    created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-particle",
            repeat_count = 32,
            particle_name = "railgun-turret-metal-particle-big",
            offset_deviation = { { -0.75, -0.75 }, { 0.75, 0.75 } },
            initial_height = 0.6,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.1,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.04,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 40,
            particle_name = "railgun-turret-metal-particle-medium",
            offset_deviation = { { -0.75, -0.75 }, { 0.75, 0.75 } },
            initial_height = 0.6,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.1,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.05,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 25,
            particle_name = "railgun-turret-metal-particle-small",
            offset_deviation = { { -0.75, -0.75 }, { 0.75, 0.75 } },
            initial_height = 0.6,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.11,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.03,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 18,
            particle_name = "cable-and-electronics-particle-small-medium",
            offset_deviation = { { -0.75, -0.75 }, { 0.75, 0.75 } },
            initial_height = 0.6,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.11,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.03,
            speed_from_center_deviation = 0.05
          }
        }
      }
    }
  },
})
