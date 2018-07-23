-- Load scripts required by this pack
-- Global scripts
ScriptHost:LoadScript("scripts/code_providers.lua")

-- Zelda3 inventory
ScriptHost:LoadScript("scripts/zelda3/zelda3_inventory.lua")
-- Metroid3 inventory
ScriptHost:LoadScript("scripts/metroid3/metroid3_inventory.lua")

-- Game Regions
local gameRegions = {
  zelda3 = {
    bosses = {
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
    },
    regions = {
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
      ZebesPortals = {
        "Main"
      }
    }
  },
  metroid3: {
    regions = {
      HyrulePortals = {
        "Main"
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
