-- NorfairCrocomire.lua
-- NorfairCrocomire properties

local name = "Norfair"
local subname = "Crocomire"
NorfairCrocomire = Norfair:new(name, subname) -- Instantiate Region

function NorfairCrocomire:new()
  local region = NorfairCrocomire             -- Get easy region handle

  regionName = name .. subname                -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("", "Energy Tank, Crocomire", regionName),
      Location:new("", "Missile (above Crocomire)", regionName, {spicy = true}),
      Location:new("", "Power Bomb (Crocomire)", regionName, {spicy = true}),
      Location:new("", "Missile (below Crocomire)", regionName),
      Location:new("", "Missile (Grapple Beam)", regionName),
      Location:new("Chozo", "Grapple Beam", regionName),
      Location:new("Event", "Crocomire", regionName)
    }
  )
  return region
end
