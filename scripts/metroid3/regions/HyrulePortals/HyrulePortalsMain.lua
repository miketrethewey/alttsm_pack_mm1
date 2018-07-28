-- HyrulePortalsMain
-- Crateria Map Room -> Light World: Link's Fortune Teller
function canAccessLightWorldPortal()
  return 1
end

-- Maridia Missile Refill -> Dark World Ice Cave
function canAccessDarkWorldPortal()
  local ret = 0

  if((canOpenYellowDoors() == 1)
    and (canOpenGreenDoors() == 1)
    and ((canSwim("sm") == 1)
      or ((canHiJump() == 1) and (has("ice") == 1) and (canGrapple("sm") == 1)))
    and ((has("ice") == 1) or ((canDash("sm") == 1)))) then

    ret = 1

  end

  return ret
end

-- Norfair Map Room -> Light World Death Mountain Cave
function canAccessDeathMountainPortal()
  local ret = 0

  if(((canDestroyBombWalls() == 1) or (canDash("sm") == 1))
    and ((canOpenGreenDoors() == 1) and (canMorph() == 1))) then

    ret = 1

  end

  return ret
end

-- Lower Norfair Gold Torizo Energy Refill -> Dark World Mire East 'Entrance'
function canAccessMiseryMirePortal()
  local ret = 0

  if((heatProof() == 1)
    and (canOpenGreenDoors() == 1)
    and ((canHiJump() == 1) or (canSwim("sm") == 1))
    and (canOpenYellowDoors() == 1)) then

    ret = 1

  end

  return ret
end
