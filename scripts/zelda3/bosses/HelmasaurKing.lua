-- HelmasaurKing
function canBeatHelmasaurKing()
  local ret = 0

  if((has("hammer") == 1)
    or (canShootArrows() == 1)
    or (hasSword() == 1)) then

    ret = 1

  end

  return ret
end
