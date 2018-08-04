-- canBlockLasers : shield3
function canBlockLasers()
  if(has("shield",3) >= 3) then
    return 1
  else
    return 0
  end
end

-- canDash : boots; speed
function canDash(game)
  local ret = 0
  if(game) then
    game = game:lower()
  else
    game = "z3"
  end

  if(game == "sm") then
    if(has("speed") == 1) then
      ret = 1
    end
  else
    if(has("boots") == 1) then
      ret = 1
    end
  end

  return ret
end

-- canFakePowder : somaria && mushroom
function canFakePowder()
  if(has("somaria") == 1) and (has("mushroom") == 1) then
    return 1
  else
    return 0
  end
end

-- canFly : flute; space
function canFly(game)
  local ret = 0
  if(game) then
    game = game:lower()
  else
    game = "z3"
  end

  if(game == "sm") then
    if((has("morph") == 1) and (has("bomb") == 1)) or (has("space") == 1) then
      ret = 1
    end
  else
    if(has("flute") == 1) then
      ret = 1
    end
  end

  return ret
end

-- canGetGoodBee : net && bottle && (canDash || (sword && quake))
function canGetGoodBee()
  if(has("net") == 1) and (has("bottle") == 1) and ((canDash() == 1) or ((hasSword() >= 1) and (has("quake") == 1))) then
    return 1
  else
    return 0
  end
end

-- canGrapple : hookshot; grappling
function canGrapple(game)
  local ret = 0
  if(game) then
    game = game:lower()
  else
    game = "z3"
  end

  if(game == "sm") then
    if(has("grappling") == 1) then
      ret = 1
    end
  else
    if(has("hookshot") == 1) then
      ret = 1
    end

  end

  return ret
end

-- canHover : canDash
function canHover()
  if(canDash() == 1) then
    return 1
  else
    return 0
  end
end

-- canLiftRocks : glove
function canLiftRocks()
  if(has("glove") == 1) then
    return 1
  else
    return 0
  end
end

-- canLiftDarkRocks : glove2
function canLiftDarkRocks()
  if(has("glove2") == 1) then
    return 1
  else
    return 0
  end
end

-- canLightTorches : firesource
function canLightTorches()
  if(has("firesource") == 1) then
    return 1
  else
    return 0
  end
end

-- canMeltThings : melt
function canMeltThings()
  if(has("melt") == 1) then
    return 1
  else
    return 0
  end
end

-- canRead : book
function canRead()
  if(has("book") == 1) then
    return 1
  else
    return 0
  end
end

-- canShootArrows : bow || z3retro,bow,wooden || z3retro,bow,silvers
function canShootArrows()
  local ret = 0

  if(has("bow") == 1) then
    if((has("z3retro") == 1)) then
      if((has("bow") == 1) and ((has("wooden") == 1) or (has("silvers") == 1))) then
        ret = 1
      end
    else
      ret = 1
    end
  end

  return ret
end

-- canSwim : flippers; gravity
function canSwim(game)
  local ret = 0
  if(game) then
    game = game:lower()
  else
    game = "z3"
  end

  if(game == "sm") then
    if(has("gravity") == 1) then
      ret = 1
    end
  else
    if(has("flippers") == 1) then
      ret = 1
    end
  end

  return ret
end

-- hasSword : sword || (swordless && hammer)
function hasSword(level)
  local ret = 0
  level = level or 1

  if(has("swordless") == 1) then
    if(has("hammer") == 1) then
      ret = 1
    end
  else
    if(getHas("sword") >= 1) then
      if(level == 1) then
        ret = 1
      else
        ret = getHas("sword")
      end
    end
  end

  return ret
end

-- hasMS : sword2 || sword3 || sword4 || (swordless && hammer)
function hasMS()
  local ret = 0
  local sword = 2

  if(has("swordless") == 1) then
    if(has("hammer") == 1) then
      ret = 1
    end
  else
    if(hasSword(sword) >= sword) then
      ret = 1
    end
  end

  return ret
end

-- hasTempered : sword3 || sword4
function hasTempered()
  local ret = 0
  local sword = 3

  if(hasSword(sword) >= sword) then
    ret = 1
  end

  return ret
end

-- hasGolden : sword4
function hasGolden()
  local ret = 0
  local sword = 4

  if(hasSword(sword) >= sword) then
    ret = 1
  end

  return ret
end

-- canActivateMedallions : hasSword
function canActivateMedallions()
  return (hasSword() >= 1)
end

-- canActivateTablets : canRead && hasMS
function canActivateTablets()
  return (canRead() == 1) and (hasMS() == 1)
end

-- canKillMostThings
function canKillMostThings()
  -- FIXME: Bring in actual logic
  return (hasSword() >= 1)
    or (has("somaria") == 1)
    or (canShootArrows() == 1)
    or (has("hammer") == 1)
    or (has("firerod") == 1)
    or (has("z3noglitches") == 1)
    or (has("z3minorglitches") == 1)
end

-- canExtendMagic
-- Half Magic    = Double Capacity
-- Quarter Magic = Quadruple Capacity
-- Each Bottle   = Refill 1 bar
-- Start with 1 bar
function canExtendMagic(wantBars)
  wantBars = wantBars or 1
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

  haveBars = ((half * quarter * (bottles + 1)))

  if(haveBars >= wantBars) then
    return haveBars
  else
    return 0
  end
end

-- getMedallion
function getMedallion(id)
  id = id or "mm"

  local ret = ""

  local medallions = {"bombos","ether","quake"}

  for i, medallion in ipairs(medallions) do
    if(has(id .. medallion) == 1) then
      ret = medallion
    end
  end

  return ret
end
