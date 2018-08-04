-- Boss.lua
-- Boss properties
Boss = {
  name = "" -- Boss name
}
Boss.mt = {}

function Boss:new(name)
  local self = {}             -- Make a new object
  setmetatable(self, Boss.mt) -- Bind this object to Boss metatable

  -- Set default members to this Boss object
  for k, v in pairs(Boss) do
    self[k] = v
  end

  -- Set specific members to this Boss object
  self.name = name

  -- Return completed Boss object
  return self
end

-- Default definition of canBeat()
-- Returns 0
function Boss:canBeat()
  return 1
end

-- Examples
--[[

Blind = Boss:new("Blind")
Arrghus = Boss:new("Arrghus")

function Arrghus:canBeat()
  return 1
end

print(Blind,Blind.name,Blind:canBeat())
print(Arrghus,Arrghus.name,Arrghus.canBeat())

--]]
