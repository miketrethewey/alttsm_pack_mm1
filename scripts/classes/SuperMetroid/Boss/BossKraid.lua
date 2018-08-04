-- BossKraid.lua
-- Create BossKraid as new Boss object using constructor for setting name
BossKraid = {}

function BossKraid:new()
  local boss = Boss:new("Kraid")
  local bt = BombTorizo:new()

  boss.canBeat = bt.canBeat

  return boss
end
