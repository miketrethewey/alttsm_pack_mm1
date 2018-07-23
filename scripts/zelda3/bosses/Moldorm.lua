-- Moldorm
function canBeatMoldorm()
  local ret = 0

  if((hasSword() == 1) or (has("hammer") == 1)) then
    ret = 1
  end

  return ret
end
