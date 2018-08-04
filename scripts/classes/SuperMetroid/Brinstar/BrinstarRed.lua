-- BrinstarRed.lua
-- BrinstarRed properties

local name = "Brinstar"
local subname = "Red"
BrinstarRed = Brinstar:new(name, subname) -- Instantiate Region

function BrinstarRed:new()
  local region = BrinstarRed              -- Get easy region handle

  regionName = name .. subname            -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("Chozo", "X-Ray Scope", regionName, {equipment = "%%powerbomb%%%%missile%%"}),
      Location:new("", "Power Bomb (red Brinstar sidehopper room)", regionName, {equipment = "%%powerbomb%%%%supermissile%%"}),
      Location:new("Chozo", "Power Bomb (red Brinstar spike room)", regionName, {equipment = "%%supermissile%%"}),
      Location:new("", "Missile (red Brinstar spike room)", regionName, {equipment = "%%powerbomb%%%%supermissile%%"}),
      Location:new("Chozo", "Spazer", regionName, {equipment = "%%supermissile%%"})
    }
  )
  return region
end
