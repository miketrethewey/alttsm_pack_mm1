-- canAccessSwampPalace
function canAccessSwampPalace()
  local ret = 0

  if(
      (has("moonpearl") == 1) and (has("mirror") == 1) and (canSwim() == 1)
      and (canAccessDarkWorldSouth() == 1)
    ) then

    ret = 1

  end

  return ret
end
