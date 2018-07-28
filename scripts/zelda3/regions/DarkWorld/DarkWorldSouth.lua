-- canAccessDarkWorldSouth
-- Depends upon @z3regionAccess/DarkWorldNorthEast
function canAccessDarkWorldSouth()
  local ret = 0

  if(
      (has("moonpearl") == 1)
      and (
        (has("hammer") == 1)
        or (
          (canGrapple() == 1)
          and (
            (canSwim() == 1)
            or (canLiftRocks() == 1)
          )
        )
      )
    ) then
    ret = 1
  end
 
  return ret
end
