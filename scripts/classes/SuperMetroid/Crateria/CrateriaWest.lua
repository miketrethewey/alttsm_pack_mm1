-- CrateriaWest.lua
-- CrateriaWest properties

local name = "Crateria"
local subname = "West"
CrateriaWest = Crateria:new(name, subname) -- Instantiate Region

function CrateriaWest:new()
  local region = CrateriaWest              -- Get easy region handle

  regionName = name .. subname             -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("", "Energy Tank, Terminator", regionName),
      Location:new("", "Energy Tank, Gauntlet", regionName, {equipment = "%%powerbomb%%%%missile%%"}),
      Location:new("", "Missile (Crateria gauntlet right)", regionName, {equipment = "%%powerbomb%%%%missile%%"}),
      Location:new("", "Missile (Crateria gauntlet left)", regionName, {equipment = "%%powerbomb%%%%missile%%"})
    }
  )
  return region
end
