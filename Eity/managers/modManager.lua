<<<<<<< HEAD:Eity/Managers/ModManager.lua
require 'mods/halfSpeed'
require 'mods/doubleSpeed'
require 'mods/hidden'
require 'mods/flashlight'
require 'mods/auto'

modManager = {}

function modManager:load()
  modManager.isHalfSpeed = false
  modManager.isDoubleSpeed = false
  modManager.isHidden = false
  modManager.isFlashlight = false
  modManager.isNoFail = false
  modManager.isAuto = false
    
  modManager.speed = 1.00
end

function modManager.SetSpeed(speed)
  modManager.speed = speed
end

function modManager.getSpeed()
  return modManager.speed
end

return modManager
=======
require 'mods/halfSpeed'
require 'mods/doubleSpeed'
require 'mods/hidden'
require 'mods/flashlight'
require 'mods/auto'

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
>>>>>>> 9b346d108455b65db3993721c9ddf6fd0b655e17:Eity/managers/modManager.lua
