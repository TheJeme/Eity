require 'Managers/SoundManager'
require 'Managers/ScoreManager'

GameManager = {}

function GameManager:getImageScaleForNewDimensions( image, newWidth, newHeight )
  local currentWidth, currentHeight = image:getDimensions()
  return ( newWidth / currentWidth ), ( newHeight / currentHeight )
end

function GameManager:load()
  GameManager.pause = false
  GameManager.gametime = 0
  nextNote = 1
end

function GameManager.Pause()
  GameManager.pause = not GameManager.pause
end

function GameManager.Restart()
  SoundManager:Restart()
  ScoreManager.Restart()
  GameManager.pause = false
  GameManager.gametime = 0
  nextNote = 1
  for i, v in ipairs(map_01) do
    listOfArrows = {}
    listOfSliders = {}
  end
end

return GameManager
