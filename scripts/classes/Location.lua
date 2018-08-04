-- Location.lua
-- Location properties
Location = {
  type = "" --[[ Location type:
                 Visible,
                 Hidden,
                 Chozo,

                 Chest,
                 NPC,
                 Standing,
                 BigChest,
                 SpawnableChest,
                 Event,
                 Boss,
                 Dash,
                 Pedestal,
                 Dig,
                 Tablet,
  --]],

  name = "",     -- Location name
  glitchless = function() return 1 end,    -- glitchless
  minorGlitches = function() return 1 end, -- minorGlitches
  owGlitches = function() return 1 end,    -- owGlitches
  majorGlitches = function() return 1 end, -- majorGlitches
  casualLogic = function() return 1 end,   -- casualLogic
  tourneyLogic = function() return 1 end,  -- tourneyLogic
  region = "",   -- Region name
  spicy = "",    -- isSpicy
  equipment = "" -- Required equipment
}
Location.mt = {}
Location.__index = Location

-- Location constructor
function Location:new(type, name, region, extra)
  local self = {}                 -- Make a new object
  setmetatable(self, Location.mt) -- Bind this object to Boss metatable

  -- Set default members to this Boss object
  for k, v in pairs(Location) do
    self[k] = v
  end

  -- Set specific members to this Boss object
  self.type = type or "Visible"
  self.name = name
  self.region = region

  extra = extra or {}

  if (extra["spicy"] == true) then
    self.spicy = 1
  end
  if (extra["equipment"]) then
    self.equipment = extra["equipment"]
  end

  -- Return completed Location object
  return self
end

-- Examples
--[[

-- Create location objects
Morph = Location:new("Visible","Morphing Ball","BrinstarBlue",{spicy=true,equipment="%%mirror%%"})
ETank = Location:new("Hidden","Energy Tank, Brinstar Ceiling","BrinstarBlue",{equipment="%%ice%%"})
loc = ETank                -- Get easy location handle
function loc:casualLogic() -- Override Casual Logic
  return 0
end

--]]
