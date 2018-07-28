-- canAccessWreckedShipMain
function canAccessWreckedShipMain()
  local ret = 0

  if(getSMLogic == "casual") then
    if(
        (canOpenGreenDoors() == 1) and
          (((canUsePowerBombs() == 1) and ((canDash("sm") == 1) or (canGrapple("sm") == 1) or (has("space") == 1) or (canSpringBallJump() == 1)))
            or ((canAccessMaridiaPortal() == 1) and (canSwim("sm") == 1) and (canPassBombPassages() == 1)))
      ) then
      ret = 1
    end
  else if(getSMLogic == "tournament") then
    if(
        (canOpenGreenDoors() == 1) and ((canUsePowerBombs() == 1) or ((canAccessMaridiaPortal() == 1) and ((canHiJump() == 1) or (canSwim("sm") == 1)) and (canPassBombPassages() == 1)))
      ) then
      ret = 1
    end
  end

  return ret
end
