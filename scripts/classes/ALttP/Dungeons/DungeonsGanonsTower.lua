-- DungeonsGanonsTower.lua
-- DungeonsGanonsTower properties

local name = "Dungeons"
local subname = "GanonsTower"
DungeonsGanonsTower = Dungeons:new(name, subname) -- Instantiate Region

function DungeonsGanonsTower:new()
  local region = DungeonsGanonsTower -- Get easy region handle

  regionName = name .. subname -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("Dash", "Ganon's Tower - Bob's Torch", regionName),
      Location:new("Chest", "Ganon's Tower - DMs Room - Top Left", regionName),
      Location:new("Chest", "Ganon's Tower - DMs Room - Top Right", regionName),
      Location:new("Chest", "Ganon's Tower - DMs Room - Bottom Left", regionName),
      Location:new("Chest", "Ganon's Tower - DMs Room - Bottom Right", regionName),
      Location:new("Chest", "Ganon's Tower - Randomizer Room - Top Left", regionName),
      Location:new("Chest", "Ganon's Tower - Randomizer Room - Top Right", regionName),
      Location:new("Chest", "Ganon's Tower - Randomizer Room - Bottom Left", regionName),
      Location:new("Chest", "Ganon's Tower - Randomizer Room - Bottom Right", regionName),
      Location:new("Chest", "Ganon's Tower - Firesnake Room", regionName),
      Location:new("Chest", "Ganon's Tower - Map Chest", regionName),
      Location:new("BigChest", "Ganon's Tower - Big Chest", regionName),
      Location:new("Chest", "Ganon's Tower - Hope Room - Left", regionName),
      Location:new("Chest", "Ganon's Tower - Hope Room - Right", regionName),
      Location:new("Chest", "Ganon's Tower - Bob's Chest", regionName),
      Location:new("SpawnableChest", "Ganon's Tower - Tile Room", regionName),
      Location:new("Chest", "Ganon's Tower - Compass Room - Top Left", regionName),
      Location:new("Chest", "Ganon's Tower - Compass Room - Top Right", regionName),
      Location:new("Chest", "Ganon's Tower - Compass Room - Bottom Left", regionName),
      Location:new("Chest", "Ganon's Tower - Compass Room - Bottom Right", regionName),
      Location:new("Chest", "Ganon's Tower - Big Key Chest", regionName),
      Location:new("Chest", "Ganon's Tower - Big Key Room - Left", regionName),
      Location:new("Chest", "Ganon's Tower - Big Key Room - Right", regionName),
      Location:new("Chest", "Ganon's Tower - Mini Helmasaur Room - Left", regionName),
      Location:new("Chest", "Ganon's Tower - Mini Helmasaur Room - Right", regionName),
      Location:new("Chest", "Ganon's Tower - Pre-Moldorm Chest", regionName),
      Location:new("Chest", "Ganon's Tower - Moldorm Chest", regionName),
      Location:new("Boss", "Ganon's Tower - Armos Knights2", regionName),
      Location:new("Boss", "Ganon's Tower - Lanmolas2", regionName),
      Location:new("Boss", "Ganon's Tower - Moldorm2", regionName),
      Location:new("Event", "Ganon's Tower - Agahnim2", regionName)
    }
  )
  region.boss = BossAgahnim:new()
  region.boss_bottom = BossArmosKnights:new()
  region.boss_middle = BossLanmolas:new()
  region.boss_top = BossMoldorm:new()

  return region
end
