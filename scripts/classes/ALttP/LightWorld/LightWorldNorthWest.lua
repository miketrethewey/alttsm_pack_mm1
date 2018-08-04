-- LightWorldNorthWest.lua
-- LightWorldNorthWest properties

local name = "LightWorld"
local subname = "NorthWest"
LightWorldNorthWest = LightWorld:new(name, subname) -- Instantiate Region

function LightWorldNorthWest:new()
  local region = LightWorldNorthWest                -- Get easy region handle

  regionName = name .. subname                      -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("Pedestal", "Master Sword Pedestal", regionName, {equipment = "%%pendant0%%%%pendant1%%%%pendant2%% (can check with %%book%%)"}),
      Location:new("Chest", "King's Tomb", regionName, {equipment = "%%boots%% + %%glove2%%/%%mirror%%"}),
      Location:new("Chest", "Kakariko Tavern", regionName),
      Location:new("Chest", "Chicken House", regionName, {equipment = "%%bomb%%"}),
      Location:new("Chest", "Kakariko Well", regionName, {equipment = "(4 + %%bomb%%)"}),
      Location:new("Chest", "Blind's Hideout", regionName, {equipment = "(4 + %%bomb%%)"}),
      Location:new("Chest", "Pegasus Rocks", regionName, {equipment = "%%boots%%"}),
      Location:new("NPC", "Bottle Merchant", regionName, {equipment = "100 Rupees"}),
      Location:new("NPC", "Magic Bat", regionName, {equipment = "%%hammer%%/%%boots%% + %%powder%%"}),
      Location:new("NPC", "Sick Kid", regionName, {equipment = "%%bottle%%"}),
      Location:new("Standing", "Lost Woods Hideout", regionName),
      Location:new("Standing", "Lumberjack Tree", regionName, {equipment = "%%agahnim%%%%boots%%"}),
      Location:new("Standing", "Graveyard Ledge", regionName, {equipment = "%%mirror%%"}),
      Location:new("Standing", "Mushroom", regionName)
    }
  )

  return region
end
