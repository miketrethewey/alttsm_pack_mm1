-- MaridiaOuter.lua
-- MaridiaOuter properties

local name = "Maridia"
local subname = "Outer"
MaridiaOuter = Maridia:new(name, subname) -- Instantiate Region

function MaridiaOuter:new()
  local region = MaridiaOuter             -- Get easy region handle

  regionName = name .. subname            -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("", "Missile (green Maridia shinespark)", regionName, {equipment = "%%gravity%%%%speed%%"}),
      Location:new("", "Super Missile (green Maridia)", regionName),
      Location:new("", "Energy Tank, Mama turtle", regionName),
      Location:new("Hidden", "Missile (green Maridia tatori)", regionName)
    }
  )
  return region
end
