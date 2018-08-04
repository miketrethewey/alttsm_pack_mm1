-- DungeonsSkullWoods.lua
-- DungeonsSkullWoods properties

local name = "Dungeons"
local subname = "SkullWoods"
DungeonsSkullWoods = Dungeons:new(name, subname) -- Instantiate Region

function DungeonsSkullWoods:new()
  local region = DungeonsSkullWoods              -- Get easy region handle

  regionName = name .. subname                   -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("BigChest", "Skull Woods - Big Chest", regionName),
      Location:new("Chest", "Skull Woods - Big Key Chest", regionName),
      Location:new("Chest", "Skull Woods - Map Chest", regionName),
      Location:new("Chest", "Skull Woods - Bridge Room", regionName),
      Location:new("Chest", "Skull Woods - Pot Prison", regionName),
      Location:new("Chest", "Skull Woods - Pinball Room", regionName),
      Location:new("Event", "Skull Woods - Mothula", regionName)
    }
  )
  region.boss = BossMothula:new()
  return region
end
