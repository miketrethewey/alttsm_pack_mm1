-- canAccessCrateriaWest
function canAccessCrateriaWest()
  local ret = 0

  if(
      (canDestroyBombWalls() == 1) and (canDash("sm") == 1)
    ) then
    ret = 1
  end

  return ret
end
