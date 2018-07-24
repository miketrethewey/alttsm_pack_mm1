-- canAccessIcePalace
function canAccessIcePalace()
  local ret = 0

  if(
      has("moonpearl") and canSwim()
      and canLiftDarkRocks() and canMeltThings()
    ) then

    ret = 1

  end

  return ret
end
