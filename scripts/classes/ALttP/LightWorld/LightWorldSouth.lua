-- LightWorldSouth.lua
-- LightWorldSouth properties

local name = "LightWorld"
local subname = "South"
LightWorldSouth = LightWorld:new(name, subname) -- Instantiate Region

function LightWorldSouth:new()
  local region = LightWorldSouth                -- Get easy region handle

  regionName = name .. subname                  -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("Chest", "Floodgate Chest", regionName),
      Location:new("Chest", "Link's House", regionName),
      Location:new("Chest", "Aginah's Cave", regionName, {equipment = "%%bomb%%"}),
      Location:new("Chest", "Ice Rod Cave", regionName, {equipment = "%%bomb%%"}),
      Location:new("NPC", "Hobo", regionName, {equipment = "%%flippers%%"}),
      Location:new("Tablet", "Bombos Tablet", regionName, {equipment = "%%mirror%%%%sword2%%%%book%%"}),
      Location:new("Standing", "Cave 45", regionName, {equipment = "(South of Grove) %%mirror%%"}),
      Location:new("Standing", "Checkerboard Cave", regionName, {equipment = "%%mirror%%"}),
      Location:new("NPC", "Mini Moldorm Cave", regionName, {equipment = "(NPC + 4)%%bomb%%"}),
      Location:new("Dash", "Library", regionName, {equipment = "%%boots%%"}),
      Location:new("Standing", "Maze Race", regionName, {equipment = "%%bomb%%/%%boots%%"}),
      Location:new("Standing", "Desert Ledge", regionName, {equipment = "%%book%%/%%mirror%%"}),
      Location:new("Standing", "Lake Hylia Island", regionName, {equipment = "%%mirror%%"}),
      Location:new("Standing", "Sunken Treasure", regionName),
      Location:new("Dig", "Flute Spot", regionName, {equipment = "%%shovel%%"})
    }
  )

  return region
end
