-- Mothula
function canBeatMothula()
  local ret = 0
  
  if(((canGetGoodBee() == 1) and (has("bottle") == 1))
    or ((canExtendMagic(2) == 1) and (has("firerod") == 1))
    or ((canExtendMagic(2) == 1) and (has("somaria") == 1))
    or ((canExtendMagic(2) == 1) and (has("byrna") == 1))
    or (has("hammer") == 1)
    or (hasSword() == 1)) then

    ret = 1

  end
  
  return ret
end
