-- canAccessIcePalace
function canAccessIcePalace()
  local ret = 0

  if(
      (has("moonpearl") == 1) and (canSwim() == 1)
      and (canLiftDarkRocks() == 1) and (canMeltThings() == 1)
    ) then

    ret = 1

  end

  return ret
end
