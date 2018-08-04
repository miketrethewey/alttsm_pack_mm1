-- DarkWorldNorthEast.lua
-- DarkWorldNorthEast properties

local name = "DarkWorld"
local subname = "NorthEast"
DarkWorldNorthEast = DarkWorld:new(name, subname) -- Instantiate Region

function DarkWorldNorthEast:new()
  local region = DarkWorldNorthEast               -- Get easy region handle

  regionName = name .. subname                    -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("NPC", "Catfish", regionName),
      Location:new("Standing", "Pyramid", regionName),
      Location:new("Chest", "Pyramid Fairy", regionName, {equipment = "%%crystal5%%%%crystal6%%%%bomb2%%"}),
      Location:new("Boss", "Ganon", regionName)
    }
  )

  return region
end
