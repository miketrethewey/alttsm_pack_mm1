-- BrinstarBlue.lua
-- BrinstarBlue properties

local name = "Brinstar"
local subname = "Blue"
BrinstarBlue = Brinstar:new(name, subname) -- Instantiate Region

function BrinstarBlue:new()
  local region = BrinstarBlue              -- Get easy region handle

  regionName = name .. subname             -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("", "Morphing Ball", regionName),
      Location:new("", "Power Bomb (blue Brinstar)", regionName, {equipment = "%%powerbomb%%"}),
      Location:new("", "Missile (blue Brinstar middle)", regionName, {equipment = "%%morph%%"}),
      Location:new("Hidden", "Energy Tank, Brinstar Ceiling", regionName),
      Location:new("Chozo", "Missile (blue Brinstar bottom)", regionName, {equipment = "%%morph%%"}),
      Location:new("", "Missile (blue Brinstar top)", regionName, {equipment = "%%powerbomb%%"}),
      Location:new("Hidden", "Missile (blue Brinstar behind missile)", regionName, {equipment = "%%powerbomb%%"})
    }
  )
  return region
end
