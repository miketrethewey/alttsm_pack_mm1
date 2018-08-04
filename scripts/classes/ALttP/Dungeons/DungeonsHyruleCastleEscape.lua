-- DungeonsHyruleCastleEscape.lua
-- DungeonsHyruleCastleEscape properties

local name = "Dungeons"
local subname = "HyruleCastleEscape"
DungeonsHyruleCastleEscape = Dungeons:new(name, subname) -- Instantiate Region

function DungeonsHyruleCastleEscape:new()
  local region = DungeonsHyruleCastleEscape              -- Get easy region handle

  regionName = name .. subname                           -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("Chest", "Sanctuary", regionName),
      Location:new("Chest", "Sewers - Secret Room (3)", regionName, {equipment = "%%bomb%%/%%boots%%"}),
      Location:new("Chest", "Sewers - Dark Cross", regionName, {equipment = "%%lantern%%"}),
      Location:new("Chest", "Hyrule Castle (3)", regionName),
      Location:new("Chest", "Secret Passage (2)", regionName)
    }
  )

  return region
end
