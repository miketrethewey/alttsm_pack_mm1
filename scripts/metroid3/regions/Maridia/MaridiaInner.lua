-- canAccessMaridiaInner
function canAccessMaridiaInner()
  local ret = 0

  if(getSMLogic == "casual") then
    if(
        (((canAccessNorfairWest() == 1)
          and (canUsePowerBombs() == 1)
          and ((canFly("sm") == 1) or (canDash("sm") == 1) or (canGrapple("sm") == 1)))
          or (canAccessMaridiaPortal() == 1))
        and (canSwim("sm") == 1)
      ) then
      ret = 1
    end
  else if(getSMLogic == "tournament") then
    if(
        (canAccessNorfairWest() == 1)
          and (canUsePowerBombs() == 1)
          and ((canSwim("sm") == 1) or ((canHiJump() == 1) and ((has("ice") == 1) or (canSpringBallJump() == 1)) and (canGrapple("sm") == 1)))
          or (canAccessMaridiaPortal() == 1)
      ) then
      ret = 1
    end
  end

  return ret
end
