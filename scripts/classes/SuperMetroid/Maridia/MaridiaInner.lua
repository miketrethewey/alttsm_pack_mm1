-- MaridiaInner.lua
-- MaridiaInner properties

local name = "Maridia"
local subname = "Inner"
MaridiaInner = Maridia:new(name, subname) -- Instantiate Region

function MaridiaInner:new()
  local region = MaridiaInner             -- Get easy region handle

  regionName = name .. subname            -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("", "Super Missile (yellow Maridia)", regionName),
      Location:new("", "Missile (yellow Maridia super missile)", regionName),
      Location:new("", "Missile (yellow Maridia false wall)", regionName),
      Location:new("Chozo", "Plasma Beam", regionName),
      Location:new("", "Missile (left Maridia sand pit room)", regionName),
      Location:new("Chozo", "Reserve Tank, Maridia", regionName),
      Location:new("", "Missile (right Maridia sand pit room)", regionName),
      Location:new("", "Power Bomb (right Maridia sand pit room)", regionName, {equipment = "%%gravity%%"}),
      Location:new("", "Missile (pink Maridia)", regionName, {equipment = "%%gravity%%%%speed%%"}),
      Location:new("", "Super Missile (pink Maridia)", regionName),
      Location:new("Chozo", "Spring Ball", regionName, {equipment = "%%gravity%%%%grappling%%"}),
      Location:new("Hidden", "Missile (Draygon)", regionName),
      Location:new("", "Energy Tank, Botwoon", regionName),
      Location:new("Chozo", "Space Jump", regionName),
      Location:new("Event", "Botwoon", regionName),
      Location:new("Event", "Draygon", regionName)
    }
  )
  return region
end
