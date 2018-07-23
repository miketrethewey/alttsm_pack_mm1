-- Trinexx
function canBeatTrinexx()
  local ret = 0
  
  if((has("firerod") == 1) and (has("icerod") == 1)) then
    if(
        (hasTempered() == 1)
        or (has("hammer") == 1)
        or ((canExtendMagic(2) == 1) and (hasMS() == 1))
        or ((canExtendMagic(4) == 1) and (hasSword() == 1))
      ) then
      ret = 1
    end
  end
  
  return ret
end
