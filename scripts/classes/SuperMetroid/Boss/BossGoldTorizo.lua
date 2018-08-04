-- BossGoldTorizo.lua
-- Create BossGoldTorizo as new Boss object using constructor for setting name
BossGoldTorizo = {}

function BossGoldTorizo:new()
  local boss = Boss:new("Gold Torizo")
  local bt = BombTorizo:new()

  boss.canBeat = bt.canBeat

  return boss
end
