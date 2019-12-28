require 'UI/Maingame_UI'
require 'Maingame/Player'
require 'Maingame/Arrow'
require 'Maingame/Slider'
require 'Managers/ScoreManager'
require 'Managers/SoundManager'
require 'Managers/GameManager'
require 'map_01'

Maingame = {}

local nextNote

function Maingame:load()
  Arrow:load()
  Slider:load()
  Maingame_UI:load()
  Player:load()
  ScoreManager:load()
  GameManager:load()
  SoundManager:load()
  map_01:load()
  
  nextNote = 1

  img = love.graphics.newImage("Shelter/BG1.jpg")
  scaleX, scaleY = GameManager:getImageScaleForNewDimensions( img, 1920, 1080 )
end

function Maingame:update(dt)
  if GameManager.pause then SoundManager.maingamesrc:pause() end
  if not GameManager.pause then
    SoundManager.maingamesrc:play()
    GameManager.gametime = GameManager.gametime + dt

    for i, v in ipairs(map_01) do
      if (#map_01 >= nextNote and (map_01[nextNote][6] - 400) * 0.001 < GameManager.gametime) then
        if (map_01[nextNote][5] == 0 and map_01[nextNote][1] == 1) then
          createArrow(map_01[nextNote][2], math.ceil(map_01[nextNote][3] * 4 / 512), map_01[nextNote][4])          
        elseif (map_01[nextNote][5] ~= 0 and map_01[nextNote][1] == 1) then
          createSlider(map_01[nextNote][2], math.ceil(map_01[nextNote][3] * 4 / 512), map_01[nextNote][4], map_01[nextNote][5])
        end
        nextNote = nextNote + 1
      end
    end

    Arrow:update(dt)
    Slider:update(dt)
    Maingame_UI:update(dt)
  end
end

function Maingame:draw()
  love.graphics.push()
  love.graphics.draw(img, 0, 0, 0, scaleX, scaleY)
  love.graphics.setColor(0.3, 0.3, 0.3, 0.5)
  love.graphics.rectangle('fill', 0, 0, 1920, 1080)
  love.graphics.pop()
  Arrow:draw()
  Slider:draw()
  Maingame_UI:draw()
  Player:draw()
  ScoreManager:draw()
  love.graphics.setFont(defaultFont)
  love.graphics.print(GameManager.gametime, 0, 60)
end

function Maingame:mousepressed(x, y,button)
  Maingame_UI:mousepressed(x, y,button)
end

function Maingame:keypressed(key, scancode, isrepeat)
  
  if key == "escape" then
    GameManager.Pause()
  end
  
  if not GameManager.pause then
    Player:keypressed(key, scancode, isrepeat)

    if key == "y" then
      createSlider(1, 4, 300, 200)
    end
    if key == "u" then
      createSlider(1, 2, 300, 250)
    end
    if key == "i" then
      createSlider(1, 1, 300, 200)
    end
    if key == "o" then
      createSlider(1, 3, 300, 200)
    end

    if key == "h" then
      createArrow(2, 1, 300)
    end
    if key == "j" then
      createArrow(2, 2, 300)
    end
    if key == "k" then
      createArrow(2, 4, 300)
    end
    if key == "l" then
      createArrow(2, 3, 300)
    end

    if key == "n" then
      createSlider(3, 1, 300, 200)
    end
    if key == "m" then
      createSlider(3, 2, 300, 200)
    end
    if key == "," then
      createSlider(3, 4, 300, 200)
    end
    if key == "." then
      createSlider(3, 3, 300, 200)
    end
  end
end 

return Maingame
