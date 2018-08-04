-- TourianMain.lua
-- TourianMain properties

local name = "Tourian"
local subname = "Main"
TourianMain = Tourian:new(name, subname) -- Instantiate Region

function TourianMain:new()
  local region = TourianMain             -- Get easy region handle

  regionName = name .. subname           -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("Event", "Mother Brain", regionName)
    }
  )
  return region
end
