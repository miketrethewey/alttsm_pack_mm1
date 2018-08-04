ALttP = Region:new()
DarkWorld = ALttP:new()
DeathMountain = ALttP:new()
LightWorld = ALttP:new()
DarkWorldDeathMountain = ALttP:new()
ZebesPortals = ALttP:new()
Dungeons = ALttP:new()

function Dungeons:new(name, subname, buildLocations)
  local self = ALttP:new(name, subname)

  self.boss = Boss:new()
  self.canGetChest = {
    glitchless = function() return 1 end,    -- No Glitches
    minorGlitches = function() return 1 end, -- Minor
    owGlitches = function() return 1 end,    -- OWG
    majorGlitches = function() return 1 end  -- Major
  }
  self.hasMedallion = function() return 0 end
  self.mayHaveMedallion = function() return 0 end
  self.mayEnter = {
    glitchless = function() return 0 end,    -- No Glitches
    minorGlitches = function() return 0 end, -- Minor
    owGlitches = function() return 0 end,    -- OWG
    majorGlitches = function() return 0 end  -- Major
  }

  return self
end
