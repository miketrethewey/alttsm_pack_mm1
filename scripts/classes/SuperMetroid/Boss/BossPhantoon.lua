-- BossPhantoon.lua
-- Create BossPhantoon as new Boss object using constructor for setting name
BossPhantoon = {}

function BossPhantoon:new()
  local boss = Boss:new("Phantoon")
  local bt = BombTorizo:new()

  boss.canBeat = bt.canBeat

  return boss
end
