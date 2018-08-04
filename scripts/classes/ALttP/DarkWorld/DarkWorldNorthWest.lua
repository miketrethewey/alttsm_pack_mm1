-- DarkWorldNorthWest.lua
-- DarkWorldNorthWest properties

local name = "DarkWorld"
local subname = "NorthWest"
DarkWorldNorthWest = DarkWorld:new(name, subname) -- Instantiate Region

function DarkWorldNorthWest:new()
  local region = DarkWorldNorthWest               -- Get easy region handle

  regionName = name .. subname                    -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("Chest", "Brewery", regionName, {equipment = "%%bomb%%"}),
      Location:new("Chest", "C-Shaped House", regionName),
      Location:new("Chest", "Chest Game", regionName, {equipment = "- 30 Rupees"}),
      Location:new("Standing","Hammer Pegs",regionName,{equipment = "%%hammer%%%%hammer%%%%hammer%%%%hammer%%%%hammer%%%%hammer%%%%hammer%%%%hammer%%"}),
      Location:new("Standing", "Bumper Cave", regionName, {equipment = "%%cape%%"}),
      Location:new("NPC", "Blacksmith", regionName, {equipment = "(%%mirror%% or save and quit)"}),
      Location:new("NPC", "Purple Chest", regionName, {equipment = "(%%mirror%% or save and quit)"})
    }
  )

  return region
end
