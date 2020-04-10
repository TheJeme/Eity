require 'Mods/Auto'
require 'Mods/HalfSpeed'
require 'Mods/DoubleSpeed'
require 'Mods/Hidden'
require 'Mods/Flashlight'

modManager = {}

function modManager:load()
  modManager.isHalfSpeed = false
  modManager.isDoubleSpeed = false
  modManager.isHidden = false
  modManager.isFlashlight = false
  modManager.isNoFail = false
  modManager.isAuto = false
  
  modManager.speed = 1.0
end

function modManager.SetSpeed(speed)
  modManager.speed = speed
end

function modManager.getSpeed()
  return modManager.speed
end

return modManager
