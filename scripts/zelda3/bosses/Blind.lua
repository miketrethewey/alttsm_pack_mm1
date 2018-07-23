-- Blind
function canBeatBlind()
  local ret = 0

  local weapons = {
    "byrna",
    "somaria",
    "hammer"
  }

  for k,v in pairs(weapons) do
    if(has(v) == 1) then
      ret = 1
    end
  end

  if(hasSword() == 1) then
    ret = 1
  end

  return ret
end
