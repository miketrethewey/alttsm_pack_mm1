-- DarkWorldDeathMountainEast.lua
-- DarkWorldDeathMountainEast properties

local name = "DarkWorldDeathMountain"
local subname = "East"
DarkWorldDeathMountainEast = DarkWorldDeathMountain:new(name, subname) -- Instantiate Region

function DarkWorldDeathMountainEast:new()
  local region = DarkWorldDeathMountainEast -- Get easy region handle

  regionName = name .. subname              -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("Chest", "Superbunny Cave", regionName, {equipment = "(2)"}),
      Location:new("Chest", "Hookshot Cave", regionName, {equipment = "(3) + (1 %%hookshot%%/%%boots%%)"})
    }
  )

  return region
end
