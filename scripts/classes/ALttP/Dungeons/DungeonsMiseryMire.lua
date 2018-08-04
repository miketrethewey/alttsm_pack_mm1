-- DungeonsMiseryMire.lua
-- DungeonsMiseryMire properties

local name = "Dungeons"
local subname = "MiseryMire"
DungeonsMiseryMire = Dungeons:new(name, subname) -- Instantiate Region

function DungeonsMiseryMire:new()
  local region = DungeonsMiseryMire              -- Get easy region handle

  regionName = name .. subname                   -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("BigChest", "Misery Mire - Big Chest", regionName),
      Location:new("SpawnableChest", "Misery Mire - Main Lobby", regionName),
      Location:new("Chest", "Misery Mire - Big Key Chest", regionName),
      Location:new("Chest", "Misery Mire - Compass Chest", regionName),
      Location:new("Chest", "Misery Mire - Bridge Chest", regionName),
      Location:new("Chest", "Misery Mire - Map Chest", regionName),
      Location:new("SpawnableChest", "Misery Mire - Spike Chest", regionName),
      Location:new("Event", "Misery Mire - Vitreous", regionName, {equipment = "%%medallion0%%%%lantern%%"})
    }
  )
  region.boss = BossVitreous:new()

  return region
end
