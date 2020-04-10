require 'objects/squareButton'
require 'states/maingame/player'

Maingame_UI = {}

local bigFont
local smallFont
local xScale
local pausedButton, continueButton, quitButton, restartButton, failedButton

function Maingame_UI:load()
  bigFont = love.graphics.newFont("Assets/roboto.ttf", 92)
  smallFont = love.graphics.newFont("Assets/roboto.ttf", 48)
  xbar = 0
  
  failedButton = newSquareButton(gw / 2 - 250, gh / 2, 220, "Failed", Blue, White, 0, -50)
  pausedButton = newSquareButton(gw / 2 - 250, gh / 2, 220, "Paused", Blue, White, 0, -50)
  restartButton = newSquareButton(gw / 2 + 225, gh / 2, 120, "Restart", Purple, White, 0, -25)
  quitButton = newSquareButton(gw / 2 + 50, gh / 2 + 200, 120, "Quit", Red, White, 0, -25)  
  continueButton = newSquareButton(gw / 2 + 50, gh / 2 - 200, 120, "Continue", Green, White, 0, -25)
end

function Maingame_UI:update(dt)
  if gameManager.health > 0 then
    xScale = gw * 0.35 * gameManager.health / 100
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
  scoreManager:draw()
  player:draw()
  if gameManager.pause then
    PauseScreen()
  elseif gameManager.isFailed then
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
                          
                          
   if isMouseOnContinue and gameManager.pause then
     soundManager.ButtonHit:play()
     gameManager.Pause()
   elseif (isMouseOnRestart and gameManager.pause) or (gameManager.isFailed and isMouseOnRestart) then
     soundManager.ButtonHit:play()
     gameManager.Restart()
   elseif (isMouseOnQuit and gameManager.pause) or (gameManager.isFailed and isMouseOnQuit) then
     soundManager.ButtonHit:play()
     stateManager.GameState = "Mainmenu"
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
  love.graphics.setColor(0.3, 0.3, 0.3, 0.5)
  love.graphics.rectangle('fill', 0, 0, gw, gh)
    
  love.graphics.setLineWidth(90)
  love.graphics.setFont(bigFont)  
  failedButton:draw()
  love.graphics.setLineWidth(60)
  love.graphics.setFont(smallFont)  
  restartButton:draw()
  quitButton:draw()
end


function PauseScreen()
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', 0, 0, gw, gh)  
  love.graphics.setColor(0.1, 0.1, 0.1, 0.5)
  love.graphics.rectangle('fill', 0, 0, gw, gh)
    
  love.graphics.setLineWidth(90)
  love.graphics.setFont(bigFont)
  pausedButton:draw()
  love.graphics.setLineWidth(60)
  love.graphics.setFont(smallFont)
  restartButton:draw()
  continueButton:draw()
  quitButton:draw()
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
