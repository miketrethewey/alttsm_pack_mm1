-- canBlockLasers : shield3
function canBlockLasers()
  return has("shield",3)
end

-- canDash : boots; speed
function canDash(game)
  game = game or "z3"

  if(game == "sm") then
    return has("speed")
  else
    return has("boots")
  end
end

-- canFakePowder : somaria && mushroom
function canFakePowder()
  return has("somaria") and has("mushroom")
end

-- canFly : flute; space
function canFly(game)
  game = game or "z3"

  if(game == "sm") then
    return (has("morph") and has("bomb")) or has("space")
  else
    return has("flute")
  end
end

-- canGetGoodBee : net && bottle && (canDash || (sword && quake))
function canGetGoodBee()
  return has("net") and has("bottle") and (canDash() or (has("sword") and has("quake")))
end

-- canGrapple : hookshot; grappling
function canGrapple(game)
  game = game or "z3"

  if(game == "sm") then
    return has("grappling")
  else
    return has("hookshot")
  end
end

-- canHover : canDash
function canHover()
  return canDash()
end

-- canLiftRocks : glove
function canLiftRocks()
  return has("glove")
end

-- canLiftDarkRocks : glove2
function canLiftDarkRocks()
  return has("glove2")
end

-- canLightTorches : firesource
function canLightTorches()
  return has("firesource")
end

-- canMeltThings : melt
function canMeltThings()
  return has("melt")
end

-- canRead : book
function canRead()
  return has("book")
end

-- canShootArrows : bow || z3retro,bow,wooden || z3retro,bow,silvers
function canShootArrows()
  return has("bow")
end

-- canSwim : flippers; gravity
function canSwim(game)
  game = game or "z3"

  if(game == "sm") then
    return has("gravity")
  else
    return has("flippers")
  end
end

-- hasSword : sword || (swordless && hammer)
function hasSword()
  if(has("swordless") == 1) then
    return has("hammer")
  else
    return has("sword")
  end
end

-- hasMS : sword2 || sword3 || sword4 || (swordless && hammer)
function hasMS()
  if(has("swordless") == 1) then
    return has("hammer")
  else
    return has("sword2") or has("sword3") or has("sword4")
  end
end

-- hasTempered : sword3 || sword4
function hasTempered()
  return has("sword3") or has("sword4")
end

-- hasGolden : sword4
function hasGolden()
  return has("sword4")
end

-- canActivateMedallions : hasSword
function canActivateMedallions()
  return hasSword()
end

-- canActivateTablets : canRead && hasMS
function canActivateTablets()
  return canRead() and hasMS()
end

-- canKillMostThings
function canKillMostThings()
  -- FIXME: Bring in actual logic
  return hasSword()
    or has("somaria")
    or canShootArrows()
    or has("hammer")
    or has("firerod")
    or has("z3noglitches")
    or has("z3minorglitches")
end

-- canExtendMagic
-- Half Magic    = Double Capacity
-- Quarter Magic = Quadruple Capacity
-- Each Bottle   = Refill 1 bar
-- Start with 1 bar
function canExtendMagic(bars)
  bars = bars or 1
  local half = Tracker:ProviderCountForCode("halfmagic")
  local quarter = Tracker:ProviderCountForCode("quartermagic")
  local bottles = Tracker:ProviderCountForCode("bottle")

  if(half == 1) then
    half = 2 -- Double
  else
    half = 1
  end
  if(quarter == 1) then
    quarter = 4 -- Quadruple
  else
    quarter = 1
  end

  return ((half * quarter * (bottles + 1)) > bars)
end
