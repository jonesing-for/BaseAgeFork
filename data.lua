if not data.raw.tile["empty-space"] then
  local empty_space = table.deepcopy(data.raw.tile["out-of-map"])
  empty_space.name = "empty-space"
  data:extend{empty_space}
end



require ("base-data-updates")
require ("prototypes.entity.big-mining-drill")
require ("prototypes.entity.biolab")
require ("prototypes.entity.circuit-network")
require ("prototypes.entity.cryogenic-plant")
require ("prototypes.entity.electromagnetic-plant")
require ("prototypes.entity.explosions")
require ("prototypes.entity.foundry")
require ("prototypes.entity.fusion")
require ("prototypes.entity.heating-tower")
require ("prototypes.entity.mech-armor-animations")
require ("prototypes.entity.remnants")
require ("prototypes.entity.sounds")
require ("prototypes.entity.stack-inserter")
require ("prototypes.entity.transport-belts")
require ("prototypes.active-triggers")
require ("prototypes.equipment")
require ("prototypes.fluid")
require ("prototypes.item")
require ("prototypes.particles")
require ("prototypes.recipe")
require ("prototypes.recipe-category")
require ("prototypes.technology")
