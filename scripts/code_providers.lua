-- Dummy Tracker class
Tracker = {}
function Tracker:ProviderCountForCode()
  return 0
end

-- Return a table of keys set to true
function Set(list)
  local set = {}
  for _, l in ipairs(list) do
    set[l] = true
  end
  return set
end

-- Get sorted array of keys of a table
function array_keys(arr)
  local ordered_keys = {}

  for k in pairs(arr) do
    table.insert(ordered_keys, k)
  end

  table.sort(ordered_keys)

  return ordered_keys
end

-- Get amount of an item in inventory
function getHas(item)
  return Tracker:ProviderCountForCode(item)
end

-- Return Quantity if item is present in inventory (optional required minimum amount)
function has(item, amount)
  amount = amount or -1
  local ret = 0

  if (amount > -1) then
    if (getHas(item) >= amount) then
      ret = amount
    end
  end

  if (getHas(item) >= 1) then
    ret = 1
  end

  return ret
end
