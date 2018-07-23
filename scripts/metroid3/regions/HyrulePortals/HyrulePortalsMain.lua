-- HyrulePortalsMain
-- Crateria Map Room -> Light World: Link's Fortune Teller
function canAccessLightWorldPortal()
  return 1
end

-- Maridia Missile Refill -> Dark World Ice Cave
function canAccessDarkWorldPortal()
  local ret = 0

  if(canOpenYellowDoors()
    and canOpenGreenDoors()
    and (canSwim("sm")
      or (canHiJump() and has("ice") and canGrapple("sm")))
    and (has("ice") or (canDash("sm")))) then

    ret = 1

  end

  return ret
end

-- Norfair Map Room -> Light World Death Mountain Cave
function canAccessDeathMountainPortal()
  local ret = 0

  if((canDestroyBombWalls() or canDash("sm"))
    and (canOpenGreenDoors() and canMorph())) then

    ret = 1

  end

  return ret
end

-- Lower Norfair Gold Torizo Energy Refill -> Dark World Mire East 'Entrance'
function canAccessMiseryMirePortal()
  local ret = 0

  if(heatProof()
    and canOpenGreenDoors()
    and (canHiJump() or canSwim("sm"))
    and canOpenYellowDoors()) then

    ret = 1

  end

  return ret
end
