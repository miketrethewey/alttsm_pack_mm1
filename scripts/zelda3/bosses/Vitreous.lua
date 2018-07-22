-- Vitreous
function canBeatVitreous()
  return (canShootArrows() == 1)
    or (has("hammer") == 1)
    or (hasSword() == 1)
end
