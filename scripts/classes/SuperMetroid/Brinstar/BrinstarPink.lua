-- BrinstarPink.lua
-- BrinstarPink properties

local name = "Brinstar"
local subname = "Pink"
BrinstarPink = Brinstar:new(name, subname) -- Instantiate Region

function BrinstarPink:new()
  local region = BrinstarPink              -- Get easy region handle

  regionName = name .. subname             -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("Chozo", "Super Missile (pink Brinstar)", regionName, {equipment = "%%bombs%%%%supermissile%%"}),
      Location:new("", "Missile (pink Brinstar top)", regionName),
      Location:new("", "Missile (pink Brinstar bottom)", regionName),
      Location:new("Chozo", "Charge Beam", regionName, {equipment = "%%bombs%%"}),
      Location:new("", "Power Bomb (pink Brinstar)", regionName, {equipment = "%%powerbomb%%%%supermissile%%"}),
      Location:new("", "Missile (green Brinstar pipe)", regionName, {equipment = "%%morph%%"}),
      Location:new("", "Energy Tank, Waterway", regionName, {equipment = "%%powerbomb%%%%missile%%%%speed%%"}),
      Location:new("", "Energy Tank, Brinstar Gate", regionName, {equipment = "%%powerbomb%%"}),
      Location:new("Event", "Spore Spawn", regionName)
    }
  )
  return region
end
