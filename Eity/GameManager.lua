require 'Arrow'
require 'Slider'
require 'SoundManager'
require 'ScoreManager'

GameManager = {}

function GameManager:load()
  GameManager.pause = false
  GameManager.gametime = 0
end

function GameManager.Pause()
  GameManager.pause = not GameManager.pause
end

function GameManager.Restart()
  SoundManager:Restart()
  ScoreManager.Restart()
  GameManager.pause = false
  GameManager.gametime = 0
  for i, v in ipairs(map_01) do
    map_01[i][1] = 1
    listOfArrows = {}
    listOfSliders = {}
  end
end

return GameManager
