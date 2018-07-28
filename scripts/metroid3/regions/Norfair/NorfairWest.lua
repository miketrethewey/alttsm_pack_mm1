-- canAccessNorfairWest
function canAccessNorfairWest()
  local ret = 0

  if(
      ((canDestroyBombWalls() == 1) or (canDash("sm") == 1) or (canAccessNorfairPortal() == 1))
        and ((canOpenGreenDoors() == 1) and (canMorph() == 1))
        or (canAccessNorfairPortal() == 1)
    ) then
    ret = 1
  end

  return ret
end
