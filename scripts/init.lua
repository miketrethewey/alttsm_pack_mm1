-- Load scripts required by this pack
-- Global scripts
ScriptHost:LoadScript("scripts/code_providers.lua")

-- Zelda3 inventory/logic rules
ScriptHost:LoadScript("scripts/zelda3/zelda3_inventory.lua")
-- Metroid3 inventory/logic rules
ScriptHost:LoadScript("scripts/metroid3/metroid3_inventory.lua")

-- Game Regions
local gameRegions = {
  zelda3 = {
    regions = { -- Z3 Region Access
      DarkWorld = {
        "Mire",
        "NorthWest",
        "South"
      },
      DarkWorldDeathMountain = {
        "East",
        "West"
      },
      DeathMountain = {
        "East",
        "West"
      },
      LightWorld = {
        "NorthEast",
        "NorthWest",
        "South"
      },
      Dungeons = { -- Z3 Dungeon Access
        "HyruleCastleEscape",
        "EasternPalace",
        "DesertPalace",
        "TowerOfHera",
        "PalaceOfDarkness",
        "SwampPalace",
        "SkullWoods",
        "ThievesTown",
        "IcePalace",
        "MiseryMire",
        "TurtleRock",
        "GanonsTower"
      },
      ZebesPortals = { -- Z3 -> M3 Portal Access
        "Main"
      }
    },
    bosses = { -- Z3 Boss Defeat
      LightWorld = {
        "ArmosKnights",
        "Lanmolas",
        "Moldorm",
        "Agahnim"
      },
      DarkWorld = {
        "HelmasaurKing",
        "Arrghus",
        "Blind",
        "Mothula",
        "Kholdstare",
        "Vitreous",
        "Trinexx"
      }
    }
  },
  metroid3 = {
    regions = { -- M3 Region Access
      Crateria = {
        "Central",
        "East",
        "West"
      },
      Brinstar = {
        "Blue",
        "Green",
        "Pink",
        "Red",
        "Kraid"
      },
      Norfair = {
        "Crocomire",
        "East",
        "West"
      },
      WreckedShip = {
        "Main"
      },
      Maridia = {
        "Inner",
        "Outer"
      },
      LowerNorfair = {
        "East",
        "West"
      },
      HyrulePortals = { -- M3 -> Z3 Portal Access
        "Main"
      }
    },
    bosses = { -- M3 Boss Defeat
      Main = {
        "Bosses"
      }
    }
  }
}

for game,types in pairs(gameRegions) do
  for type,regions in pairs(types) do
    for region,sections in pairs(regions) do
      for idx,section in pairs(sections) do
        filepath = ""
        filepath = filepath .. "scripts/" .. game .. '/' .. type .. '/'

        if(type == "regions") then
          filepath = filepath .. region .. '/' .. region
        end

        filepath = filepath .. section .. ".lua"
        ScriptHost:LoadScript(filepath)
      end
    end
  end
end
