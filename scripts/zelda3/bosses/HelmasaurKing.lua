-- HelmasaurKing
function canBeatHelmasaurKing()
  return (has("hammer") == 1)
    or (canShootArrows() == 1)
    or (hasSword() == 1)
end
