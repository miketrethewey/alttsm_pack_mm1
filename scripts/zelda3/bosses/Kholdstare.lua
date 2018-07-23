-- Kholdstare
function canBeatKholdstare()
  local ret = 0

  if((canMeltThings() == 1)
    and (
      ((canExtendMagic(3) == 1) and (has("firerod") == 1))
      or ((canExtendMagic(2) == 1) and (has("firerod") == 1) and (has("bombos") == 1))
      or (has("hammer") == 1)
      or (hasSword() == 1)) then

    ret = 1

  end

  return ret
end
