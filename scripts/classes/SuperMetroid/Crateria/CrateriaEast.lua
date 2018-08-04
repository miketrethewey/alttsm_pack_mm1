-- CrateriaEast.lua
-- CrateriaEast properties

local name = "Crateria"
local subname = "East"
CrateriaEast = Crateria:new(name, subname) -- Instantiate Region

function CrateriaEast:new()
  local region = CrateriaEast              -- Get easy region handle

  regionName = name .. subname             -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("", "Missile (outside Wrecked Ship bottom)", regionName),
      Location:new("", "Missile (outside Wrecked Ship top)", regionName),
      Location:new("", "Missile (outside Wrecked Ship middle)", regionName),
      Location:new("", "Missile (Crateria Moat)", regionName)
    }
  )
  return region
end
