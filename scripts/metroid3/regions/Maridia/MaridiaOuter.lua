-- canAccessMaridiaOuter
function canAccessMaridiaOuter()
  local ret = 0

  if(getSMLogic == "casual") then
    if(
        (((canAccessNorfairWest() == 1)
            and (canUsePowerBombs() == 1))
            or (canAccessMaridiaPortal() == 1))
          and (canSwim("sm") == 1)
      ) then
      ret = 1
    end
  else if(getSMLogic == "tournament") then
    if(
        ((canAccessNorfairWest() == 1)
          and (canUsePowerBombs() == 1)
          and ((canDash("sm") == 1)
            or ((canHiJump() == 1) and ((canSpringBallJump() == 1) or (has("ice") == 1)))))
          or (canAccessMaridiaPortal() == 1)
      ) then
      ret = 1
    end
  end

  return ret
end
