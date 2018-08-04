-- CrateriaCentral.lua
-- CrateriaCentral properties

local name = "Crateria"
local subname = "Central"
CrateriaCentral = Crateria:new(name, subname) -- Instantiate Region

function CrateriaCentral:new()
  local region = CrateriaCentral              -- Get easy region handle

  regionName = name .. subname                -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("", "Power Bomb (Crateria surface)", regionName, {equipment = "%%powerbomb%%"}),
      Location:new("", "Missile (Crateria middle)", regionName),
      Location:new("", "Missile (Crateria bottom)", regionName),
      Location:new("", "Super Missile (Crateria)", regionName),
      Location:new("Chozo", "Bombs", regionName),
      Location:new("Event", "Torizo", regionName)
    }
  )
  return region
end
