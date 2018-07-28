-- canAccessLowerNorfairWest
function canAccessLowerNorfairWest()
  local ret = 0

  if(getSMLogic() == "casual") then
    if(
        (heatProof() == 1)
            and (((canAccessNorfairEast() == 1)
          and (canUsePowerBombs() == 1)
          and ((canSwim("sm") == 1) and (has("space") == 1)))
          or ((canAccessLowerNorfairPortal() == 1) and (canDestroyBombWalls() == 1)))
      ) then
      ret = 1
    end
  else if(getSMLogic() == "tournament") then
    if(
        (canAccessNorfairEast() == 1)
        and (canUsePowerBombs() == 1)
        and ((heatProof() == 1) and ((canHiJump() == 1) or (canSwim("sm") == 1)))
        or ((canAccessLowerNorfairPortal() == 1) and (canDestroyBombWalls() == 1))
      ) then
      ret = 1
    end
  end

  return ret
end
