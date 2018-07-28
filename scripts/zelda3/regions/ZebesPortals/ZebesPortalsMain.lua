-- ZebesPortalsMain
-- Light World: Link's Fortune Teller -> Crateria: Map Room
function canAccessCrateriaPortal()
  return 1
end

-- Light World Death Mountain Cave -> Norfair: Map Room
function canAccessNorfairPortal()
  return (canAccessDeathMountainWest() == 1)
end

-- Dark World Mire East 'Entrance' -> Lower Norfair Gold Torizo Missile Refill
function canAccessLowerNorfairPortal()
  return (canFly() == 1) and (canLiftDarkRocks() == 1)
end

-- Dark World Ice Cave -> Maridia Missile Refill
function canAccessMaridiaPortal()
  local ret = 0

  if(has("moonpearl")
    and (canSwim() == 1)
    and ((((has("agahnim") == 1)
      or ((has("hammer") == 1) and (canLiftRocks() == 1) && (has("moonpearl") == 1))
      or ((canGrapple() == 1) and ((canSwim() == 1) or (canLiftRocks() == 1)))))
      or ((has("hammer") == 1) and (canLiftRocks() == 1))
      or (canLiftDarkRocks() == 1))) then

    ret = 1

  end

  return ret
end
