-- Trinexx
function canBeatTrinexx()
  if((has("firerod") == 1) and (has("icerod") == 1)) then
    if(
        (hasTempered() == 1)
        or (has("hammer") == 1)
        or (canExtendMagic(2) and (hasMS() == 1))
        or (canExtendMagic(4) and (hasSword() == 1))
      ) then
      return 1
    end
  end
end
