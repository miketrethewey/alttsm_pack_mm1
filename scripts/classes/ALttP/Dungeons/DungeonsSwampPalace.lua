-- DungeonsSwampPalace.lua
-- DungeonsSwampPalace properties

local name = "Dungeons"
local subname = "SwampPalace"
DungeonsSwampPalace = Dungeons:new(name, subname) -- Instantiate Region

function DungeonsSwampPalace:new()
  local region = DungeonsSwampPalace              -- Get easy region handle

  regionName = name .. subname                    -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("SpawnableChest", "Swamp Palace - Entrance", regionName),
      Location:new("BigChest", "Swamp Palace - Big Chest", regionName),
      Location:new("Chest", "Swamp Palace - Big Key Chest", regionName),
      Location:new("Chest", "Swamp Palace - Map Chest", regionName),
      Location:new("Chest", "Swamp Palace - West Chest", regionName),
      Location:new("SpawnableChest", "Swamp Palace - Compass Chest", regionName),
      Location:new("Chest", "Swamp Palace - Flooded Room - Left", regionName),
      Location:new("Chest", "Swamp Palace - Flooded Room - Right", regionName),
      Location:new("SpawnableChest", "Swamp Palace - Waterfall Room", regionName),
      Location:new("Event", "Swamp Palace - Arrghus", regionName, {equipment = "%%mirror%%"})
    }
  )
  region.boss = BossArrghus:new()
  return region
end
