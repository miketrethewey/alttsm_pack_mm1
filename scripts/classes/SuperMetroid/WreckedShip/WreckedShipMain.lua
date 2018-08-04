-- WreckedShipMain.lua
-- WreckedShipMain properties

local name = "WreckedShip"
local subname = "Main"
WreckedShipMain = WreckedShip:new(name, subname) -- Instantiate Region

function WreckedShipMain:new()
  local region = WreckedShipMain                 -- Get easy region handle

  regionName = name .. subname                   -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("", "Missile (Wrecked Ship middle)", regionName),
      Location:new("Chozo", "Reserve Tank, Wrecked Ship", regionName, {equipment = "%%speed%%"}),
      Location:new("", "Missile (Gravity Suit)", regionName),
      Location:new("", "Missile (Wrecked Ship top)", regionName),
      Location:new("", "Energy Tank (Wrecked Ship)", regionName),
      Location:new("", "Super Missile (Wrecked Ship left)", regionName),
      Location:new("", "Right Super, Wrecked Ship", regionName),
      Location:new("Chozo", "Gravity Suit", regionName),
      Location:new("Event", "Phantoon", regionName)
    }
  )
  return region
end
