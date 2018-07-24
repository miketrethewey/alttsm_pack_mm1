-- canAccessGanonsTower
function canAccessGanonsTower()
  local ret = 0

  if(
      (has("moonpearl") == 1)
      and (has("crystal",7) == 1)
      and (canAccessDarkWorldDeathMountainEast() == 1)
    ) then
    ret = 1
  end

  return ret
end
