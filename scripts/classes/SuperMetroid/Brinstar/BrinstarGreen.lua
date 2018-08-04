-- BrinstarGreen.lua
-- BrinstarGreen properties

local name = "Brinstar"
local subname = "Green"
BrinstarGreen = Brinstar:new(name, subname) -- Instantiate Region

function BrinstarGreen:new()
  local region = BrinstarGreen              -- Get easy region handle

  regionName = name .. subname              -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("Chozo", "Power Bomb (green Brinstar bottom)", regionName, {equipment = "%%morph%%"}),
      Location:new("", "Missile (green Brinstar below super missile)", regionName, {equipment = "%%missile%%"}),
      Location:new("", "Super Missile (green Brinstar top)", regionName),
      Location:new("Chozo", "Reserve Tank, Brinstar", regionName),
      Location:new("Hidden", "Missile (green Brinstar behind missile)", regionName, {equipment = "%%missile%%%%morph%%"}),
      Location:new("", "Missile (green Brinstar behind reserve tank)", regionName, {equipment = "%%missile%%%%morph%%"}),
      Location:new("", "Energy Tank, Etecoons", regionName, {equipment = "%%powerbomb%%"}),
      Location:new("", "Super Missile (green Brinstar bottom)", regionName, {equipment = "%%powerbomb%%%%supermissile%%"})
    }
  )
  return region
end
