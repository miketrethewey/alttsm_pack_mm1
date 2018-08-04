-- DungeonsPalaceOfDarkness.lua
-- DungeonsPalaceOfDarkness properties

local name = "Dungeons"
local subname = "PalaceOfDarkness"
DungeonsPalaceOfDarkness = Dungeons:new(name, subname) -- Instantiate Region

function DungeonsPalaceOfDarkness:new()
  local region = DungeonsPalaceOfDarkness              -- Get easy region handle

  regionName = name .. subname                         -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("Chest", "Palace of Darkness - Shooter Room", regionName),
      Location:new("Chest", "Palace of Darkness - Big Key Chest", regionName),
      Location:new("Chest", "Palace of Darkness - The Arena - Ledge", regionName),
      Location:new("Chest", "Palace of Darkness - The Arena - Bridge", regionName),
      Location:new("Chest", "Palace of Darkness - Stalfos Basement", regionName),
      Location:new("Chest", "Palace of Darkness - Map Chest", regionName),
      Location:new("BigChest", "Palace of Darkness - Big Chest", regionName),
      Location:new("Chest", "Palace of Darkness - Compass Chest", regionName),
      Location:new("Chest", "Palace of Darkness - Harmless Hellway", regionName),
      Location:new("Chest", "Palace of Darkness - Dark Basement - Left", regionName),
      Location:new("Chest", "Palace of Darkness - Dark Basement - Right", regionName),
      Location:new("Chest", "Palace of Darkness - Dark Maze - Top", regionName),
      Location:new("Chest", "Palace of Darkness - Dark Maze - Bottom", regionName),
      Location:new("Event", "Palace of Darkness - Helmasaur King", regionName, {equipment = "%%lantern%%"})
    }
  )
  region.boss = BossHelmasaurKing:new()
  return region
end
