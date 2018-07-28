-- canAccessNorfairCrocomire
function canAccessNorfairCrocomire()
  local ret = 0

  if(getSMLogic() == "casual") then
    if(
        ((((canDestroyBombWalls() == 1) or (canDash("sm") == 1))
          and ((canOpenGreenDoors() == 1) and (canMorph() == 1)))
          or (canAccessNorfairPortal() == 1))
          and (heatProof() == 1)
            and (canOpenGreenDoors() == 1)
            and (((canUsePowerBombs() == 1) and (canDash("sm") == 1)) or ((canDash("sm") == 1) and (has("wave") == 1)) or ((canMorph() == 1) and ((canFly("sm") == 1) or (canHiJump() == 1)) and (has("wave") == 1)))
      ) then
      ret = 1
    end
  else if(getSMLogic() == "tournament") then
    if(
        ((((canDestroyBombWalls() == 1) or (canDash("sm") == 1))
          and ((canOpenGreenDoors() == 1) and (canMorph() == 1)))
          or (canAccessNorfairPortal() == 1))
          and (canOpenGreenDoors() == 1)
          and ((hasEnergyReserves(2) == 1) and (canDash("sm") == 1) or (canHellRun() == 1))
          and (((canFly("sm") == 1) or (canHiJump() == 1) or (canSpringBallJump() == 1) or ((heatProof() == 1) and (has("ice") == 1))) or (canDash("sm") == 1))
          and ((canPassBombPassages() == 1) or (canDash("sm") == 1) or ((heatProof() == 1) and (canMorph() == 1)))
        or ((canAccessNorfairPortal() == 1) and (has("screw") == 1) and (has("space") == 1) and (heatProof() == 1) and (canOpenGreenDoors() == 1) and (hasEnergyReserves(2) == 1))
      ) then
      ret = 1
    end
  end

  return ret
end
