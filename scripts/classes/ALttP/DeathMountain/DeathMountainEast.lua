-- DeathMountainEast.lua
-- DeathMountainEast properties

local name = "DeathMountain"
local subname = "East"
DeathMountainEast = DeathMountain:new(name, subname) -- Instantiate Region

function DeathMountainEast()
  local region = DeathMountainEast                   -- Get easy region handle

  regionName = name .. subname                       -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("Chest", "Spiral Cave", regionName),
      Location:new("Chest", "Mimic Cave", regionName, {equipment = "(%%mirror%% outside of Turtle Rock)(Yellow = %%medallion0%% unknown OR possible w/out %%firerod%%"}),
      Location:new("Chest", "Paradox Cave", regionName, {equipment = "(5 + 2 %%bomb%%)"}),
      Location:new("Standing", "Floating Island", regionName, {equipment = "%%mirror%%"})
    }
  )

  return region
end
