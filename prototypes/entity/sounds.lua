require("sound-util")
local sounds = {}

sounds.electromagnetic_plant =
{
  main_sounds =
  {
    {
      sound =
      {
        filename = "__base-age-plus__/sound/entity/electromagnetic-plant/electromagnetic-plant-warmup.ogg",
        volume = 0.6,
        audible_distance_modifier = 0.6,
      },
      play_for_working_visualisations = {"warm-up"},
    },
    {
      sound =
      {
        filename = "__base-age-plus__/sound/entity/electromagnetic-plant/electromagnetic-plant-loop.ogg",
        volume = 0.6,
        audible_distance_modifier = 0.6,
      },
      play_for_working_visualisations = {"rotation", "rotation-continue"},
      fade_in_ticks = 4,
      fade_out_ticks = 20,
    },
    {
      sound =
      {
        filename = "__base-age-plus__/sound/entity/electromagnetic-plant/electromagnetic-plant-cooldown.ogg",
        volume = 0.8,
        audible_distance_modifier = 0.6,
      },
      play_for_working_visualisations = {"cool-down"},
    },
  },
  sound_accents =
  {
    {
      sound =
      {
        filename = "__base-age-plus__/sound/entity/electromagnetic-plant/emp-arm-retract.ogg",
        volume = 0.35,
        audible_distance_modifier = 0.4,
      },
      play_for_working_visualisation = "warm-up",
      frame = 11,
    },
    {
      sound =
      {
        variations = sound_variations("__base-age-plus__/sound/entity/electromagnetic-plant/emp-coil", 2, 0.6),
        audible_distance_modifier = 0.4,
      },
      play_for_working_visualisation = "rotation",
      frame = 1,
    },
    {
      sound =
      {
        variations = sound_variations("__base-age-plus__/sound/entity/electromagnetic-plant/emp-coil", 2, 0.6),
        audible_distance_modifier = 0.4,
      },
      play_for_working_visualisation = "rotation",
      frame = 40,
    },
    {
      sound =
      {
        variations = sound_variations("__base-age-plus__/sound/entity/electromagnetic-plant/emp-coil", 2, 0.4),
        audible_distance_modifier = 0.4,
      },
      play_for_working_visualisation = "rotation",
      frame = 102,
    },
    {
      sound =
      {
        variations = sound_variations("__base-age-plus__/sound/entity/electromagnetic-plant/emp-riser-stop", 2, 0.6),
        audible_distance_modifier = 0.4,
      },
      play_for_working_visualisation = "rotation",
      frame = 93,
    },
    {
      sound =
      {
        filename = "__base-age-plus__/sound/entity/electromagnetic-plant/emp-bridge-close.ogg", volume = 0.4,
        audible_distance_modifier = 0.4,
      },
      play_for_working_visualisation = "rotation",
      frame = 33,
    },
    {
      sound =
      {
        filename = "__base-age-plus__/sound/entity/electromagnetic-plant/emp-bridge-open.ogg", volume = 0.4,
        audible_distance_modifier = 0.4,
      },
      play_for_working_visualisation = "rotation",
      frame = 50,
    },
    {
      sound =
      {
        variations = sound_variations("__base-age-plus__/sound/entity/electromagnetic-plant/emp-electric", 5, 0.4),
        audible_distance_modifier = 0.4,
      },
      play_for_working_visualisation = "rotation",
      frame = 35, --electric sparks to match bridge section close
    },
    {
      sound =
      {
        variations = sound_variations("__base-age-plus__/sound/entity/electromagnetic-plant/emp-electric", 5, 0.5),
        audible_distance_modifier = 0.5,
      },
      play_for_working_visualisation = "rotation",
      frame = 58,
    },
    {
      sound =
      {
        variations = sound_variations("__base-age-plus__/sound/entity/electromagnetic-plant/emp-slide-stop", 2, 0.4),
        audible_distance_modifier = 0.4,
      },
      play_for_working_visualisation = "rotation",
      frame = 102,
    },
    {
      sound =
      {
        variations = sound_variations("__base-age-plus__/sound/entity/electromagnetic-plant/emp-riser-stop", 2, 0.4),
        audible_distance_modifier = 0.4,
      },
      play_for_working_visualisation = "rotation-continue",
      frame = 14,
    },
    {
      sound =
      {
        variations = sound_variations("__base-age-plus__/sound/entity/electromagnetic-plant/emp-slide-stop", 2, 0.4),
        audible_distance_modifier = 0.4,
      },
      play_for_working_visualisation = "rotation-continue",
      frame = 3,
    },
    {
      sound =
      {
        variations = sound_variations("__base-age-plus__/sound/entity/electromagnetic-plant/emp-riser-stop", 2, 0.2),
        audible_distance_modifier = 0.4,
      },
      play_for_working_visualisation = "cool-down",
      frame = 31,
    },
    {
      sound =
      {
        filename = "__base-age-plus__/sound/entity/electromagnetic-plant/emp-arm-stop.ogg", volume = 0.45,
        audible_distance_modifier = 0.4,
      },
      play_for_working_visualisation = "cool-down",
      frame = 12,
    },
    {
      sound =
      {
        filename = "__base-age-plus__/sound/entity/electromagnetic-plant/emp-arm-extend.ogg", volume = 0.5,
        audible_distance_modifier = 0.4,
      },
      play_for_working_visualisation = "cool-down",
      frame = 1,
    },
    {
      sound =
      {
        filename = "__base-age-plus__/sound/entity/electromagnetic-plant/emp-arm-weld.ogg", volume = 0.9,
        audible_distance_modifier = 0.4,
      },
      play_for_working_visualisation = "cool-down-lights",
      frame = 12,
    },
  },
  max_sounds_per_prototype = 2
}

sounds.railgun_gunshot = sound_variations("__base-age-plus__/sound/entity/railgun/railgun-gunshot", 5, 0.8, volume_multiplier("main-menu", 0.9))
sounds.railgun_turret_gunshot = sound_variations("__base-age-plus__/sound/entity/railgun-turret/railgun-turret-gunshot", 5, 0.55, volume_multiplier("main-menu", 0.9))
sounds.railgun_turret_activate =
{
  variations = sound_variations("__base-age-plus__/sound/entity/railgun-turret/railgun-turret-activate", 1, 0.7),
  aggregation = {max_count = 2, remove = true, count_already_playing = true},
  advanced_volume_control =
  {
    fades = {fade_in = {curve_type = "S-curve", from = {control = 0.5, volume_percentage = 0.0}, to = {2, 100.0}}},
  }
}
sounds.railgun_turret_deactivate =
{
  variations = sound_variations("__base-age-plus__/sound/entity/railgun-turret/railgun-turret-deactivate", 1, 0.7),
  aggregation = {max_count = 2, remove = true, count_already_playing = true},
  advanced_volume_control =
  {
    fades = {fade_in = {curve_type = "S-curve", from = {control = 0.5, volume_percentage = 0.0}, to = {2, 100.0}}},
  }
}
sounds.railgun_turret_rotate =
{
  sound =
  {
    filename = "__base-age-plus__/sound/entity/railgun-turret/railgun-turret-rotation-loop.ogg", volume = 0.35,
    aggregation = {max_count = 2, remove = true, count_already_playing = true},
    advanced_volume_control =
    {
      fades = {fade_in = {curve_type = "S-curve", from = {control = 0.5, volume_percentage = 0.0 }, to = {1.5, 100.0}}},
    }
  },
  minimal_change_per_tick = 0.001,
  stopped_sound = {filename = "__base-age-plus__/sound/entity/railgun-turret/railgun-turret-rotation-stop.ogg", volume = 0.5},
  minimal_sound_duration_for_stopped_sound = 5
}


sounds.tesla_turret_rotate =
{
  sound =
  {
    filename = "__base-age-plus__/sound/entity/tesla-turret/tesla-turret-rotation-loop.ogg", volume = 0.7,
    aggregation = {max_count = 2, remove = true, count_already_playing = true},
    advanced_volume_control =
    {
      fades = {fade_in = {curve_type = "S-curve", from = {control = 0.5, volume_percentage = 0.0 }, to = {1.5, 100.0}}},
    }
  },
  stopped_sound = {filename = "__base-age-plus__/sound/entity/tesla-turret/tesla-turret-rotation-stop.ogg", volume = 0.7},
  minimal_change_per_tick = 0.001,
  minimal_sound_duration_for_stopped_sound = 5
}
sounds.tesla_turret_activate =
{
  filename = "__base-age-plus__/sound/entity/tesla-turret/tesla-turret-activate.ogg", volume = 0.8,
  aggregation = {max_count = 2, remove = true, count_already_playing = true},
  advanced_volume_control =
  {
    fades = {fade_in = {curve_type = "S-curve", from = {control = 0.5, volume_percentage = 0.0}, to = {2, 100.0}}},
  }
}
sounds.tesla_turret_deactivate =
{
  filename = "__base-age-plus__/sound/entity/tesla-turret/tesla-turret-deactivate.ogg", volume = 0.5,
  aggregation = {max_count = 2, remove = true, count_already_playing = true},
  advanced_volume_control =
  {
    fades = {fade_in = {curve_type = "S-curve", from = {control = 0.5, volume_percentage = 0.0}, to = {2, 100.0}}},
  }
}
sounds.tesla_turret_beam_deflect =
{
  variations = sound_variations("__base-age-plus__/sound/entity/tesla-turret/tesla-turret-beam-deflection", 6, 0.6),
  aggregation = {max_count = 2, remove = true, count_already_playing = true},
  advanced_volume_control =
  {
    fades = {fade_in = {curve_type = "S-curve", from = {control = 0.5, volume_percentage = 0.5}, to = {1, 100.0}}},
  }
}
sounds.tesla_turret_beam =
{
  start =
  {
    sound = {category = "weapon", filename = "__base-age-plus__/sound/entity/tesla-turret/tesla-turret-beam.ogg", volume = 1.0},
    max_sounds_per_prototype = 4
  },
  chain =
  {
    sound = {category = "weapon", filename = "__base-age-plus__/sound/entity/tesla-turret/tesla-turret-chain-beam.ogg", volume = 0.8},
    max_sounds_per_prototype = 4
  }
}

sounds.tesla_gun_beam =
{
  start =
  {
    sound = {category = "weapon", filename = "__base-age-plus__/sound/entity/tesla-turret/tesla-turret-beam.ogg", volume = 0.5},
    max_sounds_per_prototype = 2
  },
  chain =
  {
    sound = {category = "weapon", filename = "__base-age-plus__/sound/entity/tesla-turret/tesla-turret-chain-beam.ogg", volume = 0.4},
    max_sounds_per_prototype = 2
  }
}


return sounds
