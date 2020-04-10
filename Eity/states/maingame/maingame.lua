require 'UI/Maingame_UI'
require 'states/maingame/Arrow'
require 'states/maingame/Slider'
require 'states/maingame/Player'

Maingame = {}

function Maingame:load()
  Arrow:load()
  Slider:load()
  Maingame_UI:load()
  nextNote = 1
  endTime = 0

  img = love.graphics.newImage("maps/Shelter/BG1.jpg")
  scaleX, scaleY = GameManager:getImageScaleForNewDimensions( img, gw, gh )
end

function Maingame:update(dt)
  Maingame_UI:update(dt)
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
    for i, v in ipairs(map) do
      if (#map >= nextNote and (map[nextNote][5] - 400) * 0.001 < GameManager.gametime) then
        if (map[nextNote][4] == 0) then
          createArrow(map[nextNote][1], math.ceil(map[nextNote][2] * 4 / 512), map[nextNote][3] * ModManager.getSpeed())          
        elseif (map[nextNote][4] ~= 0) then
          createSlider(map[nextNote][1], math.ceil(map[nextNote][2] * 4 / 512), map[nextNote][3] * ModManager.getSpeed(), map[nextNote][4])
        end
        nextNote = nextNote + 1
      elseif #map < ScoreManager.destroyedArrows + 1 then
        if endTime < 5 then
          endTime = endTime + dt
        else
          if ScoreManager.combo > ScoreManager.maxCombo then ScoreManager.maxCombo = ScoreManager.combo end
          ScoreManager.CalculateTotalNotes()
          SoundManager.maingamesrc:stop()
          endTime = 0
          stateManager.GameState = "Rankingscreen"
        end
      end
    end

    Arrow:update(dt)
    Slider:update(dt)
    
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
  Player:draw()
  Maingame_UI:draw()
  love.graphics.setFont(defaultFont)
  love.graphics.print(GameManager.gametime, 0, 60)
end

function Maingame:mousepressed(x, y,button)
  Maingame_UI:mousepressed(x, y,button)
end

function Maingame:keypressed(key)
  
  if key == "escape" and not GameManager.isFailed then
    GameManager.Pause()
  end
  
  if key == "r" then
    GameManager.Restart()
  end
  
  
  if not GameManager.pause or not GameManager.isFailed then
    Player:keypressed(key)
  end
end 

return Maingame
