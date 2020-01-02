require 'Mods/Auto'
require 'Mods/HalfSpeed'
require 'Mods/DoubleSpeed'
require 'Mods/Hidden'
require 'Mods/Flashlight'
require 'Mods/NoFail'

ModManager = {}

function ModManager:load()
  ModManager.isHalfSpeed = false
  ModManager.isDoubleSpeed = false
  ModManager.isHidden = false
  ModManager.isFlashlight = false
  ModManager.isNoFail = false
  ModManager.isAuto = false
  
  ModManager.speed = 1.0
end

function ModManager.SetSpeed(speed)
  ModManager.speed = speed
end

function ModManager.getSpeed()
  return ModManager.speed
end

return ModManager
