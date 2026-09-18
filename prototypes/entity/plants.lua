local function minor_tints() -- Only for leaves where most if the colour is baked in.
    return {
      {r = 255, g = 255, b =  255},
      {r = 220, g = 255, b =  255},
      {r = 255, g = 220, b =  255},
      {r = 255, g = 255, b =  220},
      {r = 220, g = 220, b =  255},
      {r = 255, g = 220, b =  220},
      {r = 220, g = 255, b =  220},
    }
  end

local seconds = 60
local minutes = 60*seconds

local gleba_tree_particle_effects =
{
  ["planted-tree"] =    { crop_2 = "yumako-leaf-particle",
                        trunk_2 = "yumako-branch-particle"
                      }
}

local gleba_tree_underwater_things =
{
  --[[
  -- hack for testing the implementation
  ["hairyclubnub"] =
  {
    underwater =
    {
      layers = {
          util.sprite_load("__elevated-rails__/graphics/entity/elevated-rail-pylon/elevated-rail-pylon-underwater",
                           {
                             frame_count = 1,
                             scale = 0.25
                           })
        }
    },
    water_reflection =
    {
      pictures = util.sprite_load("__elevated-rails__/graphics/entity/elevated-rail-pylon/elevated-rail-pylon-reflection",
                                  {
                                    priority = "extra-high",
                                    variation_count = 1,
                                    scale = 0.25
                                  }),
      rotate = false,
    }
  }
  --]]
}

local function gleba_tree_variation_progression_frames(name, suffix, progression_frames, width, height, x, y, shift, scale_multiplier, surface, flags)
    local partial_path = "__base-age-plus__/graphics/entity/plant/" .. name .. "/" .. name .. "-" .. suffix
    local filenames = {}
    for i=1,progression_frames do
      filenames[i] = (i == 1 and partial_path or partial_path .. "-" .. i) .. ".png"
    end
    return
    {
      filenames = filenames,
      frame_count = progression_frames,
      lines_per_file = 1,
      line_length = 1,
      flags = flags,
      surface = surface,
      width = width,
      height = height,
      x = x,
      y = y,
      shift = shift,
      scale = 0.33 * scale_multiplier
    }
  end

local function gleba_tree_variations(name, variation_count, per_row, scale_multiplier, width, height, shift, reflection_shift, surface, progression_frames)
    variation_count = variation_count or 5
    per_row = per_row or 5
    scale_multiplier = scale_multiplier or 1
    surface = surface or "gleba"
    progression_frames = progression_frames or 1
    local width = width or 640
    local height = height or 560
    local variations = {}
    local shift = shift or util.by_pixel(52, -40)
    local reflection_shift = reflection_shift or util.by_pixel(52, 80)
  
   -- local reflection_shift = {shift[0], shift[1]} --or util.by_pixel(52, 40)
  
    local sap_particle = gleba_tree_particle_effects[name] and gleba_tree_particle_effects[name].sap
    local leaf_particle_1 = gleba_tree_particle_effects[name] and gleba_tree_particle_effects[name].leaf_1
    local leaf_particle_2 = gleba_tree_particle_effects[name] and gleba_tree_particle_effects[name].leaf_2
    local leaf_particle_3 = gleba_tree_particle_effects[name] and gleba_tree_particle_effects[name].leaf_3
    local crop_particle_1 = gleba_tree_particle_effects[name] and gleba_tree_particle_effects[name].crop_1
    local crop_particle_2 = gleba_tree_particle_effects[name] and gleba_tree_particle_effects[name].crop_2
    local crop_particle_3 = gleba_tree_particle_effects[name] and gleba_tree_particle_effects[name].crop_3
    local crop_particle_4 = gleba_tree_particle_effects[name] and gleba_tree_particle_effects[name].crop_4
    local slime_particle = gleba_tree_particle_effects[name] and gleba_tree_particle_effects[name].slime
    local trunk_particle_1 = gleba_tree_particle_effects[name] and gleba_tree_particle_effects[name].trunk_1
    local trunk_particle_2 = gleba_tree_particle_effects[name] and gleba_tree_particle_effects[name].trunk_2
    local trunk_particle_3 = gleba_tree_particle_effects[name] and gleba_tree_particle_effects[name].trunk_3
    local spongy_particle = gleba_tree_particle_effects[name] and gleba_tree_particle_effects[name].spongy
    local water_cane_particle = gleba_tree_particle_effects[name] and gleba_tree_particle_effects[name].water_cane
    local water_cane_top_particle = gleba_tree_particle_effects[name] and gleba_tree_particle_effects[name].water_cane_top
    local jellystem_particle = gleba_tree_particle_effects[name] and gleba_tree_particle_effects[name].jellystem
  
    for i = 1, variation_count do
      local x = ((i - 1) % per_row) * width
      local y = math.floor((i-1)/per_row) * height
      local variation = {
        trunk = {
          filename = "__base-age-plus__/graphics/entity/plant/"..name.."/"..name.."-trunk.png",
          flags = { "mipmap" },
          surface = "gleba",
          width = width,
          height = height,
          x = x,
          y = y,
          frame_count = 1,
          shift = shift,
          scale = 0.33 * scale_multiplier
        },
        leaves = gleba_tree_variation_progression_frames(name, "harvest", progression_frames, width, height, x, y, shift, scale_multiplier, surface, {"mipmap"}),
        normal = gleba_tree_variation_progression_frames(name, "normal", progression_frames, width, height, x, y, shift, scale_multiplier, surface),
        shadow = gleba_tree_variation_progression_frames(name, "harvest-shadow", progression_frames, width, height, x, y, shift, scale_multiplier, surface, {"mipmap", "shadow"}),
  
        underwater       = gleba_tree_underwater_things[name] and gleba_tree_underwater_things[name].underwater or nil,
        --water_reflection = gleba_tree_underwater_things[name] and gleba_tree_underwater_things[name].water_reflection or nil,
  
        water_reflection = {
          pictures = {
          filename = "__base-age-plus__/graphics/entity/plant/"..name.."/"..name.."-effect-map.png",
          --flags = { "mipmap" },
          surface = surface,
          width = width,
          height = height,
          x = x,
          y = y,
          --frame_count = 1,
          shift = reflection_shift,
          scale = 0.33 * scale_multiplier
          }
        } or nil,
  
        leaf_generation = {},
        branch_generation = {},
  
        leaves_when_damaged = 100,
        leaves_when_destroyed = 35,
        leaves_when_mined_manually = 40,
        leaves_when_mined_automatically = 16,
        branches_when_damaged = 20,
        branches_when_destroyed = 16,
        branches_when_mined_manually = 15,
        branches_when_mined_automatically = 8
      }
      table.insert(variation.shadow.filenames, "__base-age-plus__/graphics/entity/plant/"..name.."/"..name.."-shadow.png")
      variation.shadow.frame_count = variation.shadow.frame_count + 1
  
      if sap_particle then -- jellystem
        variation.leaf_generation = {
          type = "create-particle",
          particle_name = sap_particle,
          offset_deviation =
          {
            {-0.8, -1.2},
            {0.8, 1.2}
          },
          initial_height = 1.5,
          initial_height_deviation = 0.5,
          initial_vertical_speed = 0.06 ,
          initial_vertical_speed_deviation = 0.15,
          speed_from_center = 0.025 ,
          speed_from_center_deviation = 0.05,
          frame_speed = 1,
          frame_speed_deviation = 0.5,
          tail_length = 10,
          tail_length_deviation = 5,
          tail_width = 5,
          rotate_offsets = false,
          only_when_visible = true
        }
        variation.leaves_when_damaged = 50
        variation.leaves_when_destroyed = 35
        variation.leaves_when_mined_manually = 40
        variation.leaves_when_mined_automatically = 16
      end
  
      if slime_particle then -- slipstack
        variation.leaf_generation = {
          type = "create-particle",
          particle_name = slime_particle,
          offset_deviation =
          {
            {-0.6, -0.6},
            {0.6, 0.6}
          },
          initial_height = 2.3,
          initial_height_deviation = 0.05,
          initial_vertical_speed = 0.14 ,
          initial_vertical_speed_deviation = 0.05,
          speed_from_center = 0.013 ,
          speed_from_center_deviation = 0.02,
          frame_speed = 1,
          frame_speed_deviation = 0,
          only_when_visible = true
        }
      end
  
      if leaf_particle_1 then -- teflilly
        variation.leaf_generation = {
          type = "create-particle",
          particle_name = leaf_particle_1,
          offset_deviation = {{-1, -0.8}, {1, 0.8}},
          initial_height = 2.8,
          initial_height_deviation = 0.035,
          initial_vertical_speed = 0.025,
          initial_vertical_speed_deviation = 0.13,
          speed_from_center = 0.015,
          speed_from_center_deviation = 0.025,
          frame_speed = 0.6,
          only_when_visible = true
        }
        variation.leaves_when_damaged = 15
        variation.leaves_when_destroyed = 40
        variation.leaves_when_mined_manually = 35
        variation.leaves_when_mined_automatically = 25
      end
  
      if leaf_particle_2 then -- stingfrond
        variation.leaf_generation = {
          type = "create-particle",
          particle_name = leaf_particle_2,
          offset_deviation = {{-0.8, -0.6}, {0.8, 0.6}},
          initial_height = 2,
          initial_height_deviation = 0.035,
          initial_vertical_speed = 0.025,
          initial_vertical_speed_deviation = 0.13,
          speed_from_center = 0.015,
          speed_from_center_deviation = 0.025,
          frame_speed = 0.6,
          only_when_visible = true
        }
        variation.leaves_when_damaged = 20
        variation.leaves_when_destroyed = 40
        variation.leaves_when_mined_manually = 40
        variation.leaves_when_mined_automatically = 20
      end
  
      if leaf_particle_3 then -- hairy-clubnub
        variation.leaf_generation = {
          type = "create-particle",
          particle_name = leaf_particle_3,
          offset_deviation = {{-1.2, -1}, {1.2, 1}},
          initial_height = 2.7,
          initial_height_deviation = 0.035,
          initial_vertical_speed = 0.025,
          initial_vertical_speed_deviation = 0.13,
          speed_from_center = 0.005,
          speed_from_center_deviation = 0.025,
          frame_speed = 0.6,
          only_when_visible = true
        }
        variation.leaves_when_damaged = 30
        variation.leaves_when_destroyed = 40
        variation.leaves_when_mined_manually = 35
        variation.leaves_when_mined_automatically = 20
      end
  
      if crop_particle_1 then -- funneltrunk, lickmaw, sunnycomb
        variation.leaf_generation = {
          type = "create-particle",
          particle_name = crop_particle_1,
          repeat_count = 16,
          offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}},
          initial_height = 3,
          initial_height_deviation = 0.035,
          initial_vertical_speed = 0.025,
          initial_vertical_speed_deviation = 0.15,
          speed_from_center = 0.02,
          speed_from_center_deviation = 0.045,
          only_when_visible = true
        }
        if name == "funneltrunk" then
          variation.leaves_when_damaged = 50
        else
          variation.leaves_when_damaged = 30
        end
        variation.leaves_when_destroyed = 40
        variation.leaves_when_mined_manually = 40
        variation.leaves_when_mined_automatically = 20
      end
  
      if crop_particle_2 then -- yumako
        variation.leaf_generation = {
          type = "create-particle",
          particle_name = crop_particle_2,
          offset_deviation = {{-1, -1}, {1, 1}},
          initial_height = 2.5,
          initial_height_deviation = 0.035,
          initial_vertical_speed = 0.025,
          initial_vertical_speed_deviation = 0.15,
          speed_from_center = 0.03,
          speed_from_center_deviation = 0.045,
          only_when_visible = true
        }
        variation.leaves_when_damaged = 25
        variation.leaves_when_destroyed = 35
        variation.leaves_when_mined_manually = 40
        variation.leaves_when_mined_automatically = 16
      end
  
      if crop_particle_3 then -- boompuff
        variation.leaf_generation = {
          type = "create-particle",
          particle_name = crop_particle_3,
          offset_deviation = {{-0.8, -0.8}, {0.8, 0.8}},
          initial_height = 2,
          initial_height_deviation = 0.035,
          initial_vertical_speed = 0.025,
          initial_vertical_speed_deviation = 0.15,
          speed_from_center = 0.05,
          speed_from_center_deviation = 0.065,
          only_when_visible = true
        }
        variation.leaves_when_damaged = 18
        variation.leaves_when_destroyed = 35
        variation.leaves_when_mined_manually = 40
        variation.leaves_when_mined_automatically = 16
      end
  
      if crop_particle_4 then -- cuttlepop
        variation.leaf_generation = {
          type = "create-particle",
          particle_name = crop_particle_4,
          offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}},
          initial_height = 2.2,
          initial_height_deviation = 0.035,
          initial_vertical_speed = 0.025,
          initial_vertical_speed_deviation = 0.15,
          speed_from_center = 0.02,
          speed_from_center_deviation = 0.045,
          only_when_visible = true
        }
        variation.leaves_when_damaged = 30
        variation.leaves_when_destroyed = 40
        variation.leaves_when_mined_manually = 35
        variation.leaves_when_mined_automatically = 25
      end
  
      if trunk_particle_1 then -- teflilly, stingfrond
        variation.branch_generation = {
          type = "create-particle",
          particle_name = trunk_particle_1,
          offset_deviation = {{-0.4, -0.8}, {0.4, 0.8}},
          initial_height = 1.5,
          initial_height_deviation = 1.5,
          initial_vertical_speed = 0.01,
          initial_vertical_speed_deviation = 0.15,
          speed_from_center = 0.035,
          speed_from_center_deviation = 0.015,
          frame_speed = 0.8,
          only_when_visible = true
        }
        variation.branches_when_damaged = 30
        variation.branches_when_destroyed = 40
        variation.branches_when_mined_manually = 35
        variation.branches_when_mined_automatically = 8
      end
  
      if trunk_particle_2 then -- yumako, hairyclubnub
        variation.branch_generation = {
          type = "create-particle",
          particle_name = trunk_particle_2,
          offset_deviation = {{-0.8, -1.4}, {0.8, 1.4}},
          initial_height = 1.7,
          initial_height_deviation = 1.5,
          initial_vertical_speed = 0.025,
          initial_vertical_speed_deviation = 0.15,
          speed_from_center = 0.035,
          speed_from_center_deviation = 0.02,
          only_when_visible = true
        }
        variation.branches_when_damaged = 40
        variation.branches_when_destroyed = 50
        variation.branches_when_mined_manually = 40
        variation.branches_when_mined_automatically = 20
      end
  
      if trunk_particle_3 then -- boompuff
        variation.branch_generation = {
          type = "create-particle",
          particle_name = trunk_particle_3,
          offset_deviation = {{-0.8, -0.8}, {0.8, 0.8}},
          initial_height = 1.3,
          initial_height_deviation = 2,
          initial_vertical_speed = 0.01,
          initial_vertical_speed_deviation = 0.15,
          speed_from_center = 0.045,
          speed_from_center_deviation = 0.02,
          only_when_visible = true
        }
        variation.branches_when_damaged = 30
        variation.branches_when_destroyed = 30
        variation.branches_when_mined_manually = 30
        variation.branches_when_mined_automatically = 15
      end
  
      if jellystem_particle then -- jellystem
        variation.branch_generation = {
          type = "create-particle",
          particle_name = jellystem_particle,
          offset_deviation = {{-0.65, -1}, {0.65, 1}},
          initial_height = 1.7,
          initial_height_deviation = 0.8,
          initial_vertical_speed = 0.025,
          initial_vertical_speed_deviation = 0.15,
          speed_from_center = 0.035,
          speed_from_center_deviation = 0.02,
          frame_speed = 0.8,
          only_when_visible = true
        }
        variation.branches_when_damaged = 30
        variation.branches_when_destroyed = 40
        variation.branches_when_mined_manually = 35
        variation.branches_when_mined_automatically = 8
      end
  
      if spongy_particle then -- cuttlepop, slipstack, funneltrunk, lickmaw, sunnycomb
        variation.branch_generation = {
          type = "create-particle",
          particle_name = spongy_particle,
          offset_deviation = {{-0.8, -1.5}, {0.8, 1.5}},
          initial_height = 1.7,
          initial_height_deviation = 0.6,
          initial_vertical_speed = 0.02,
          initial_vertical_speed_deviation = 0.15,
          speed_from_center = 0.03,
          speed_from_center_deviation = 0.04,
          frame_speed = 0.8,
          only_when_visible = true
        }
        if name == "funneltrunk" then
          variation.branches_when_damaged = 60
          variation.branches_when_mined_automatically = 25
        else
          variation.branches_when_damaged = 40
          variation.branches_when_mined_automatically = 16
        end
        variation.branches_when_destroyed = 40
        variation.branches_when_mined_manually = 35
      end
  
      if water_cane_top_particle then -- water-cane
        variation.leaf_generation = {
          type = "create-particle",
          particle_name = water_cane_top_particle,
          initial_height = 0.6,
          probability = 0.01,
          offset_deviation = {{-0.15, -0.4}, {0.15, 0.4}},
          initial_height = 1,
          initial_height_deviation = 0.01,
          initial_vertical_speed = 0.015,
          initial_vertical_speed_deviation = 0.055,
          speed_from_center = 0.025,
          speed_from_center_deviation = 0.05,
          frame_speed = 0.8,
          only_when_visible = true
        }
        variation.leaves_when_damaged = 4
        variation.leaves_when_destroyed = 2
        variation.leaves_when_mined_manually = 2
        variation.leaves_when_mined_automatically = 1
      end
  
      if water_cane_particle then -- water-cane
        variation.branch_generation = {
          type = "create-particle",
          particle_name = water_cane_particle,
          initial_height = 0.6,
          only_when_visible = true
        }
        variation.branches_when_damaged = 2
        variation.branches_when_destroyed = 1
        variation.branches_when_mined_manually = 1
        variation.branches_when_mined_automatically = 1
      end
  
      if(name == "stingfrond") then
        variation.leaves =
        {
          layers =
          {
            variation.leaves,
            {
              filename = "__base-age-plus__/graphics/entity/plant/"..name.."/"..name.."-harvest-glow.png",
              flags = { "mipmap" },
              surface = "gleba",
              width = width,
              height = height,
              x = x,
              y = y,
              frame_count = 1,
              shift = shift,
              scale = 0.33 * scale_multiplier,
              draw_as_light = true
            }
          }
        }
      end
      table.insert(variations, variation)
    end
    return variations
  end
  
  local function gleba_tree_growth_variations(name, variation_count, per_row, scale_multiplier, width, height, shift)
    variation_count = variation_count or 5
    per_row = per_row or 5
    scale_multiplier = scale_multiplier or 1
    local width = width or 640
    local height = height or 560
    local growth_variations = {}
    local shift = shift or util.by_pixel(52, -40)
  
    for i = 1, variation_count do
      local function make_variation_sprite(filename)
        return {
          surface = "gleba",
          width = width,
          height = height,
          x = ((i - 1) % per_row) * width,
          y = math.floor((i - 1) / per_row) * height,
          shift = shift,
          scale = 0.33 * scale_multiplier,
          filename = filename,
        }
      end
      local growth_variation = {
        growth_warp = make_variation_sprite(string.format("__base-age-plus__/graphics/entity/plant/%s/%s-growth-warp.png", name, name)),
        trunk_warp = make_variation_sprite(string.format("__base-age-plus__/graphics/entity/plant/%s/%s-trunk-warp.png", name, name)),
        shadow_warp = make_variation_sprite(string.format("__base-age-plus__/graphics/entity/plant/%s/%s-shadow-warp.png", name, name)),
        harvest_warp = make_variation_sprite(string.format("__base-age-plus__/graphics/entity/plant/%s/%s-harvest-warp.png", name, name)),
        trunk_alpha = make_variation_sprite(string.format("__base-age-plus__/graphics/entity/plant/%s/%s-trunk-alpha.png", name, name)),
        shadow_alpha = make_variation_sprite(string.format("__base-age-plus__/graphics/entity/plant/%s/%s-shadow-alpha.png", name, name)),
        harvest_alpha = make_variation_sprite(string.format("__base-age-plus__/graphics/entity/plant/%s/%s-harvest-alpha.png", name, name)),
        progress_exponent = 1.0,
      }
      table.insert(growth_variations, growth_variation)
    end
    return growth_variations
  end
  
  local function gleba_tree_growth_mounds(name, variation_count, scale_multiplier)
    variation_count = variation_count or 5
    scale_multiplier = scale_multiplier or 1
    local growth_mounds = {}
    for i = 1, variation_count do
      table.insert(growth_mounds,
      {
        filename = string.format("__base-age-plus__/graphics/entity/plant/%s/%s-mound.png", name, name),
        x = 0,
        y = 0,
        width = 100,
        height = 75,
        scale = 0.33 * scale_multiplier,
      })
    end
    return growth_mounds
  end

local nauvis_tree = data.raw.tree["tree-08"]

data:extend(
{
  
  {
    type = "plant",
    name = "tree-plant", -- food
    icon = "__base-age-plus__/graphics/icons/planted-tree.png",
    flags = plant_flags,
    localised_name = {"entity-name.tree"},
    minable =
    {
      mining_particle = "wooden-particle",
      mining_time = 0.5,
      results = {{type = "item", name = "wood", amount = 4}},
    },
    growth_ticks = 10 * minutes,
    emissions_per_second = {pollution = -0.001},
    max_health = 50,
    collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selection_box = {{-1, -3}, {1, 0.8}},
    drawing_box_vertical_extension = 0.8,
    subgroup = "trees",
    order = "a[tree]-c[nauvis]-a[seedable]-a[tree-plant]",
    impact_category = "tree",
    autoplace =
    {
      probability_expression = 0,
      -- required to show agricultural tower plots
      tile_restriction =
      {
        "grass-1", "grass-2", "grass-3", "grass-4",
        "dry-dirt", "dirt-1", "dirt-2", "dirt-3", "dirt-4", "dirt-5", "dirt-6", "dirt-7",
        "red-desert-0", "red-desert-1", "red-desert-2", "red-desert-3",
        "sand-1", "sand-2", "sand-3"
      }
    },
    variations = gleba_tree_variations("planted-tree", 8, 4, 1.3, 640, 560, util.by_pixel(70, -40), util.by_pixel(50, 0), "nauvis", 3),
    growth_variations = gleba_tree_growth_variations("planted-tree", 8, 4, 1.3, 640, 560, util.by_pixel(70, -40)),
    growth_mounds = gleba_tree_growth_mounds("planted-tree", 8, 1.3),
    colors = minor_tints(),
    agricultural_tower_tint =
    {
      primary = {r = 0.7, g =  1.0, b = 0.2,a =  1},
      secondary = {r = 0.561, g = 0.613, b = 0.308, a = 1.000}, -- #8f4f4eff
    },
    map_color = {0.19, 0.39, 0.19, 0.40},
    mining_sound = nauvis_tree and table.deepcopy(nauvis_tree.mining_sound) or nil,
    mined_sound = nauvis_tree and table.deepcopy(nauvis_tree.mined_sound) or nil,
    ambient_sounds = nauvis_tree and table.deepcopy(nauvis_tree.ambient_sounds) or nil,
  }
})