-- DungeonsIcePalace.lua
-- DungeonsIcePalace properties

local name = "Dungeons"
local subname = "IcePalace"
DungeonsIcePalace = Dungeons:new(name, subname) -- Instantiate Region

function DungeonsIcePalace:new()
  local region = DungeonsIcePalace              -- Get easy region handle

  regionName = name .. subname                  -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("Chest", "Ice Palace - Big Key Chest", regionName),
      Location:new("Chest", "Ice Palace - Compass Chest", regionName),
      Location:new("Chest", "Ice Palace - Map Chest", regionName),
      Location:new("SpawnableChest", "Ice Palace - Spike Room", regionName),
      Location:new("SpawnableChest", "Ice Palace - Freezor Chest", regionName),
      Location:new("Chest", "Ice Palace - Iced T Room", regionName),
      Location:new("BigChest", "Ice Palace - Big Chest", regionName),
      Location:new("Event", "Ice Palace - Kholdstare", regionName)
    }
  )
  region.boss = BossKholdstare:new()

  return region
end
