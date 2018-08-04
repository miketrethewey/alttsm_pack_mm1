-- BossKholdstare.lua
-- Create BossKholdstare as new Boss object using constructor for setting name
BossKholdstare = {}

function BossKholdstare:new()
  local boss = Boss:new("Kholdstare")

  boss.canBeat = function()
    local ret = 0

    if ((canMeltThings() == 1) and ((has("hammer") == 1) or (hasSword() == 1) or ((canExtendMagic(3) >= 3) and (has("firerod") == 1)) or ((canExtendMagic(2) >= 2) and (has("firerod") == 1) and (has("bombos") == 1)))) then
      ret = 1
    end

    return ret
  end

  return boss
end
