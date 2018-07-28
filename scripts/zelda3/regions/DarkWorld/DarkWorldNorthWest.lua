-- canAccessDarkWorldNorthWest
-- Depends upon @z3regionAccess/DarkWorldNorthEast
function canAccessDarkWorldNorthWest()
  local ret = 0
  
  if((has("moonpearl") == 1) and (canGrapple() == 1) and ((canSwim() == 1) or (canLiftDarkRocks() == 1) or (has("hammer") == 1))) then
    ret = 1
  end
  
  return ret
end
