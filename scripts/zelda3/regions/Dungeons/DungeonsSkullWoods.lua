-- canAccessSkullWoods
function canAccessSkullWoods()
  local ret = 0

  if(
      (has("moonpearl") == 1) and (canAccessDarkWorldNorthWest() == 1)
    ) then

    ret = 1

  end

  return ret
end
