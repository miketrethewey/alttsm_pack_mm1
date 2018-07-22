-- Blind
function canBeatBlind()
  local weapons = {
    "byrna",
    "somaria",
    "hammer"
  }

  for k,v in pairs(weapons) do
    if(has(v) == 1) then
      return 1
    end
  end
  
  if(hasSword() == 1) then
    return 1
  end
end
