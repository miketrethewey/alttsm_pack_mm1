-- LocationCollection.lua
-- LocationCollection properties
LocationCollection = {
  region = "", -- Region name
  items = {}   -- Region locations
}
LocationCollection.mt = {}

-- LocationCollection constructor
function LocationCollection:new(locations, region)
  local self = {}                           -- Make a new object
  setmetatable(self, LocationCollection.mt) -- Bind this object to LocationCollection metatable

  -- Set default members to this LocationCollection object
  for k, v in pairs(LocationCollection) do
    self[k] = v
  end

  -- Set specific members to this LocationCollection object
  self.locations = locations or {}
  self.region = region

  for k, v in pairs(locations) do
    self.items[v.name] = v
  end

  -- Return LocationCollection items
  return self.items
end

-- Examples
--[[

regionName = "BrinstarBlue"         -- Get combined region name
locations = LocationCollection:new( -- Create locations
  {
    Location:new("Visible","Morphing Ball",regionName,{spicy=true,equipment="%%mirror%%"}),
    Location:new("Hidden","Energy Tank, Brinstar Ceiling",regionName,{equipment="%%ice%%"})
  }
)
loc = locations["Energy Tank, Brinstar Ceiling"] -- Get easy location handle
function loc:casualLogic() -- Override Casual Logic
  return 0
end

--]]
