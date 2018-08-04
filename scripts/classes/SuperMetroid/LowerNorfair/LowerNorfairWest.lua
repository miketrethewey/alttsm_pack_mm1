-- LowerNorfairWest.lua
-- LowerNorfairWest properties

local name = "LowerNorfair"
local subname = "West"
LowerNorfairWest = LowerNorfair:new(name, subname) -- Instantiate Region

function LowerNorfairWest:new()
  local region = LowerNorfairWest                  -- Get easy region handle

  regionName = name .. subname                     -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("", "Missile (Gold Torizo)", regionName, {spicy = true}),
      Location:new("Hidden", "Super Missile (Gold Torizo)", regionName, {spicy = true}),
      Location:new("Chozo", "Screw Attack", regionName, {spicy = true}),
      Location:new("Event", "Gold Torizo", regionName, {spicy = true})
    }
  )
  return region
end
