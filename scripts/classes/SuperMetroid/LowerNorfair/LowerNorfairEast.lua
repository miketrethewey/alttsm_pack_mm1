-- LowerNorfairEast.lua
-- LowerNorfairEast properties

local name = "LowerNorfair"
local subname = "East"
LowerNorfairEast = LowerNorfair:new(name, subname) -- Instantiate Region

function LowerNorfairEast:new()
  local region = LowerNorfairEast                  -- Get easy region handle

  regionName = name .. subname                     -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("", "Missile (Mickey Mouse room)", regionName, {spicy = true}),
      Location:new("", "Missile (lower Nofair above fire flea room)", regionName),
      Location:new("", "Power Bomb (lower Norfair above fire flea room)", regionName, {spicy = true}),
      Location:new("", "Power Bomb (Power Bombs of shame)", regionName, {spicy = true}),
      Location:new("", "Missile (lower Norfair near Wave Beam)", regionName),
      Location:new("Hidden", "Energy Tank, Ridley", regionName, {spicy = true}),
      Location:new("", "Energy Tank, Firefleas", regionName),
      Location:new("Event", "Ridley", regionName, {spicy = true})
    }
  )
  return region
end
