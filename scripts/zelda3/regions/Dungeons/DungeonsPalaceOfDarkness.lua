-- canAccessPalaceOfDarkness
function canAccessPalaceOfDarkness()
  local ret = 0

  if(
    (has("moonpearl") == 1) and (canAccessDarkWorldNorthEast() == 1)
  ) then

    ret = 1

  end

  return ret
end
