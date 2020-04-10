require 'states/mainmenu/mainmenu_Particles'
require 'objects/squareButton'

Mainmenu_UI = {}

local scaleX, scaleY
local bigFont
local smallFont

local noButton, yesButton, eityButton, playButton, optionsButton, exitButton

function Mainmenu_UI:load()
  Mainmenu_Particles:load()
  bigFont = love.graphics.newFont("Assets/roboto.ttf", 124)
  smallFont = love.graphics.newFont("Assets/roboto.ttf", 48)
  mainBG = love.graphics.newImage("Assets/MainBG3.jpg")
  scaleX, scaleY = GameManager:getImageScaleForNewDimensions( mainBG, gw, gh )
  
  noButton = newSquareButton(gw / 2 - 150, gh / 2 + 200, 75, "No", Red, White, 0, -25)
  yesButton = newSquareButton(gw / 2 + 150, gh / 2 + 200, 75, "Yes", Blue, White, 0, -25)
  eityButton = newSquareButton(gw / 2 - 250, gh / 2, 220, "Eity", Blue, White, 0, -75)
  playButton = newSquareButton(gw / 2 + 50, gh / 2 - 200, 120, "Play", Green, White, 0, -25)
  optionsButton = newSquareButton(gw / 2 + 225, gh / 2, 120, "Options", Purple, White, 0, -25)
  exitButton = newSquareButton(gw / 2 + 50, gh / 2 + 200, 120, "Exit", Red, White, 0, -25)
  
  
  PressedQuit = false
end

function Mainmenu_UI:update(dt)
    Mainmenu_Particles:update(dt)
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
  love.graphics.rectangle('fill', 0, 0, gw, gh)
  
  love.graphics.setFont(bigFont)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Are you sure you want to exit?", gw / 2 - 500, gh / 2 - 300, 1000, "center")
  
  love.graphics.setLineWidth(60)
  love.graphics.setFont(smallFont)  
  noButton:draw()
  yesButton:draw()
end


function DrawMainButtons()    
  love.graphics.push()
    love.graphics.setLineWidth(90)
    love.graphics.setFont(bigFont)
    eityButton:draw()
    love.graphics.setLineWidth(60)
    love.graphics.setFont(smallFont)
    playButton:draw()
    optionsButton:draw()
    exitButton:draw()
  love.graphics.pop()
end

return Mainmenu_UI
