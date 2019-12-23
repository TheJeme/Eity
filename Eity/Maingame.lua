require 'UI'
require 'Player'
require 'Arrow'
require 'Slider'
require 'ScoreManager'
require 'map_01'

local gameTime

Maingame = {}

function Maingame:load()
  gameTime = 0
  Arrow:load()
  Slider:load()
  UI:load()
  Player:load()
  ScoreManager:load()

  map_01:load()

  src1 = love.audio.newSource("Eity.mp3", "static")
  src1:setVolume(0.05)
  src1:play()
end

function Maingame:update(dt)
  gameTime = gameTime + dt

  for i, v in ipairs(map_01) do
    if((map_01[i][5] < gameTime and map_01[i][1] == "arrow")) then
      createArrow(map_01[i][2], map_01[i][3], map_01[i][4])
      map_01[i][1] = "spawned"
    elseif (map_01[i][5] < gameTime and map_01[i][1] == "slider") then
      createSlider(map_01[i][2], map_01[i][3], map_01[i][4], map_01[i][6])
      map_01[i][1] = "spawned"
    end
  end

  Arrow:update(dt)
  Slider:update(dt)
  UI:update(dt)
end

function Maingame:draw()
  Arrow:draw()
  Slider:draw()
  UI:draw()
  Player:draw()
  ScoreManager:draw()
end

function Maingame:keypressed(key, scancode, isrepeat)
  Player:keypressed(key, scancode, isrepeat)

  if key == "y" then
    createSlider("normal", "up", 300, 200)
  end
  if key == "u" then
    createSlider("normal", "down", 300, 200)
  end
  if key == "i" then
    createSlider("normal", "left", 300, 200)
  end
  if key == "o" then
    createSlider("normal", "right", 300, 200)
  end

  if key == "h" then
    createSlider("reverse", "left", 300, 200)
  end
  if key == "j" then
    createSlider("reverse", "down", 300, 200)
  end
  if key == "k" then
    createSlider("reverse", "up", 300, 200)
  end
  if key == "l" then
    createSlider("reverse", "right", 300, 200)
  end

  if key == "n" then
    createSlider("bad", "left", 300, 200)
  end
  if key == "m" then
    createSlider("bad", "down", 300, 200)
  end
  if key == "," then
    createSlider("bad", "up", 300, 200)
  end
  if key == "." then
    createSlider("bad", "right", 300, 200)
  end
end

return Maingame
