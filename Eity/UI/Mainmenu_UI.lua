require 'Mainmenu/Mainmenu_Particles'

Mainmenu_UI = {}

local scaleX, scaleY
local bigFont
local smallFont

function Mainmenu_UI:load()
  Mainmenu_Particles:load()
  bigFont = love.graphics.newFont("Assets/roboto.ttf", 124)
  smallFont = love.graphics.newFont("Assets/roboto.ttf", 48)
  mainBG = love.graphics.newImage("Assets/MainBG3.jpg")
  scaleX, scaleY = GameManager:getImageScaleForNewDimensions( mainBG, gw, gh )
  
  PressedQuit = false
end

function Mainmenu_UI:update(dt)
    Mainmenu_Particles:update(dt)
    mx, my = love.mouse.getPosition()
end

function Mainmenu_UI:draw()
  
  love.graphics.setColor(1, 1, 1, 1)
  Mainmenu_Particles:draw()
  
  DrawMainButtons()
  if PressedQuit then
    DrawAreYouSureQuit()
  end
end

function DrawAreYouSureQuit()
  love.graphics.setColor(0, 0, 0, 0.9)
  love.graphics.rectangle('fill', 0, 0, 1920, 1080)
  
  love.graphics.setFont(bigFont)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Are you sure you want to exit?", gw / 2 - 500, gh / 2 - 300, 1000, "center")
  
  love.graphics.push()
  love.graphics.setLineWidth(60)
  love.graphics.setFont(smallFont)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.circle("line", gw / 2 - 150, gh / 2 + 200, 75, 4)
  love.graphics.setColor(214 / 255, 48 / 255, 49 / 255, 1)
  love.graphics.circle("fill", gw / 2 - 150, gh / 2 + 200, 75, 4)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("No", gw / 2 - 375, gh / 2 + 175, 450, "center")
  love.graphics.pop()
  
  love.graphics.push()
  love.graphics.setLineWidth(60)
  love.graphics.setFont(smallFont)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.circle("line", gw / 2 + 150, gh / 2 + 200, 75, 4)
  love.graphics.setColor(9 / 255, 132 / 255, 227 / 255, 1)
  love.graphics.circle("fill", gw / 2 + 150, gh / 2 + 200, 75, 4)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Yes", gw / 2 - 75, gh / 2 + 175, 450, "center")
  love.graphics.pop()
end


function DrawMainButtons()
    
  love.graphics.push()
  love.graphics.setLineWidth(60)
  love.graphics.setFont(bigFont)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.circle("line", gw / 2 - 250, gh / 2, 250, 4)
  love.graphics.setColor(9 / 255, 132 / 255, 227 / 255, 1)
  love.graphics.circle("fill", gw / 2 - 250, gh / 2, 220, 4)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Eity", gw / 2 - 475, gh / 2 - 75, 450, "center")
  love.graphics.pop()
  
  love.graphics.push()
  love.graphics.setLineWidth(60)
  love.graphics.setFont(smallFont)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.circle("line", gw / 2 + 50, gh / 2 - 200, 120, 4)
  love.graphics.setColor(0, 184 / 255, 148 / 255, 1)
  love.graphics.circle("fill", gw / 2 + 50, gh / 2 - 200, 120, 4)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Play", gw / 2 - 200, gh / 2 - 225, 500, "center")
  love.graphics.pop()
  
  love.graphics.push()
  love.graphics.setLineWidth(60)
  love.graphics.setFont(smallFont)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.circle("line", gw / 2 + 225, gh / 2, 120, 4)
  love.graphics.setColor(108 / 255, 92 / 255, 231 / 255, 1)
  love.graphics.circle("fill", gw / 2 + 225, gh / 2, 120, 4)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Options", gw / 2 - 25, gh / 2 - 30, 500, "center")
  love.graphics.pop()
  
  love.graphics.push()
  love.graphics.setLineWidth(60)
  love.graphics.setFont(smallFont)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.circle("line", gw / 2 + 50, gh / 2 + 200, 120, 4)
  love.graphics.setColor(214 / 255, 48 / 255, 49 / 255, 1)
  love.graphics.circle("fill", gw / 2 + 50, gh / 2 + 200, 120, 4)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Exit", gw / 2 - 200, gh / 2 + 175, 500, "center")
  love.graphics.pop()
end

return Mainmenu_UI
