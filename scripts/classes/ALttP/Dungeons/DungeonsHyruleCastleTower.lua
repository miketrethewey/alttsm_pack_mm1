-- DungeonsHyruleCastleTower.lua
-- DungeonsHyruleCastleTower properties

local name = "Dungeons"
local subname = "HyruleCastleTower"
DungeonsHyruleCastleTower = Dungeons:new(name, subname) -- Instantiate Region

function DungeonsHyruleCastleTower:new()
  local region = DungeonsHyruleCastleTower              -- Get easy region handle

  regionName = name .. subname                          -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("Chest", "Castle Tower - Room 03", regionName),
      Location:new("Chest", "Castle Tower - Dark Maze", regionName),
      Location:new("Boss", "Castle Tower - Agahnim", regionName)
    }
  )
  region.boss = BossAgahnim:new()

  return region
end
