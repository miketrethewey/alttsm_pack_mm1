-- Region.lua
-- Region properties
Region = {
  name = "",          -- Region name
  subname = "",       -- Region subname
  buildLocations = 0, -- Build locations
  canEnter = {
    -- canEnter
    glitchless = function() return 1 end,    -- No Glitches
    minorGlitches = function() return 1 end, -- Minor
    owGlitches = function() return 1 end,    -- OWG
    majorGlitches = function() return 1 end, -- Major
    casualLogic = function() return 1 end,   -- Casual
    tourneyLogic = function() return 1 end   -- Tourney
  },
  canComplete = {
    -- canComplete
    glitchless = function() return 1 end,    -- No Glitches
    minorGlitches = function() return 1 end, -- Minor
    owGlitches = function() return 1 end,    -- OWG
    majorGlitches = function() return 1 end, -- Major
    casualLogic = function() return 1 end,   -- Casual
    tourneyLogic = function() return 1 end   -- Tourney
  },
  initNone = function() end,              -- No Logic
  initNoMajorGlitches = function() end,   -- No Glitches
  initMinorGlitches = function() end,     -- Minor
  initOverworldGlitches = function() end, -- OWG
  initMajorGlitches = function() end,     -- Major
  initCasual = function() end,            -- Casual
  initTournament = function() end,        -- Tourney
  locations = {}
}
Region.mt = {}

function Region:new(name, subname, buildLocations)
  local self = {}               -- Make a new object
  setmetatable(self, Region.mt) -- Bind this object to Region metatable

  -- Set default members to this Region object
  for k, v in pairs(Region) do
    self[k] = v
  end

  -- Set specific members to this Region object
  self.name = name
  self.subname = subname
  self.buildLocations = buildLocations or 1

  -- Return completed Region object
  return self
end

-- Examples
--[[

BrinstarBlue = Region:new("Brinstar","Blue") -- Instantiate region
region = BrinstarBlue                        -- Get easy region handle
regionName = region.name .. region.subname   -- Get combined region name
region.locations = LocationCollection:new(   -- Create locations
  {
    Location:new("Visible","Morphing Ball",regionName,{spicy=true,equipment="%%mirror%%"}),
    Location:new("Hidden","Energy Tank, Brinstar Ceiling",regionName,{equipment="%%ice%%"})
  }
)
loc = region.locations["Energy Tank, Brinstar Ceiling"] -- Get easy location handle
function loc:casualLogic() -- Override Casual Logic
  return 0
end

--]]
