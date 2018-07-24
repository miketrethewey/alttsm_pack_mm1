-- canAccessCrateriaCentral
function canAccessCrateriaCentral()
  local ret = 0

  if(
      canAccessCrateriaPortal() == 1
    ) then
    ret = 1
  end

  return ret
end
