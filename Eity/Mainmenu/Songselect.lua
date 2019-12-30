Songselect = {}

local smallFont
local bigFont
local isMouseOnPlay
local isMouseOnBack
local playButtonColor
local backButtonColor
local randomButtonColor
local modsButtonColor
local modesButtonColor

function Songselect:load()
  bigFont = love.graphics.newFont("Assets/roboto.ttf", 84)
  smallFont = love.graphics.newFont("Assets/roboto.ttf", 24)
  SongBG = love.graphics.newImage("Shelter/BG2.jpg")
  scaleX, scaleY = GameManager:getImageScaleForNewDimensions( SongBG, 1920, 1080 )
  playButtonColor = {0, 184 / 255, 148 / 255, 1}
  backButtonColor = {0, 184 / 255, 148 / 255, 1}
  randomButtonColor = {0, 184 / 255, 148 / 255, 1}
  modsButtonColor = {0, 184 / 255, 148 / 255, 1}
  modesButtonColor = {0, 184 / 255, 148 / 255, 1}
end

function Songselect:update(dt)
  isMouseOnPlay = mx > gw - 200 and mx < gw - 200 + 150 and
                          my > gh * 0.94 and my < gh * 0.94 + 50        
                          
  isMouseOnBack = mx > 50 and mx < 200 and         
                          my > gh * 0.94 and my < gh * 0.94 + 50
                          
  isMouseOnRandom = mx > gw - 400 and mx < gw - 400 + 150 and         
                          my > gh * 0.94 and my < gh * 0.94 + 50
                          
  isMouseOnMods = mx > gw - 600 and mx < gw - 600 + 150 and         
                          my > gh * 0.94 and my < gh * 0.94 + 50
                          
  isMouseOnModes = mx > gw - 800 and mx < gw - 800 + 150 and         
                          my > gh * 0.94 and my < gh * 0.94 + 50
          
  playButtonColor = {0, 184 / 255, 148 / 255, 1}
  backButtonColor = {0, 184 / 255, 148 / 255, 1}
  randomButtonColor = {0, 184 / 255, 148 / 255, 1}
  modsButtonColor = {0, 184 / 255, 148 / 255, 1}
  modesButtonColor = {0, 184 / 255, 148 / 255, 1}
          
  if isMouseOnPlay or isMouseOnBack or isMouseOnRandom or isMouseOnMods or isMouseOnModes then
    if isMouseOnPlay then
      playButtonColor = {9 / 255, 132 / 255, 227 / 255, 1}
    elseif isMouseOnBack then
      backButtonColor = {9 / 255, 132 / 255, 227 / 255, 1}
    elseif isMouseOnRandom then
      randomButtonColor = {9 / 255, 132 / 255, 227 / 255, 1}
    elseif isMouseOnMods then
      modsButtonColor = {9 / 255, 132 / 255, 227 / 255, 1}
    elseif isMouseOnModes then
      modesButtonColor = {9 / 255, 132 / 255, 227 / 255, 1}
    end
    
    if not hoverButtonOver then
      hoverButtonOver = true
      SoundManager.ButtonOver:play()
    end
  else
    hoverButtonOver = false
  end
end

function Songselect:draw()
  Background()  
  Scores()
  BottomBar()
  
  love.graphics.setFont(smallFont)
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', gw - 520, gh * 0.5, 500, 100, 10)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.rectangle('line', gw - 520, gh * 0.5, 500, 100, 10)
  love.graphics.printf("Shelter", gw - 710, gh * 0.5 + 25, 500, "center")
  
end

function Songselect:mousepressed(x, y,button)
  if state == "Songselect" then                                                       
    if isMouseOnPlay and button == 1 then
      SoundManager.ButtonHit:play()
      GameManager.Restart()
      GamestateManager.GameState = "Maingame"
    elseif isMouseOnBack and button == 1 then
      state = "Startmenu"
      SoundManager.ButtonHit:play()
    elseif isMouseOnRandom and button == 1 then
      SoundManager.ButtonHit:play()
    elseif isMouseOnMods and button == 1 then
      SoundManager.ButtonHit:play()
    elseif isMouseOnModes and button == 1 then
      SoundManager.ButtonHit:play()
    end
  end
end

function BottomBar()
  love.graphics.setFont(smallFont)
  love.graphics.setLineWidth(3)
  
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', 50, gh * 0.94, 150, 50, 10)
  love.graphics.setColor(backButtonColor)
  love.graphics.rectangle('line', 50, gh * 0.94, 150, 50, 10)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Back", -75, gh * 0.95, 400, "center")
  
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', gw - 800, gh * 0.94, 150, 50, 10)
  love.graphics.setColor(modesButtonColor)
  love.graphics.rectangle('line', gw - 800, gh * 0.94, 150, 50, 10)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Modes", gw - 925, gh * 0.95, 400, "center")
  
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', gw - 600, gh * 0.94, 150, 50, 10)
  love.graphics.setColor(modsButtonColor)
  love.graphics.rectangle('line', gw - 600, gh * 0.94, 150, 50, 10)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Mods", gw - 725, gh * 0.95, 400, "center")  
  
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', gw - 400, gh * 0.94, 150, 50, 10)
  love.graphics.setColor(randomButtonColor)
  love.graphics.rectangle('line', gw - 400, gh * 0.94, 150, 50, 10)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Random", gw - 525, gh * 0.95, 400, "center")
  
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', gw - 200, gh * 0.94, 150, 50, 10)
  love.graphics.setColor(playButtonColor)
  love.graphics.rectangle('line', gw - 200, gh * 0.94, 150, 50, 10)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Play", gw - 325, gh * 0.95, 400, "center")
end

function Scores()
  love.graphics.setFont(bigFont)
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', 20, gh / 3 - 200, 450, gh / 3 + 300, 15)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.rectangle('line', 20, gh / 3 - 200, 450, gh / 3 + 300, 15)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Scores", 20, gh / 3 - 200, 20 + 450, "center")
end

function Background()
  love.graphics.push()
  love.graphics.draw(SongBG, 0, 0, 0, scaleX, scaleY)
  love.graphics.setColor(0.3, 0.3, 0.3, 0.5)
  love.graphics.rectangle('fill', 0, 0, 1920, 1080)
  love.graphics.pop()
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', 0, gh * 0.92, gw, gh * 0.08)
end


return Songselect
