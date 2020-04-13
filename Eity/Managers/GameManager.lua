require 'managers/soundManager'
require 'managers/scoreManager'
require 'managers/modManager'
require 'managers/mapManager'
require 'states/maingame/player'

gameManager = {}

function gameManager:getImageScaleForNewDimensions( image, newWidth, newHeight )
  local currentWidth, currentHeight = image:getDimensions()
  return ( newWidth / currentWidth ), ( newHeight / currentHeight )
end

function gameManager.setBackgroundDim(v)
  gameManager.backgroundDim = v
end

function gameManager:update(dt)
  scoreManager:update(dt)
  
  if gameManager.health <= 0 then
    gameManager.isFailed = true
  end
end

function gameManager:load()
  modManager:load()
  mapManager:load()
  soundManager:load() 
  scoreManager.Restart()
  gameManager.pause = false
  gameManager.isFailed = false
  gameManager.gametime = 0
  gameManager.backgroundDim = 0.5
  gameManager.health = 50
  nextNote = 1
  endTime = 0
end

function gameManager.Pause()
  gameManager.pause = not gameManager.pause
end

function gameManager:setBackground()
  return love.graphics.newImage(mapManager.getBackgroundOfIndex(mapList.getSelectedMapIndex()))
end

function gameManager:setSong()
  return love.audio.newSource(mapManager.getSongOfIndex(mapList.getSelectedMapIndex()), "static")
end


function gameManager.RestartNewMap()
  if mapSong ~= nil then
    mapSong:stop()
  end
  mapSong = gameManager:setSong()
  mapSong:setVolume(musicVolume)
  soundManager:Restart()
  scoreManager.Restart()
  mapNotes = mapManager.getNotesOfIndex(mapList.getSelectedMapIndex())
  player:resetPosition()
  gameManager.pause = false
  gameManager.isFailed = false
  gameManager.gametime = 0
  gameManager.health = 50
  xbar = 20
  nextNote = 1
  endTime = 0
  for i, v in ipairs(mapNotes) do
    listOfArrows = {}
    listOfSliders = {}
  end
end

function gameManager.Restart()
  if mapSong ~= nil then
    mapSong:stop()
  end
  soundManager:Restart()
  scoreManager.Restart()
  mapNotes = mapManager.getNotesOfIndex(mapList.getSelectedMapIndex())
  player:resetPosition()
  gameManager.pause = false
  gameManager.isFailed = false
  gameManager.gametime = 0
  gameManager.health = 50
  xbar = 20
  nextNote = 1
  endTime = 0
  for i, v in ipairs(mapNotes) do
    listOfArrows = {}
    listOfSliders = {}
  end
end

return gameManager
