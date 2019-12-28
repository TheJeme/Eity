Maingame_UI = {}

local bigFont
local smallFont

function Maingame_UI:load()
  bigFont = love.graphics.newFont("Assets/roboto.ttf", 92)
  smallFont = love.graphics.newFont("Assets/roboto.ttf", 48)
end

function Maingame_UI:update(dt)

end

function Maingame_UI:draw()
  MainGame()
  if GameManager.pause then
    PauseScreen()
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
     GameManager.Pause()
   elseif isMouseOnRestart and GameManager.pause then
     GameManager.Restart()
   elseif isMouseOnQuit and GameManager.pause then
     GamestateManager.GameState = "Mainmenu"
   end
end

function PauseScreen()
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', 0, 0, 1920, 1080)
  
  love.graphics.push()
  love.graphics.draw(mainBG, 0, 0, 0, 1, 1)
  love.graphics.setColor(0.3, 0.3, 0.3, 0.5)
  love.graphics.rectangle('fill', 0, 0, 1920, 1080)
  love.graphics.pop()
    
  love.graphics.push()
  love.graphics.setLineWidth(60)
  love.graphics.setFont(bigFont)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.circle("line", gw / 2 - 250, gh / 2, 250, 4)
  love.graphics.setColor(9 / 255, 132 / 255, 227 / 255, 1)
  love.graphics.circle("fill", gw / 2 - 250, gh / 2, 220, 4)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Paused", gw / 2 - 475, gh / 2 - 50, 450, "center")
  love.graphics.pop()
  
  love.graphics.push()
  love.graphics.setLineWidth(60)
  love.graphics.setFont(smallFont)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.circle("line", gw / 2 + 50, gh / 2 - 200, 120, 4)
  love.graphics.setColor(0, 184 / 255, 148 / 255, 1)
  love.graphics.circle("fill", gw / 2 + 50, gh / 2 - 200, 120, 4)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Continue", gw / 2 - 200, gh / 2 - 227, 500, "center")
  love.graphics.pop()
  
  love.graphics.push()
  love.graphics.setLineWidth(60)
  love.graphics.setFont(smallFont)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.circle("line", gw / 2 + 225, gh / 2, 120, 4)
  love.graphics.setColor(108 / 255, 92 / 255, 231 / 255, 1)
  love.graphics.circle("fill", gw / 2 + 225, gh / 2, 120, 4)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Restart", gw / 2 - 25, gh / 2 - 30, 500, "center")
  love.graphics.pop()
  
  love.graphics.push()
  love.graphics.setLineWidth(60)
  love.graphics.setFont(smallFont)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.circle("line", gw / 2 + 50, gh / 2 + 200, 120, 4)
  love.graphics.setColor(214 / 255, 48 / 255, 49 / 255, 1)
  love.graphics.circle("fill", gw / 2 + 50, gh / 2 + 200, 120, 4)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Quit", gw / 2 - 200, gh / 2 + 175, 500, "center")
  love.graphics.pop()
end

function MainGame()
  love.graphics.setLineWidth(700)
  love.graphics.setColor(0.1, 0.1, 0.1, 1)
  love.graphics.circle("line", gw / 2, gh / 2, 1100, 4)
  love.graphics.setLineWidth(18)
  love.graphics.circle("fill", gw / 2, gh / 2, 100, 4)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.circle("line", gw / 2, gh / 2, 100, 4)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.setLineWidth(112)
  love.graphics.circle("line", gw / 2, gh / 2, 600, 4)
end

return Maingame_UI
