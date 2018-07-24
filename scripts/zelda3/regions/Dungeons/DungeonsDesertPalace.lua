-- canAccessDesertPalace
function canAccessDesertPalace()
  local ret = 0

  if(
      (canRead() == 1)
      or ((has("mirror") == 1) and (canLiftDarkRocks() == 1) and (canFly() == 1))
      or ((canAccessMiseryMirePortal() == 1) and has("mirror"))
    ) then

    ret = 1

  end

  return ret
end
