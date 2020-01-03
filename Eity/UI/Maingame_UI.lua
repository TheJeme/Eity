require 'Maingame/Player'

Maingame_UI = {}

local bigFont
local smallFont
local xScale

function Maingame_UI:load()
  bigFont = love.graphics.newFont("Assets/roboto.ttf", 92)
  smallFont = love.graphics.newFont("Assets/roboto.ttf", 48)
  xbar = 0
  Player:load()
end

function Maingame_UI:update(dt)
  if GameManager.health > 0 then
    xScale = gw * 0.35 * GameManager.health / 100
  else
    xScale = 20
  end
  if xbar <= xScale then
    xbar = xbar + (dt * 170)
  elseif xbar >= xScale then
    xbar = xbar - (dt * 400)
  end
end

function Maingame_UI:draw()
  MaingameOverlay()
  Healthbar()
  ScoreManager:draw()
  Player:draw()
  if GameManager.pause then
    PauseScreen()
  elseif GameManager.isFailed then
    FailScreen()
  end
end

function Maingame_UI:mousepressed(x, y,button)
  
  local isMouseOnContinue = mx > gw / 2 - 60 and mx < gw / 2 - 120 + 280 and
                          my > gh / 2 - 250 - 60 and my < gh / 2 - 90
                          
  local isMouseOnRestart = mx > gw / 2 + 120 and mx < gw / 2 + 340 and
                          my > gh / 2 - 120 and my < gh / 2 + 120
                          
  local isMouseOnQuit = mx > gw / 2 - 60 and mx < gw / 2 - 120 + 280 and
                          my > gh / 2 + 90 and my < gh / 2 + 250 + 60
                          
                          
   if isMouseOnContinue and GameManager.pause then
     SoundManager.ButtonHit:play()
     GameManager.Pause()
   elseif (isMouseOnRestart and GameManager.pause) or (GameManager.isFailed and isMouseOnRestart) then
     SoundManager.ButtonHit:play()
     GameManager.Restart()
   elseif (isMouseOnQuit and GameManager.pause) or (GameManager.isFailed and isMouseOnQuit) then
     SoundManager.ButtonHit:play()
     GamestateManager.GameState = "Mainmenu"
   end
end



function Healthbar()
  love.graphics.setColor(0.6, 0.6, 0.6, 1)
  love.graphics.rectangle("fill", 10, 10, gw * 0.35, 30)
  love.graphics.setColor(0.3, 0.3, 0.3, 1)
  love.graphics.rectangle("fill", 15, 15, gw * 0.35 - 10, 20)
  love.graphics.setColor(0.95, 0.95, 0.95, 1)
  love.graphics.rectangle("fill", 20, 20, xbar - 20, 10)
  love.graphics.setColor(0.3, 0.3, 0.3, 1)

end

function FailScreen()
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', 0, 0, gw, gh)
  
  love.graphics.draw(mainBG, 0, 0, 0, 1, 1)
  love.graphics.setColor(0.3, 0.3, 0.3, 0.5)
  love.graphics.rectangle('fill', 0, 0, gw, gh)
    
  love.graphics.setLineWidth(60)
  love.graphics.setFont(bigFont)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.circle("line", gw / 2 - 250, gh / 2, 250, 4)
  love.graphics.setColor(Colors.getBlueColor())
  love.graphics.circle("fill", gw / 2 - 250, gh / 2, 220, 4)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Failed", gw / 2 - 475, gh / 2 - 50, 450, "center")
  
  love.graphics.setLineWidth(60)
  love.graphics.setFont(smallFont)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.circle("line", gw / 2 + 225, gh / 2, 120, 4)
  love.graphics.setColor(Colors.getPurpleColor())
  love.graphics.circle("fill", gw / 2 + 225, gh / 2, 120, 4)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Restart", gw / 2 - 25, gh / 2 - 30, 500, "center")
  
  love.graphics.setLineWidth(60)
  love.graphics.setFont(smallFont)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.circle("line", gw / 2 + 50, gh / 2 + 200, 120, 4)
  love.graphics.setColor(Colors.getRedColor())
  love.graphics.circle("fill", gw / 2 + 50, gh / 2 + 200, 120, 4)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Quit", gw / 2 - 200, gh / 2 + 175, 500, "center")
end


function PauseScreen()
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', 0, 0, gw, gh)
  
  love.graphics.draw(mainBG, 0, 0, 0, 1, 1)
  love.graphics.setColor(0.3, 0.3, 0.3, 0.5)
  love.graphics.rectangle('fill', 0, 0, gw, gh)
    
  love.graphics.setLineWidth(60)
  love.graphics.setFont(bigFont)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.circle("line", gw / 2 - 250, gh / 2, 250, 4)
  love.graphics.setColor(Colors.getBlueColor())
  love.graphics.circle("fill", gw / 2 - 250, gh / 2, 220, 4)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Paused", gw / 2 - 475, gh / 2 - 50, 450, "center")
  
  love.graphics.setLineWidth(60)
  love.graphics.setFont(smallFont)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.circle("line", gw / 2 + 50, gh / 2 - 200, 120, 4)
  love.graphics.setColor(Colors.getGreenColor())
  love.graphics.circle("fill", gw / 2 + 50, gh / 2 - 200, 120, 4)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Continue", gw / 2 - 200, gh / 2 - 227, 500, "center")
  
  love.graphics.setLineWidth(60)
  love.graphics.setFont(smallFont)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.circle("line", gw / 2 + 225, gh / 2, 120, 4)
  love.graphics.setColor(Colors.getPurpleColor())
  love.graphics.circle("fill", gw / 2 + 225, gh / 2, 120, 4)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Restart", gw / 2 - 25, gh / 2 - 30, 500, "center")
  
  love.graphics.setLineWidth(60)
  love.graphics.setFont(smallFont)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.circle("line", gw / 2 + 50, gh / 2 + 200, 120, 4)
  love.graphics.setColor(Colors.getRedColor())
  love.graphics.circle("fill", gw / 2 + 50, gh / 2 + 200, 120, 4)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Quit", gw / 2 - 200, gh / 2 + 175, 500, "center")
end

function MaingameOverlay()
  love.graphics.setLineWidth(700)
  love.graphics.setColor(0.1, 0.1, 0.1, 1)
  love.graphics.circle("line", gw / 2, gh / 2, gh * 1.05, 4)
  love.graphics.circle("fill", gw / 2, gh / 2, gh * 0.1, 4)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.setLineWidth(18)
  love.graphics.circle("line", gw / 2, gh / 2, gh * 0.1, 4)
  love.graphics.setLineWidth(112)
  love.graphics.circle("line", gw / 2, gh / 2, gh * 0.55, 4)
end

return Maingame_UI
