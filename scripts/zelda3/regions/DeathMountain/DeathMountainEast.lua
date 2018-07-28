-- canAccessDeathMountainEast
-- Depends upon @z3regionAccess/DeathMountainWest
function canAccessDeathMountainEast()
  return ((has("hammer") == 1) and (has("mirror") == 1)) or (canGrapple() == 1)
end
