-- Arrghus
function canBeatArrghus()
  local ret = 0

  if(canGrapple() == 1) then
    if(has("hammer") == 1) then
      if((canExtendMagic(2) == 1) or (canShootArrows() == 1)) then
        if((has("firerod") == 1) or (has("icerod") == 1)) then
          ret = 1
        end
      end
    end
  end

  return ret
end
