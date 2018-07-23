-- canHiJump : hijump
function canHiJump()
  return has("hijump")
end

-- canMorph : morph
function canMorph()
  return has("morph")
end

-- canSpringBallJump : canMorph && springball
function canSpringBallJump()
  return (canMorph() == 1) and (has("springball") == 1)
end

-- canUseMorphBombs : canMorph && bomb
function canUseMorphBombs()
  return canMorph() and has("bomb")
end

-- canUsePowerBombs : canMorph && powerbomb
function canUsePowerBombs()
  return canMorph() and has("powerbomb")
end

-- canOpenGreenDoors : supermissile
function canOpenGreenDoors()
  return has("supermissile")
end

-- canOpenRedDoors : missile
function canOpenRedDoors()
  return has("missile")
end

-- canOpenYellowDoors : canUsePowerBombs
function canOpenYellowDoors()
  return canUsePowerBombs()
end

-- canIbj : canUseMorphBombs -- Tech
function canIbj()
  return canUseMorphBombs()
end

-- canPassBombPassages : canIbj || canUsePowerBombs
function canPassBombPassages()
  return canIbj() or canUsePowerBombs()
end

-- canBomb : canUseMorphBombs || canUsePowerBombs
function canBomb()
  return canUseMorphBombs() or canUsePowerBombs()
end

-- canDestroyBombWalls : canBomb || screw
function canDestroyBombWalls()
  return canBomb() or has("screw")
end

-- hasEnergyReserves : etanks + rtanks
function hasEnergyReserves(amount)
  amount = amount or 0
  local ret = 0

  if((getHas("etank") + getHas("rtank")) >= amount) then
    ret = 1
  end

  return ret
end

-- heatProof : varia
function heatProof()
  return has("varia")
end

-- Tech
-- canAlcatraz : tourney && canMorph
function canAlcatraz()
  return has("m3tournament") and canMorph()
end

-- canCrystalFlash : missile:10 && supermissile:10 && powerbombs:11
function canCrystalFlash()
  return has("missile",10) and has("supermissile",10) and has("powerbombs",11)
end

-- canDBoostBrinstarBlueCeiling : tourney
function canDBoostBrinstarBlueCeiling()
  return has("m3tournament")
end

-- canHellRun : varia || alltanks:5
function canHellRun()
  return heatProof() or hasEnergyReserves(5)
end

-- canMidAirPBomb : canUsePowerBombs
function canMidAirPBomb()
  return canUsePowerBombs()
end

-- canEnterAndLeaveGauntlet
function canEnterAndLeaveGauntlet()
  local ret = 0

  if((canFly("sm") or canHiJump() or canDash("sm"))
    and canIbj()
      or (canOpenYellowDoors() and has("powerbomb",2))
      or has("screw")
      or (canDash("sm") and canOpenYellowDoors() and hasEnergyReserves(2))) then
    ret = 1
  end

  return ret
end
