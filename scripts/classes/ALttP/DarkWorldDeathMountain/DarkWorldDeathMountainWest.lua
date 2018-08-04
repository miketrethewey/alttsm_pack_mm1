-- DarkWorldDeathMountainWest.lua
-- DarkWorldDeathMountainWest properties

local name = "DarkWorldDeathMountain"
local subname = "West"
DarkWorldDeathMountainWest = DarkWorldDeathMountain:new(name, subname) -- Instantiate Region

function DarkWorldDeathMountainWest()
  local region = DarkWorldDeathMountainWest -- Get easy region handle

  regionName = name .. subname              -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("Chest", "Spike Cave", regionName)
    }
  )

  return region
end
