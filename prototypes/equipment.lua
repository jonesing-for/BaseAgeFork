data:extend({
    {
    type = "inventory-bonus-equipment",
    name = "toolbelt-equipment",
    sprite =
    {
      filename = "__base-age__/graphics/equipment/toolbelt-equipment.png",
      width = 192,
      height = 64,
      priority = "medium",
      scale = 0.5
    },
    shape =
    {
      width = 3,
      height = 1,
      type = "full"
    },
    categories = {"armor"},
    inventory_size_bonus = 10
  },
  {
    type = "battery-equipment",
    name = "battery-mk3-equipment",
    sprite =
    {
      filename = "__base-age__/graphics/equipment/battery-mk3-equipment.png",
      width = 64,
      height = 144,
      priority = "medium",
      scale = 0.5
    },
    shape =
    {
      width = 1,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "250MJ",
      usage_priority = "tertiary"
    },
    categories = {"armor"}
  },
  {
    type = "generator-equipment",
    name = "fusion-reactor-equipment",
    sprite =
    {
      filename = "__base-age__/graphics/equipment/fusion-reactor-equipment.png",
      width = 256,
      height = 256,
      priority = "medium",
      scale = 0.5
    },
    shape =
    {
      width = 4,
      height = 4,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "2500kW",
    categories = {"armor"}
  }
})