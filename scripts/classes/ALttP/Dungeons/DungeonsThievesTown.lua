-- DungeonsThievesTown.lua
-- DungeonsThievesTown properties

local name = "Dungeons"
local subname = "ThievesTown"
DungeonsThievesTown = Dungeons:new(name, subname) -- Instantiate Region

function DungeonsThievesTown:new()
  local region = DungeonsThievesTown              -- Get easy region handle

  regionName = name .. subname                    -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("Chest", "Thieves' Town - Attic", regionName),
      Location:new("Chest", "Thieves' Town - Big Key Chest", regionName),
      Location:new("Chest", "Thieves' Town - Map Chest", regionName),
      Location:new("Chest", "Thieves' Town - Compass Chest", regionName),
      Location:new("Chest", "Thieves' Town - Ambush Chest", regionName),
      Location:new("BigChest", "Thieves' Town - Big Chest", regionName, {equipment = "%%hammer%%"}),
      Location:new("Chest", "Thieves' Town - Blind's Cell", regionName),
      Location:new("Event", "Thieves' Town - Blind", regionName)
    }
  )
  region.boss = BossBlind:new()
  return region
end
