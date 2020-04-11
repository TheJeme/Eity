require 'states/maingame/maingame_UI'
require 'states/maingame/Arrow'
require 'states/maingame/Slider'
require 'states/maingame/player'

Maingame = {}

local img
local scaleX, scaleY

local joysticks = love.joystick.getJoysticks()
joystick = joysticks[1]

function Maingame:load()
  maingame_UI:load()
  nextNote = 1
  endTime = 0
  img = love.graphics.newImage("maps/Shelter/BG1.jpg")
  scaleX, scaleY = gameManager:getImageScaleForNewDimensions(img, gw, gh)
end

function Maingame:update(dt)
  maingame_UI:update(dt)
  if modManager.isDoubleSpeed then
    modManager.SetSpeed(DoubleSpeed.ApplyMod())
  elseif modManager.isHalfSpeed then
    modManager.SetSpeed(HalfSpeed.ApplyMod())
  else
    modManager.SetSpeed(1.0)
  end
  if modManager.isAuto then
    Auto.ApplyMod()
  end
  
  if gameManager.pause or gameManager.isFailed then
     soundManager.maingamesrc:pause() 
     love.mouse.setVisible(true) 
   end
  
  if not gameManager.pause and not gameManager.isFailed then
    love.mouse.setVisible(false)
    soundManager.maingamesrc:setPitch(modManager.getSpeed())
    soundManager.maingamesrc:play()
    gameManager.gametime = gameManager.gametime + dt * modManager.getSpeed()
    for i, v in ipairs(map) do
      if (#map >= nextNote and (map[nextNote][5] - 400) * 0.001 < gameManager.gametime) then
        if (map[nextNote][4] == 0) then
          createArrow(map[nextNote][1], math.ceil(map[nextNote][2] * 4 / 512), map[nextNote][3] * modManager.getSpeed())          
        elseif (map[nextNote][4] ~= 0) then
          createSlider(map[nextNote][1], math.ceil(map[nextNote][2] * 4 / 512), map[nextNote][3] * modManager.getSpeed(), map[nextNote][4])
        end
        nextNote = nextNote + 1
      elseif #map < scoreManager.destroyedArrows + 1 then
        if endTime < 5 then
          endTime = endTime + dt
        else
          if scoreManager.combo > scoreManager.maxCombo then scoreManager.maxCombo = scoreManager.combo end
          scoreManager.CalculateTotalNotes()
          soundManager.maingamesrc:stop()
          endTime = 0
          love.mouse.setVisible(true)
          stateManager.GameState = "Rankingscreen"
        end
      end
    end

    Arrow:update(dt)
    Slider:update(dt)
    
    if modManager.isNoFail or modManager.isAuto then
      gameManager.health = 100
      xbar = gw * 0.35
    end
    if modManager.isHidden then
    Hidden.ApplyMod(dt)
    elseif modManager.isFlashlight then
      Flashlight.ApplyMod(dt)
    end
  end
  
  if not joystick or not gameManager.pause or not gameManager.isFailed or not modManager.isAuto then return end
  if joystick:isGamepadDown("dpleft") or joystick:isGamepadDown('x') then
    player.direction = "left"
  elseif joystick:isGamepadDown("dpright") or joystick:isGamepadDown('b') then
    player.direction = "right"
  end

  if joystick:isGamepadDown("dpup") or joystick:isGamepadDown('y') then
    player.direction = "up"
  elseif joystick:isGamepadDown("dpdown") or joystick:isGamepadDown('a') then
    player.direction = "down"
  end  
end



function Maingame:draw()
  love.graphics.push()
  love.graphics.draw(img, 0, 0, 0, scaleX, scaleY)
  love.graphics.setColor(0.3, 0.3, 0.3, gameManager.backgroundDim)
  love.graphics.rectangle('fill', 0, 0, gw, gh)
  love.graphics.pop()
  Arrow:draw()
  Slider:draw()
  maingame_UI:draw()
  love.graphics.setFont(defaultFont)
  love.graphics.print(gameManager.gametime, 0, 60)
end

function Maingame:mousepressed(x, y,button)
  maingame_UI:mousepressed(x, y,button)
end

function Maingame:keypressed(key)
  
  if key == "escape" and not gameManager.isFailed then
    gameManager.Pause()
  end
  
  if key == "r" then
    gameManager.Restart()
  end
  
  
  if not gameManager.pause or not gameManager.isFailed then
    player:keypressed(key)
  end
end 

return Maingame
