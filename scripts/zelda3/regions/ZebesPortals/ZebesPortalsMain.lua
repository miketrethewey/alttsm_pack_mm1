-- ZebesPortalsMain
-- Light World: Link's Fortune Teller -> Crateria: Map Room
function canAccessCrateriaPortal()
  return 1
end

-- Light World Death Mountain Cave -> Norfair: Map Room
function canAccessNorfairPortal()
  return canAccessDeathMountainWest()
end

-- Dark World Mire East 'Entrance' -> Lower Norfair Gold Torizo Missile Refill
function canAccessLowerNorfairPortal()
  return canFly() and canLiftDarkRocks()
end

-- Dark World Ice Cave -> Maridia Missile Refill
function canAccessMaridiaPortal()
  local ret = 0

  if(has("moonpearl")
    and canSwim()
    and (((has("agahnim")
      or (has("hammer") and canLiftRocks() && has("moonpearl"))
      or (canGrapple() and (canSwim() or canLiftRocks()))))
      or (has("hammer") and canLiftRocks())
      or canLiftDarkRocks())) then

    ret = 1

  end

  return ret
end
