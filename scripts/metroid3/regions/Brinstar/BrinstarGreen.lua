-- canAccessBrinstarGreen
function canAccessBrinstarGreen()
  local ret = 0

  if(
      (canDestroyBombWalls() == 1) or (canDash("sm") == 1)
    ) then

    ret = 1

  end

  return ret
end
