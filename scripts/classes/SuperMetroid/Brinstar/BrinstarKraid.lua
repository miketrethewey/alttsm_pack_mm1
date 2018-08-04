-- BrinstarKraid.lua
-- BrinstarKraid properties

local name = "Brinstar"
local subname = "Kraid"
BrinstarKraid = Brinstar:new(name, subname) -- Instantiate Region

function BrinstarKraid:new()
  local region = BrinstarKraid              -- Get easy region handle

  regionName = name .. subname              -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("Hidden", "Energy Tank, Kraid", regionName),
      Location:new("Chozo", "Varia Suit", regionName, {equipment = "%%kraid%%"}),
      Location:new("Hidden", "Missile (Kraid)", regionName, {equipment = "%%powerbomb%%"}),
      Location:new("Event", "Kraid", regionName)
    }
  )
  return region
end
