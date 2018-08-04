-- NorfairEast.lua
-- NorfairEast properties

local name = "Norfair"
local subname = "East"
NorfairEast = Norfair:new(name, subname) -- Instantiate Region

function NorfairEast:new()
  local region = NorfairEast             -- Get easy region handle

  regionName = name .. subname           -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("Hidden", "Missile (lava room)", regionName, {equipment = "%%morph%%", spicy = true}),
      Location:new("Chozo", "Reserve Tank, Norfair", regionName, {spicy = true}),
      Location:new("Hidden", "Missile (Norfair Reserve Tank)", regionName, {spicy = true}),
      Location:new("", "Missile (bubble Norfair green door)", regionName, {spicy = true}),
      Location:new("", "Missile (bubble Norfair)", regionName),
      Location:new("Hidden", "Missile (Speed Booster)", regionName, {spicy = true}),
      Location:new("Chozo", "Speed Booster", regionName, {spicy = true}),
      Location:new("", "Missile (Wave Beam)", regionName, {spicy = true}),
      Location:new("Chozo", "Wave Beam", regionName)
    }
  )
  return region
end
