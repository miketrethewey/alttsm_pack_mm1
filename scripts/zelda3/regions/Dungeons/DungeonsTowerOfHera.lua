-- canAccessTowerOfHera
function canAccessTowerOfHera()
  local ret = 0

  if(
      ((has("mirror") == 1) or ((canGrapple() == 1) and (has("hammer") == 1)))
      and (canAccessDeathMountainWest() == 1)
    ) then

    ret = 1

  end

  return ret
end
