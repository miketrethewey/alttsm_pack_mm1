-- DarkWorldSouth.lua
-- DarkWorldSouth properties

local name = "DarkWorld"
local subname = "South"
DarkWorldSouth = DarkWorld:new(name, subname) -- Instantiate Region

function DarkWorldSouth:new()
  local region = DarkWorldSouth               -- Get easy region handle

  regionName = name .. subname                -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("NPC", "Stumpy", regionName),
      Location:new("NPC", "Hype Cave", regionName, {equipment = "(+4)%%bomb%%"}),
      Location:new("Dig", "Digging Game", regionName, {equipment = "- 80 Rupees"})
    }
  )

  return region
end
