function canAccessMiseryMirePortal()
  return 0
end

-- DarkWorldMire
function canAccessDarkWorldMire()
  return ((canFly() == 1) and (canLiftDarkRocks() == 1)) or (canAccessMiseryMirePortal() == 1)
end
