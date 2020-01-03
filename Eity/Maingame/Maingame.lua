require 'UI/Maingame_UI'
require 'Maingame/Arrow'
require 'Maingame/Slider'
require 'Maingame/Player'
require 'map_01'

Maingame = {}

function Maingame:load()
  Arrow:load()
  Slider:load()
  Maingame_UI:load()
  map_01:load()
  
  nextNote = 1

  img = love.graphics.newImage("Shelter/BG1.jpg")
  scaleX, scaleY = GameManager:getImageScaleForNewDimensions( img, gw, gh )
end

function Maingame:update(dt)
  
  if ModManager.isDoubleSpeed then
    ModManager.SetSpeed(DoubleSpeed.ApplyMod())
  elseif ModManager.isHalfSpeed then
    ModManager.SetSpeed(HalfSpeed.ApplyMod())
  else
    ModManager.SetSpeed(1)
  end
  if ModManager.isAuto then
    Auto.ApplyMod()
  end
  
  if GameManager.pause or GameManager.isFailed then SoundManager.maingamesrc:pause() end
  if not GameManager.pause and not GameManager.isFailed then
    SoundManager.maingamesrc:setPitch(ModManager.getSpeed())
    SoundManager.maingamesrc:play()
    GameManager.gametime = GameManager.gametime + dt * ModManager.getSpeed()
    for i, v in ipairs(map_01) do
      if (#map_01 >= nextNote and (map_01[nextNote][5] - 400) * 0.001 < GameManager.gametime) then
        if (map_01[nextNote][4] == 0) then
          createArrow(map_01[nextNote][1], math.ceil(map_01[nextNote][2] * 4 / 512), map_01[nextNote][3] * ModManager.getSpeed())          
        elseif (map_01[nextNote][4] ~= 0) then
          createSlider(map_01[nextNote][1], math.ceil(map_01[nextNote][2] * 4 / 512), map_01[nextNote][3] * ModManager.getSpeed(), map_01[nextNote][4])
        end
        nextNote = nextNote + 1
      end
    end

    Arrow:update(dt)
    Slider:update(dt)
    Maingame_UI:update(dt)
    
    if ModManager.isNoFail or ModManager.isAuto then
      GameManager.health = 100
      xbar = gw * 0.35
    end
    if ModManager.isHidden then
    Hidden.ApplyMod(dt)
    elseif ModManager.isFlashlight then
      Flashlight.ApplyMod(dt)
    end
  end
end

function Maingame:draw()
  love.graphics.push()
  love.graphics.draw(img, 0, 0, 0, scaleX, scaleY)
  love.graphics.setColor(0.3, 0.3, 0.3, GameManager.backgroundDim)
  love.graphics.rectangle('fill', 0, 0, gw, gh)
  love.graphics.pop()
  Arrow:draw()
  Slider:draw()
  Maingame_UI:draw()
  love.graphics.setFont(defaultFont)
  love.graphics.print(GameManager.gametime, 0, 60)
end

function Maingame:mousepressed(x, y,button)
  Maingame_UI:mousepressed(x, y,button)
end

function Maingame:keypressed(key, scancode, isrepeat)
  
  if key == "escape" and not GameManager.isFailed then
    GameManager.Pause()
  end
  
  if key == "r" then
    GameManager.Restart()
  end
  
  
  if not GameManager.pause or not GameManager.isFailed then
    Player:keypressed(key, scancode, isrepeat)
  end
end 

return Maingame
