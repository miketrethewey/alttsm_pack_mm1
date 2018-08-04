-- ZebesPortalsMain.lua
-- ZebesPortalsMain properties

local name = "ZebesPortals"
local subname = "Main"
ZebesPortalsMain = ZebesPortals:new(name, subname) -- Instantiate Region

function ZebesPortalsMain:new()
  local region = ZebesPortalsMain                  -- Get easy region handle

  regionName = name .. subname                     -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("Portal", "SM Portal: Crateria Map Room", "LightWorldSouth"),
      Location:new("Portal", "SM Portal: Norfair Map Room", "DeathMountainWest"),
      Location:new("Portal", "SM Portal: Maridia Missile Refill", "DarkWorldSouth"),
      Location:new("Portal", "SM Portal: Lower Norfair Golden Torizo Energy Refill", "DarkWorldMire")
    }
  )

  return region
end
