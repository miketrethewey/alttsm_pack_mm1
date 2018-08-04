-- DungeonsEasternPalace.lua
-- DungeonsEasternPalace properties

local name = "Dungeons"
local subname = "EasternPalace"
DungeonsEasternPalace = Dungeons:new(name, subname) -- Instantiate Region

function DungeonsEasternPalace:new()
  local region = DungeonsEasternPalace              -- Get easy region handle

  regionName = name .. subname                      -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("Chest", "Eastern Palace - Compass Chest", regionName),
      Location:new("BigChest", "Eastern Palace - Big Chest", regionName),
      Location:new("Chest", "Eastern Palace - Cannonball Chest", regionName),
      Location:new("Chest", "Eastern Palace - Big Key Chest", regionName, {equipment = "%%lantern%%"}),
      Location:new("Chest", "Eastern Palace - Map Chest", regionName),
      Location:new("Event", "Eastern Palace - Armos Knights", regionName, {equipment = "%%lantern%%"})
    }
  )
  region.boss = BossArmosKnights:new()
  return region
end
