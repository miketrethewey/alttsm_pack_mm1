-- Arrghus
function canBeatArrghus()
  if(canGrapple() == 1) then
    if(has("hammer") == 1) then
      if(canExtendMagic(2) or (canShootArrows() == 1)) then
        if((has("firerod") == 1) or (has("icerod") == 1)) then
          return 1
        end
      end
    end
  end
end
