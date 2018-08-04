-- DarkWorldMire.lua
-- DarkWorldMire properties

local name = "DarkWorld"
local subname = "Mire"
DarkWorldMire = DarkWorld:new(name, subname) -- Instantiate Region

function DarkWorldMire:new()
  local region = DarkWorldMire               -- Get easy region handle

  regionName = name .. subname               -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("Chest", "Mire Shed", regionName)
    }
  )

  return region
end
