-- BossCrocomire.lua
-- Create BossCrocomire as new Boss object using constructor for setting name
BossCrocomire = {}

function BossCrocomire:new()
  local boss = Boss:new("Crocomire")
  local bt = BombTorizo:new()

  boss.canBeat = bt.canBeat

  return boss
end
