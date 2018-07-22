-- Check inventory for item (optional amount)
function has(item,amount)
  amount = amount or -1

  local ret = 0

  if(amount > -1) then
    if(Tracker:ProviderCountForCode(item) >= amount) then
      ret = Tracker:ProviderCountForCode(item)
    end
  else
    if(Tracker:ProviderCountForCode(item) == 1) then
      ret = 1
    end
  end

  return ret
end
