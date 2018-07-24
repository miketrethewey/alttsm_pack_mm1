-- canAccessBrinstarPink
function canAccessBrinstarPink()
  local ret = 0

  if(getSMLogic() == "casual") then
    if(
        ((canOpenRedDoors() == 1) and ((canDestroyBombWalls() == 1) or (canDash("sm") == 1)))
        or (canUsePowerBombs() == 1)
        or ((canAccessNorfairPortal() == 1) and (canMorph() == 1) and (has("wave") == 1) and ((has("ice") == 1) or (canHiJump() == 1) or (has("space") == 1)))
      ) then
      ret = 1
    end
  else if(getSMLogic() == "tournament") then
    if(
        ((canOpenRedDoors() == 1) and ((canDestroyBombWalls() == 1) or (canDash("sm") == 1)))
        or (canUsePowerBombs() == 1)
        or ((canAccessNorfairPortal() == 1) and (canMorph() == 1) and ((canOpenRedDoors() == 1) or (has("wave") == 1)) and ((has("ice") == 1) or (canHiJump() == 1) or (canSpringBallJump() == 1) or (canFly("sm") == 1)))
      ) then
      ret = 1
    end
  end

  return ret
end
