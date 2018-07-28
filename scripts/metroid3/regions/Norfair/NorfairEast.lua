-- canAccessNorfairEast
function canAccessNorfairEast()
  local ret = 0

  if(getSMLogic() == "casual") then
    if(
        ((((canDestroyBombWalls() == 1) or (canDash("sm") == 1))
          and ((canOpenGreenDoors() == 1) and (canMorph() == 1)))
          or (canAccessNorfairPortal() == 1))
          and (heatProof() == 1)
          and (canOpenGreenDoors() == 1)
          and ((canFly("sm") == 1) or (canHiJump() == 1) or (canDash("sm") == 1))
      ) then
      ret = 1
    end
  elseif(getSMLogic() == "tournament") then
    if(
        ((((canDestroyBombWalls() == 1) or (canDash("sm") == 1))
          and ((canOpenGreenDoors() == 1) and (canMorph() == 1)))
          or (canAccessNorfairPortal() == 1))
          and (canHellRun() == 1)
          and ((canOpenGreenDoors() == 1) and ((canFly("sm") == 1) or (canHiJump() == 1) or (canSpringBallJump() == 1) or ((heatProof() == 1) and ((has("ice") == 1) or (canDash("sm") == 1))))
            or ((canDash("sm") == 1) and (canUsePowerBombs() == 1)))
      ) then
      ret = 1
    end
  end

  return ret
end
