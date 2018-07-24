-- canAccessDarkWorldMire
function canAccessDarkWorldMire()
  local ret = 0

  if(((canFly() == 1) and (canLiftDarkRocks() == 1)) or (canAccessMiseryMirePortal() == 1)) then
    ret = 1
  end

  return ret
end
