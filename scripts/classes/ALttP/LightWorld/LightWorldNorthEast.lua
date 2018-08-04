-- LightWorldNorthEast.lua
-- LightWorldNorthEast properties

local name = "LightWorld"
local subname = "NorthEast"
LightWorldNorthEast = LightWorld:new(name, subname) -- Instantiate Region

function LightWorldNorthEast:new()
  local region = LightWorldNorthEast                -- Get easy region handle

  regionName = name .. subname                      -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("Chest", "Sahasrahla's Hut (3)", regionName, {equipment = "%%bomb%%/%%boots%%"}),
      Location:new("NPC", "Sahasrahla", regionName, {equipment = "%%pendant0%%"}),
      Location:new("NPC", "King Zora", regionName, {equipment = "- 500 Rupees"}),
      Location:new("NPC", "Potion Shop", regionName, {equipment = "%%mushroom%%"}),
      Location:new("Standing", "Zora Ledge", regionName, {equipment = "%%flippers%%"}),
      Location:new("Chest", "Waterfall Fairy", regionName, {equipment = "%%flippers%%"})
    }
  )

  return region
end
