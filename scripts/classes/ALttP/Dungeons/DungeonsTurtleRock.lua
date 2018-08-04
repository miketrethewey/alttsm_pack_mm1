-- DungeonsTurtleRock.lua
-- DungeonsTurtleRock properties

local name = "Dungeons"
local subname = "TurtleRock"
DungeonsTurtleRock = Dungeons:new(name, subname) -- Instantiate Region

function DungeonsTurtleRock:new()
  local region = DungeonsTurtleRock              -- Get easy region handle

  regionName = name .. subname                   -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("SpawnableChest", "Turtle Rock - Chain Chomps", regionName),
      Location:new("Chest", "Turtle Rock - Compass Chest", regionName),
      Location:new("Chest", "Turtle Rock - Roller Room - Left", regionName),
      Location:new("Chest", "Turtle Rock - Roller Room - Right", regionName),
      Location:new("BigChest", "Turtle Rock - Big Chest", regionName),
      Location:new("Chest", "Turtle Rock - Big Key Chest", regionName),
      Location:new("Chest", "Turtle Rock - Crystaroller Room", regionName),
      Location:new("Chest", "Turtle Rock - Eye Bridge - Bottom Left", regionName),
      Location:new("Chest", "Turtle Rock - Eye Bridge - Bottom Right", regionName),
      Location:new("Chest", "Turtle Rock - Eye Bridge - Top Left", regionName),
      Location:new("Chest", "Turtle Rock - Eye Bridge - Top Right", regionName),
      Location:new("Event", "Turtle Rock - Trinexx", regionName, {equipment = "%%medallion0%%%%lantern%%"})
    }
  )
  region.boss = BossTrinexx:new()
  return region
end
