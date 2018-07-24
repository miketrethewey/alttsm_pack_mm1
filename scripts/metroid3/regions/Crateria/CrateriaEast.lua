-- canAccessCrateriaEast
function canAccessCrateriaEast()
  local ret = 0

  if(getSMLogic() == "casual") then
    if(
        (canUsePowerBombs() and canOpenGreenDoors())
        or (canAccessNorfairPortal() and canUsePowerBombs() and (has("ice") or canHiJump() or has("space")))
        or (canAccessMaridiaPortal() and canSwim("sm") and canOpenGreenDoors())
      ) then

      ret = 1

    end
  else if(getSMLogic() == "tournament") then
    if(
        ((canUsePowerBombs() == 1) and (canOpenGreenDoors() == 1))
        or ((canAccessNorfairPortal() == 1) and (canUsePowerBombs() == 1) and ((has("ice") == 1) or (canSpringBallJump() == 1) or (canHiJump() == 1) or (canFly("sm") == 1)))
        or ((canAccessMaridiaPortal() == 1) and (canHiJump() == 1) and (canOpenGreenDoors() == 1))
      ) then

      ret = 1

    end
  end

  return ret
end
