-- BossSporeSpawn.lua
-- Create BossSporeSpawn as new Boss object using constructor for setting name
BossSporeSpawn = {}

function BossSporeSpawn:new()
  local boss = Boss:new("Spore Spawn")
  local bt = BombTorizo:new()

  boss.canBeat = bt.canBeat

  return boss
end
