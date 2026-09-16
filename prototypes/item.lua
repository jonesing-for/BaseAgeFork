local sounds = require("__base__.prototypes.entity.sounds")
local item_sounds = require("__base__.prototypes.item_sounds")
local smoke_animations = require("__base__.prototypes.entity.smoke-animations")

data:extend({
	{
		type = "item",
		name = "turbo-transport-belt",
		icon = "__base-age-plus__/graphics/icons/turbo-transport-belt.png",
		subgroup = "belt",
		color_hint = { text = "4" },
		order = "a[transport-belt]-d[turbo-transport-belt]",
		inventory_move_sound = item_sounds.transport_belt_inventory_move,
		pick_sound = item_sounds.transport_belt_inventory_pickup,
		drop_sound = item_sounds.transport_belt_inventory_move,
		place_result = "turbo-transport-belt",
		stack_size = 100
	},
	{
		type = "item",
		name = "turbo-underground-belt",
		icon = "__base-age-plus__/graphics/icons/turbo-underground-belt.png",
		subgroup = "belt",
		color_hint = { text = "4" },
		order = "b[underground-belt]-d[turbo-underground-belt]",
		inventory_move_sound = item_sounds.mechanical_inventory_move,
		pick_sound = item_sounds.mechanical_inventory_pickup,
		drop_sound = item_sounds.mechanical_inventory_move,
		place_result = "turbo-underground-belt",
		stack_size = 50
	},
	{
		type = "item",
		name = "turbo-splitter",
		icon = "__base-age-plus__/graphics/icons/turbo-splitter.png",
		subgroup = "belt",
		color_hint = { text = "4" },
		order = "c[splitter]-d[turbo-splitter]",
		inventory_move_sound = item_sounds.mechanical_inventory_move,
		pick_sound = item_sounds.mechanical_inventory_pickup,
		drop_sound = item_sounds.mechanical_inventory_move,
		place_result = "turbo-splitter",
		stack_size = 50
	},
	{
		type = "item",
		name = "turbo-loader",
		icon = "__base-age-plus__/graphics/icons/turbo-loader.png",
		hidden = true,
		subgroup = "belt",
		color_hint = { text = "4" },
		order = "d[loader]-d[turbo-loader]",
		inventory_move_sound = item_sounds.mechanical_inventory_move,
		pick_sound = item_sounds.mechanical_inventory_pickup,
		drop_sound = item_sounds.mechanical_inventory_move,
		place_result = "turbo-loader",
		stack_size = 50
	},
	{
    	type = "item",
    	name = "stack-inserter",
    	icon = "__base-age-plus__/graphics/icons/stack-inserter.png",
    	subgroup = "inserter",
    	color_hint = { text = "S" },
    	order = "h[stack-inserter]",
    	inventory_move_sound = item_sounds.wire_inventory_move,
    	pick_sound = item_sounds.wire_inventory_pickup,
    	drop_sound = item_sounds.wire_inventory_move,
    	place_result = "stack-inserter",
    	stack_size = 50
  	},
	{
    	type = "item",
    	name = "foundry",
    	icon = "__base-age-plus__/graphics/icons/foundry.png",
    	subgroup = "smelting-machine",
    	order = "d[foundry]",
    	inventory_move_sound = item_sounds.steam_inventory_move,
    	pick_sound = item_sounds.steam_inventory_pickup,
   		drop_sound = item_sounds.steam_inventory_move,
    	place_result = "foundry",
    	stack_size = 20
  	},
	{
    	type = "item",
   		name = "big-mining-drill",
    	icon = "__base-age-plus__/graphics/icons/big-mining-drill.png",
    	subgroup = "extraction-machine",
    	order = "a[items]-c[big-mining-drill]",
    	inventory_move_sound = item_sounds.drill_inventory_move,
    	pick_sound = item_sounds.drill_inventory_pickup,
    	drop_sound = item_sounds.drill_inventory_move,
    	place_result = "big-mining-drill",
    	stack_size = 20
  	},
	{
    	type = "item",
    	name = "electromagnetic-plant",
    	icon = "__base-age-plus__/graphics/icons/electromagnetic-plant.png",
    	subgroup = "production-machine",
    	order = "g[electromagnetic-plant]",
    	inventory_move_sound = item_sounds.electric_large_inventory_move,
    	pick_sound = item_sounds.electric_large_inventory_pickup,
    	drop_sound = item_sounds.electric_large_inventory_move,
    	place_result = "electromagnetic-plant",
    	stack_size = 20
  	},
	{
    	type = "item",
    	name = "heating-tower",
    	icon = "__base-age-plus__/graphics/icons/heating-tower.png",
    	subgroup = "energy",
    	order = "i[heating-tower]",
    	inventory_move_sound = item_sounds.steam_inventory_move,
    	pick_sound = item_sounds.steam_inventory_pickup,
    	drop_sound = item_sounds.steam_inventory_move,
    	place_result = "heating-tower",
    	stack_size = 20
 	},
  	{
    	type = "item",
    	name = "biolab",
    	icon = "__base-age-plus__/graphics/icons/biolab.png",
    	subgroup = "production-machine",
    	order = "z[z-biolab]",
    	inventory_move_sound = item_sounds.mechanical_inventory_move,
    	pick_sound = item_sounds.mechanical_inventory_pickup,
    	drop_sound = item_sounds.mechanical_inventory_move,
    	place_result = "biolab",
    	stack_size = 5
  	},
	{
    	type = "item",
    	name = "cryogenic-plant",
    	icon = "__base-age-plus__/graphics/icons/cryogenic-plant.png",
    	subgroup = "production-machine",
    	order = "h[cryogenic-plant]",
    	inventory_move_sound = item_sounds.mechanical_large_inventory_move,
    	pick_sound = item_sounds.mechanical_large_inventory_pickup,
    	drop_sound = item_sounds.mechanical_large_inventory_move,
    	place_result = "cryogenic-plant",
    	stack_size = 20
  	},
	{
    	type = "item",
    	name = "fusion-power-cell",
    	icon = "__base-age-plus__/graphics/icons/fusion-power-cell.png",
    	subgroup = "uranium-processing",
    	order = "c[fusion-energy]-d[fusion-power-cell]",
    	inventory_move_sound = item_sounds.reactor_inventory_move,
    	pick_sound = item_sounds.reactor_inventory_pickup,
    	drop_sound = item_sounds.reactor_inventory_move,
    	fuel_value = "40GJ",
    	fuel_category = "nuclear",
    	stack_size = 50
  	},
  	{
    	type = "item",
    	name = "fusion-reactor",
    	icon = "__base-age-plus__/graphics/icons/fusion-reactor.png",
    	subgroup = "energy",
    	order = "g[fusion-energy]-a[reactor]",
    	inventory_move_sound = item_sounds.reactor_inventory_move,
    	pick_sound = item_sounds.reactor_inventory_pickup,
    	drop_sound = item_sounds.reactor_inventory_move,
    	place_result = "fusion-reactor",
    	stack_size = 1
  	},
  	{
    	type = "item",
    	name = "fusion-generator",
    	icon = "__base-age-plus__/graphics/icons/fusion-generator.png",
    	subgroup = "energy",
    	order = "g[fusion-energy]-b[generator]",
    	inventory_move_sound = item_sounds.reactor_inventory_move,
    	pick_sound = item_sounds.reactor_inventory_pickup,
    	drop_sound = item_sounds.reactor_inventory_move,
    	place_result = "fusion-generator",
    	stack_size = 5
  	},
	{
    	type = "equipment-grid",
    	name = "huge-equipment-grid",
    	width = 10,
    	height = 12,
    	equipment_categories = {"armor"}
  	},
	smoke_animations.trivial_smoke
	{
    	name = "mech-armor-smoke",
    	color = {r = 0.5, g = 0.5, b = 0.5, a = 0.5},
    	duration = 50,
    	spread_duration = 50,
    	fade_in_duration = 10,
    	fade_away_duration = 40,
   	 	start_scale = 0.1,
    	end_scale = 0.3
  	},
	{
		type = "armor",
		name = "mech-armor",
		icon = "__base-age-plus__/graphics/icons/mech-armor.png",
		resistances =
		{
		{
			type = "physical",
			decrease = 10,
			percent = 50
		},
		{
			type = "acid",
			decrease = 0,
			percent = 70
		},
		{
			type = "explosion",
			decrease = 60,
			percent = 50
		},
		{
			type = "fire",
			decrease = 10,
			percent = 70
		}
		},
		subgroup = "armor",
		order = "f[mech-armor]",
		factoriopedia_simulation =
		{
			init =
				[[
				game.simulation.camera_zoom = 3.5
				game.simulation.camera_position = {0.5, -0.4}
				local character = game.surfaces[1].create_entity{name = "character", position = {0.5, 0.5}, force = "player", direction = defines.direction.south}
				character.insert{name = "mech-armor"}
				]]
		},
		inventory_move_sound = item_sounds.armor_large_inventory_move,
		pick_sound = item_sounds.armor_large_inventory_pickup,
		drop_sound = item_sounds.armor_large_inventory_move,
		stack_size = 1,
		infinite = true,
		equipment_grid = "huge-equipment-grid",
		inventory_size_bonus = 50,
		--character_health_bonus = 1000, -- not implemented in current version
		provides_flight = true,
		takeoff_sound = {filename = "__base-age-plus__/sound/entity/mech-armor/mech-armor-takeoff.ogg", volume = 0.2, aggregation = {max_count = 2, remove = true, count_already_playing = true}},
		landing_sound = {filename = "__base-age-plus__/sound/entity/mech-armor/mech-armor-land.ogg", volume = 0.3, aggregation = {max_count = 2, remove = true, count_already_playing = true}},
		flight_sound = {sound={filename = "__base-age-plus__/sound/entity/mech-armor/mech-armor-flight.ogg", volume = 0.2}},
		steps_sound = 
		{
		variations = sound_variations("__base-age-plus__/sound/entity/mech-armor/mech-armor-steps-metallic", 5, 0.2),
		advanced_volume_control = default_tile_sounds_advanced_volume_control(),
		},
		moving_sound = 
		{
		variations = sound_variations("__base-age-plus__/sound/entity/mech-armor/mech-armor-moves", 10, 0.4),
		advanced_volume_control = default_tile_sounds_advanced_volume_control(),
		},
		collision_box = {{-0.25, -0.25}, {0.25, 0.25}},
		drawing_box = {{-0.4, -2}, {0.4, 0}},
		open_sound = sounds.armor_open,
		close_sound = sounds.armor_close
  	},
	{
		type = "item",
		name = "toolbelt-equipment",
		icon = "__base-age-plus__/graphics/icons/toolbelt-equipment.png",
		place_as_equipment_result = "toolbelt-equipment",
		subgroup = "utility-equipment",
		order = "g[toolbelt]-a[night-vision-equipment]",
		inventory_move_sound = item_sounds.armor_small_inventory_move,
		pick_sound = item_sounds.armor_small_inventory_pickup,
		drop_sound = item_sounds.armor_small_inventory_move,
		stack_size = 20
	},
	{
		type = "item",
		name = "battery-mk3-equipment",
		localised_description = {"item-description.battery-equipment"},
		icon = "__base-age-plus__/graphics/icons/battery-mk3-equipment.png",
		place_as_equipment_result = "battery-mk3-equipment",
		subgroup = "equipment",
		order = "b[battery]-c[battery-equipment-mk3]",
		inventory_move_sound = item_sounds.electric_small_inventory_move,
		pick_sound = item_sounds.electric_small_inventory_pickup,
		drop_sound = item_sounds.electric_small_inventory_move,
		stack_size = 20
	},
	{
		type = "item",
		name = "fusion-reactor-equipment",
		icon = "__base-age-plus__/graphics/icons/fusion-reactor-equipment.png",
		place_as_equipment_result = "fusion-reactor-equipment",
		subgroup = "equipment",
		order = "a[energy-source]-c[fusion-reactor]",
		inventory_move_sound = item_sounds.reactor_inventory_move,
		pick_sound = item_sounds.reactor_inventory_pickup,
		drop_sound = item_sounds.reactor_inventory_move,
		stack_size = 20
	},
	{
		type = "gun",
		name = "teslagun",
		icon = "__base-age-plus__/graphics/icons/teslagun.png",
		subgroup = "gun",
		order = "a[basic-clips]-h[teslagun]",
		inventory_move_sound = item_sounds.weapon_large_inventory_move,
		pick_sound = item_sounds.weapon_large_inventory_pickup,
		drop_sound = item_sounds.weapon_large_inventory_move,
		attack_parameters =
		{
		type = "beam",
		ammo_category = "tesla",
		cooldown = 60,
		movement_slow_down_factor = 0.25,
		source_offset = {0.1, -0.75},
		source_direction_count = 8,
		range = 24
		},
		stack_size = 5
	},
	{
		type = "item",
		name = "tesla-turret",
		icon = "__base-age-plus__/graphics/icons/tesla-turret.png",
		subgroup = "turret",
		order = "b[turret]-f[tesla-turret]-a[turret]",
		inventory_move_sound = item_sounds.turret_inventory_move,
		pick_sound = item_sounds.turret_inventory_pickup,
		drop_sound = item_sounds.turret_inventory_move,
		place_result = "tesla-turret",
		stack_size = 10,
		weight = 100*kg
	},
	{
	  type = "ammo",
	  name = "tesla-ammo",
	  icon = "__base-age-plus__/graphics/icons/tesla-ammo.png",
	  ammo_category = "tesla",
	  ammo_type =
		{
		  target_type = "entity",
		  action =
		  {
			type = "direct",
			action_delivery =
			{
			  type = "instant",
			  target_effects =
			  {
				-- Chain effect must go first in case the beam kills the target
				{
				  type = "nested-result",
				  action =
				  {
					type = "direct",
					action_delivery =
					{
					  type = "chain",
					  chain = "chain-tesla-gun-chain",
					}
				  }
				},
				{
				  type = "nested-result",
				  action =
				  {
					type = "direct",
					action_delivery =
					{
					  type = "beam",
					  beam = "chain-tesla-gun-beam-start",
					  source_offset = {0, -1.31439 },
					  max_length = 30,
					  duration = 30,
					  add_to_shooter = false,
					  destroy_with_source_or_target = false
					}
				  }
				}
			  }
			}
		  }
		},
		subgroup = "ammo",
		order = "e[railgun-ammo]-a[basic]",
		inventory_move_sound = item_sounds.ammo_large_inventory_move,
		pick_sound = item_sounds.ammo_large_inventory_pickup,
		drop_sound = item_sounds.ammo_large_inventory_move,
		stack_size = 100,
		magazine_size = 10
	},	
})
