-- Vitreous
function canBeatVitreous()
  local ret = 0

  if((canShootArrows() == 1)
    or (has("hammer") == 1)
    or (hasSword() == 1)) then

    ret = 1

  end
  
  return ret
end
