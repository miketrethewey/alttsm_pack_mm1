-- canAccessTurtleRock
function canAccessTurtleRock()
  local ret = 0
  local medallion = getMedallion("tr")
  local medallions = 0
  local canUnlock = 0

  if((has("bombos") == 1) and (has("ether") == 1) and (has("quake") == 1)) then
    medallions = 1
  end

  if((has(medallion) == 1) or (medallions == 1)) then
    canUnlock = 1
  end

  if(
      (canUnlock == 1)
      and (hasSword() == 1)
      and (has("moonpearl") == 1) and (has("somaria") == 1)
      and (canLiftDarkRocks() == 1) and (has("hammer") == 1)
      and (canAccessDeathMountainEast() == 1)
    ) then

    ret = 1

  end

  return ret
end
