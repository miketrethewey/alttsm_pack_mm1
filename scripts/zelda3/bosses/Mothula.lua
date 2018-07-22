-- Mothula
function canBeatMothula()
  return ((canGetGoodBee() == 1) and (has("bottle") == 1))
    or (canExtendMagic(2) and (has("firerod") == 1))
    or (canExtendMagic(2) and (has("somaria") == 1))
    or (canExtendMagic(2) and (has("byrna") == 1))
    or (has("hammer") == 1)
    or (hasSword() == 1)
end
