-- canAccessLowerNorfairEast
function canAccessLowerNorfairEast()
  local ret = 0

  if(getSMLogic == "casual") then
    if(
        (heatProof() == 1)
          and (((canAccessNorfairEast() == 1)
            and (canUsePowerBombs() == 1)
            and ((has("space") == 1) and (canSwim("sm") == 1)))
          or ((canAccessLowerNorfairPortal() == 1)
            and (canDestroyBombWalls() == 1)
            and (canOpenGreenDoors() == 1)
            and (canUsePowerBombs() == 1)
            and ((canFly("sm") == 1) or (canDash("sm") == 1))))
        and ((canFly("sm") == 1) or (canHiJump() == 1))
      ) then
      ret = 1
    end
  else if(getSMLogic == "tournament") then
    if(
        (heatProof() == 1)
          and (((canAccessNorfairEast() == 1)
            and (canUsePowerBombs() == 1)
            and ((canHiJump() == 1) or (canSwim("sm") == 1)))
          or ((canAccessLowerNorfairPortal() == 1)
            and (canDestroyBombWalls() == 1)
            and (canOpenGreenDoors() == 1)
            and ((canFly("sm") == 1) or (canSpringBallJump() == 1) or (canDash("sm") == 1))))
          and ((canFly("sm") == 1) or (canHiJump() == 1) or (canSpringBallJump() == 1) or ((has("ice") == 1) and (has("charge") == 1)))
          and ((canPassBombPassages() == 1) or ((has("screw") == 1) and (has("space") == 1)))
          and ((canMorph() == 1) or (hasEnergyReserves(5) == 1))
      ) then
      ret = 1
    end
  end

  return ret
end
