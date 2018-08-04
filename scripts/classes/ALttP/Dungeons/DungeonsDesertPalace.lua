-- DungeonsDesertPalace.lua
-- DungeonsDesertPalace properties

local name = "Dungeons"
local subname = "DesertPalace"
DungeonsDesertPalace = Dungeons:new(name, subname) -- Instantiate Region

function DungeonsDesertPalace:new()
  local region = DungeonsDesertPalace              -- Get easy region handle

  regionName = name .. subname                     -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("BigChest", "Desert Palace - Big Chest", regionName),
      Location:new("Chest", "Desert Palace - Map Chest", regionName),
      Location:new("Dash", "Desert Palace - Torch", regionName),
      Location:new("Chest", "Desert Palace - Big Key Chest", regionName),
      Location:new("Chest", "Desert Palace - Compass Chest", regionName),
      Location:new("Event", "Desert Palace - Lanmolas", regionName)
    }
  )
  region.boss = BossLanmolas:new()

  return region
end
