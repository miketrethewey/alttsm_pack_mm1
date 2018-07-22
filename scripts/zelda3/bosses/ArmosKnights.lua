-- ArmosKnights
function canBeatArmosKnights()
  return canShootArrows()
    or (canExtendMagic(4) and (has("firerod") == 1))
    or (canExtendMagic(4) and (has("icerod") == 1))
    or (canExtendMagic(2) and (has("byrna") == 1))
    or (canExtendMagic(2) and (has("somaria") == 1))
    or (has("hammer") == 1)
    or (has("boomerang") == 1)
    or (hasSword() == 1)
end
