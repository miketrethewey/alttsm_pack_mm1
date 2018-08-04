-- DungeonsTowerOfHera.lua
-- DungeonsTowerOfHera properties

local name = "Dungeons"
local subname = "TowerOfHera"
DungeonsTowerOfHera = Dungeons:new(name, subname) -- Instantiate Region

function DungeonsTowerOfHera:new()
  local region = DungeonsTowerOfHera              -- Get easy region handle

  regionName = name .. subname                    -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("SpawnableChest", "Tower of Hera - Big Key Chest", regionName),
      Location:new("Standing", "Tower of Hera - Basement Cage", regionName),
      Location:new("Chest", "Tower of Hera - Map Chest", regionName),
      Location:new("Chest", "Tower of Hera - Compass Chest", regionName),
      Location:new("BigChest", "Tower of Hera - Big Chest", regionName),
      Location:new("Event", "Tower of Hera - Moldorm", regionName)
    }
  )
  region.boss = BossMoldorm:new()
  return region
end
