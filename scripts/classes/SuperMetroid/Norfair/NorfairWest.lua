-- NorfairWest.lua
-- NorfairWest properties

local name = "Norfair"
local subname = "West"
NorfairWest = Norfair:new(name, subname) -- Instantiate Region

function NorfairWest:new()
  local region = NorfairWest             -- Get easy region handle

  regionName = name .. subname           -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("Chozo", "Ice Beam", regionName),
      Location:new("Hidden", "Missile (below Ice Beam)", regionName, {spicy = true}),
      Location:new("Chozo", "Hi-Jump Boots", regionName),
      Location:new("", "Missile (Hi-Jump Boots)", regionName),
      Location:new("", "Energy Tank (Hi-Jump Boots)", regionName)
    }
  )
  return region
end
