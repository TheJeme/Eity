require 'states/mainmenu/mainmenu_Particles'
require 'objects/squareButton'

Mainmenu_UI = {}

local scaleX, scaleY

local noButton, yesButton, eityButton, playButton, optionsButton, exitButton

function Mainmenu_UI:load()
  Mainmenu_Particles:load()
  mainBG = love.graphics.newImage("Assets/MainBG3.jpg")
  scaleX, scaleY = gameManager:getImageScaleForNewDimensions( mainBG, gw, gh )
  
  noButton = newSquareButton(gw / 2 - 150, gh / 2 + 200, 75, "No", Red, White, 0, -25, function() PressedQuit = false end)
  yesButton = newSquareButton(gw / 2 + 150, gh / 2 + 200, 75, "Yes", Blue, White, 0, -25, function() love.event.quit() end)
  eityButton = newSquareButton(gw / 2 - 250, gh / 2, 220, "Eity", Blue, White, 0, -75)
  playButton = newSquareButton(gw / 2 + 50, gh / 2 - 200, 120, "Play", Green, White, 0, -25, function() menustate = "Songselect" psystem:reset() end)
  optionsButton = newSquareButton(gw / 2 + 225, gh / 2, 120, "Options", Purple, White, 0, -25, function() menustate = "Options" end)
  exitButton = newSquareButton(gw / 2 + 50, gh / 2 + 200, 120, "Exit", Red, White, 0, -25, function() PressedQuit = true end)
  
  
  PressedQuit = false
end

function Mainmenu_UI:update(dt)
    Mainmenu_Particles:update(dt)
    noButton:update(dt)
    yesButton:update(dt)
    playButton:update(dt)
    optionsButton:update(dt)
    exitButton:update(dt)
end

function Mainmenu_UI:draw()  
  love.graphics.setColor(1, 1, 1, 1)
  Mainmenu_Particles:draw()
  
  DrawMainButtons()
  if PressedQuit then
    DrawAreYouSureQuit()
  end
end

function Mainmenu_UI:mousepressed(x, y, button)
  if PressedQuit then
    noButton:mousepressed(x, y, button)
    yesButton:mousepressed(x, y, button)
  else
    playButton:mousepressed(x, y, button)
    optionsButton:mousepressed(x, y, button)
    exitButton:mousepressed(x, y, button)
  end
end

function DrawAreYouSureQuit()
  love.graphics.setColor(0, 0, 0, 0.9)
  love.graphics.rectangle('fill', 0, 0, gw, gh)
  
  love.graphics.setFont(squareButtonBigFont)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Are you sure you want to exit?", gw / 2 - 500, gh / 2 - 300, 1000, "center")
  
  love.graphics.setLineWidth(60)
  love.graphics.setFont(squareButtonsmallFont)  
  noButton:draw()
  yesButton:draw()
end


function DrawMainButtons()    
  love.graphics.setLineWidth(90)
  love.graphics.setFont(squareButtonBigFont)
  eityButton:draw()
  love.graphics.setLineWidth(60)
  love.graphics.setFont(squareButtonsmallFont)
  playButton:draw()
  optionsButton:draw()
  exitButton:draw()
end

return Mainmenu_UI
