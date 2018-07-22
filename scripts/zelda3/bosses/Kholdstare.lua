-- Kholdstare
function canBeatKholdstare()
  return (canMeltThings() == 1)
    and (
      (canExtendMagic(3) and (has("firerod") == 1))
      or (canExtendMagic(2) and (has("firerod") == 1) and (has("bombos") == 1))
      or (has("hammer") == 1)
      or (hasSword() == 1)
end
