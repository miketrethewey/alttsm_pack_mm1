-- Lazyloader
function load(path)
  --  ScriptHost:LoadScript("scripts/" .. path)
  print("scripts/" .. path)
  dofile("scripts/" .. path)
end

-- Load scripts required by this pack
load("code_providers.lua")
load("classes/Boss.lua")
load("classes/Location.lua")
load("classes/LocationCollection.lua")
load("classes/Region.lua")
load("classes/ALttP/zelda3_inventory.lua")
--load("classes/SuperMetroid/metroid3_inventory.lua")

-- Games
games = {
  -- ALttP
  ALttP = {
    -- ALttP Bosses
    Boss = {
      "Agahnim",
      "ArmosKnights",
      "Arrghus",
      "Blind",
      "HelmasaurKing",
      "Kholdstare",
      "Lanmolas",
      "Moldorm",
      "Mothula",
      "Trinexx",
      "Vitreous"
    },
    -- ALttP Regions
    DarkWorld = {
      "Mire",
      "NorthEast",
      "NorthWest",
      "South"
    },
    DarkWorldDeathMountain = {
      "West",
      "East"
    },
    DeathMountain = {
      "West",
      "East"
    },
    -- ALttP Dungeons
    Dungeons = {
      "HyruleCastleEscape",
      "EasternPalace",
      "DesertPalace",
      "TowerOfHera",
      "HyruleCastleTower",
      "PalaceOfDarkness",
      "SwampPalace",
      "SkullWoods",
      "ThievesTown",
      "IcePalace",
      "MiseryMire",
      "TurtleRock",
      "GanonsTower"
    },
    LightWorld = {
      "NorthWest",
      "NorthEast",
      "South"
    },
    -- Z3 -> M3 Portals
    ZebesPortals = {
      "Main"
    }
  },
  -- Super Metroid
  SuperMetroid = {
    Boss = {
      "BombTorizo",
      "Botwoon",
      "Crocomire",
      "Draygon",
      "GoldTorizo",
      "Kraid",
      "MotherBrain",
      "Phantoon",
      "Ridley",
      "SporeSpawn"
    },
    Crateria = {
      "Central",
      "West",
      "East"
    },
    -- SM Regions
    Brinstar = {
      "Blue",
      "Green",
      "Pink",
      "Red",
      "Kraid"
    },
    Norfair = {
      "Crocomire",
      "West",
      "East"
    },
    WreckedShip = {
      "Main"
    },
    Maridia = {
      "Outer",
      "Inner"
    },
    LowerNorfair = {
      "West",
      "East"
    },
    Tourian = {
      "Main"
    },
    -- M3 -> Z3 Portals
    HyrulePortals = {
      "Main"
    }
  }
}

-- Get ordered keys for Games
local ordered_games = array_keys(games)

-- Foreach Game
for i = 1, #ordered_games do
  -- Get Regions for each Game
  game, regions = ordered_games[i], games[ordered_games[i]]
  local ordered_regions = array_keys(regions)
  local path = "classes"
  local file = game .. ".lua"
  -- Load Game Regions class file
  load(path .. "/" .. file)

  -- Foreach Region
  for j = 1, #ordered_regions do
    -- Get Segments for each Region
    region, segments = ordered_regions[j], regions[ordered_regions[j]]
    local ordered_segments = array_keys(segments)
    path = "classes" .. "/" .. game .. "/" .. region

    -- Foreach Segment
    for k = 1, #ordered_segments do
      _, segment = ordered_segments[k], segments[ordered_segments[k]]

      -- Load Segment file
      file = region .. segment .. ".lua"
      load(path .. "/" .. file)
    end
  end
end
