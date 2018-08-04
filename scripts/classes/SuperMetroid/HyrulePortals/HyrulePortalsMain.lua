-- HyrulePortalsMain.lua
-- HyrulePortalsMain properties

local name = "HyrulePortals"
local subname = "Main"
HyrulePortalsMain = HyrulePortals:new(name, subname) -- Instantiate Region

function HyrulePortalsMain:new()
  local region = HyrulePortalsMain                   -- Get easy region handle

  regionName = name .. subname                       -- Get combined region name
  region.locations =
    LocationCollection:new(
    {
      Location:new("Portal", "ALttPR Portal: Link's Fortune Teller", "CrateriaCentral"),
      Location:new("Portal", "ALttPR Portal: Death Mountain Cave", "NorfairWest"),
      Location:new("Portal", "ALttPR Portal: Dark World Ice Cave Right", "MaridiaInner"),
      Location:new("Portal", "ALttPR Portal: Misery Mire East 'Entrance'", "LowerNorfairWest")
    }
  )
  return region
end
