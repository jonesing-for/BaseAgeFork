local function item_sound(filename, volume)
  return
  {
    filename = "__base-age-plus__/sound/item/"..filename,
    volume = volume,
    aggregation = {max_count = 1, remove = true},
  }
end

local space_age_item_sounds =
{
  agriculture_inventory_move = item_sound("agriculture-inventory-move.ogg", 0.5),
  agriculture_inventory_pickup = item_sound("agriculture-inventory-pickup.ogg", 0.5),
}

return space_age_item_sounds
