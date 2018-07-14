-- canExtendMagic
-- Half Magic    = Double Capacity
-- Quarter Magic = Quadruple Capacity
-- Each Bottle   = Refill 1 bar
-- Start with 1 bar
function canExtendMagic()
  local half = Tracker:ProviderCountForCode("halfmagic")
  local quarter = Tracker:ProviderCountForCode("quartermagic")
  local bottles = Tracker:ProviderCountForCode("bottle")

  if(half >= 1) then
    half = 2 -- Double
  else
    half = 1
  end
  if(quarter >= 1) then
    quarter = 4 -- Quadruple
  else
    quarter = 1
  end

  return half * quarter * (bottles + 1)
end
