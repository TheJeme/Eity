require 'objects/button'

Songselect = {}

local smallFont
local bigFont

local playButton, backButton, randomButton, modsButton, modesButton
local modeRhombusButton, modeCatchButton, modeRushButton
local modsHiddenButton, modsHalfSpeedButton, modsDoubleSpeedButton, modsHiddenButton, modsFlashlightButton, modsNoFailButton, modsAutoButton

function Songselect:load()
  img = love.graphics.newImage("maps/Shelter/BG1.jpg")
  scaleX, scaleY = gameManager:getImageScaleForNewDimensions( img, gw, gh )
  bigFont = love.graphics.newFont("Assets/roboto.ttf", 84)
  smallFont = love.graphics.newFont("Assets/roboto.ttf", 24)
  smallestFont = love.graphics.newFont("Assets/roboto.ttf", 18)

  
  backButton = newButton(50, gh * 0.94, 150, 50, 10, "Back", GrayOpacity6, Green, Blue, "center", 0, 10, function() menustate = "Startmenu" end)
  modesButton = newButton(gw - 800, gh * 0.94, 150, 50, 10, "Modes", GrayOpacity6, Green, Blue, "center", 0, 10, function() isModes = true end)
  modsButton = newButton(gw - 600, gh * 0.94, 150, 50, 10, "Mods", GrayOpacity6, Green, Blue, "center", 0, 10, function() isMods = true end)
  randomButton = newButton(gw - 400, gh * 0.94, 150, 50, 10, "Random", GrayOpacity6, Green, Blue, "center", 0, 10, function() end)
  playButton = newButton(gw - 200, gh * 0.94, 150, 50, 10, "Play", GrayOpacity6, Green, Blue, "center", 0, 10, function() gameManager.Restart() stateManager.GameState = "Maingame" end)
  
  modsHalfSpeedButton = newButton(gw * 0.4, gh * 0.4, 150, 50, 10, "0.75x speed", GrayOpacity6, Red, Green, "center", 0, 10, function() enableHalfTimeMod() end, true)
  modsDoubleSpeedButton = newButton(gw * 0.52, gh * 0.4, 150, 50, 10, "1.25x speed", GrayOpacity6, Red, Green, "center", 0, 10, function() enableDoubleTimeMod() end, true)
  modsHiddenButton = newButton(gw * 0.4, gh * 0.5, 150, 50, 10, "Hidden", GrayOpacity6, Red, Green, "center", 0, 10, function() enableHiddenMod() end, true)
  modsFlashlightButton = newButton(gw * 0.52, gh * 0.5, 150, 50, 10, "Flashlight", GrayOpacity6, Red, Green, "center", 0, 10, function() enableFlashlightMod() end, true)
  modsNoFailButton = newButton(gw * 0.4, gh * 0.6, 150, 50, 10, "No Fail", GrayOpacity6, Red, Green, "center", 0, 10, function() enableNoFailMod() end, true)
  modsAutoButton = newButton(gw * 0.52, gh * 0.6, 150, 50, 10, "Auto", GrayOpacity6, Red, Green, "center", 0, 10, function() enableAutoMod() end, true)
  modsbackButton = newButton(gw * 0.46, gh * 0.7, gw * 0.08, 50, 10, "Back", GrayOpacity6, Green, Blue, "center", 0, 10, function() isMods = false end)
  
  modeRhombusButton = newButton(gw * 0.46, gh * 0.4, gw * 0.08, 50, 10, "Rhombus", GrayOpacity6, Green, Blue, "center", 0, 10, function() stateManager.GameModeState = "Rhombus" isModes = false end)
  modeCatchButton = newButton(gw * 0.46, gh * 0.5, gw * 0.08, 50, 10, "Catch", GrayOpacity6, Green, Blue, "center", 0, 10, function() stateManager.GameModeState = "Catch" isModes = false end)
  modeRushButton = newButton(gw * 0.46, gh * 0.6, gw * 0.08, 50, 10, "Rush", GrayOpacity6, Green, Blue, "center", 0, 10, function() stateManager.GameModeState = "Rush" isModes = false end)
end

function Songselect:update(dt)
  if not isModes and not isMods then
    backButton:update(dt)
    modesButton:update(dt)
    modsButton:update(dt)
    randomButton:update(dt)
    playButton:update(dt)      
  elseif isModes then
    modeRhombusButton:update(dt)
    modeRushButton:update(dt)
    modeCatchButton:update(dt) 
  elseif isMods then    
    modsHalfSpeedButton:update(dt)        
    modsDoubleSpeedButton:update(dt)   
    modsHiddenButton:update(dt)   
    modsFlashlightButton:update(dt)   
    modsNoFailButton:update(dt)   
    modsAutoButton:update(dt)   
    modsbackButton:update(dt)   
  end  
end


function Songselect:draw()
  Background()  
  if not isModes and not isMods then
    Scores()
    BottomBar()
    love.graphics.setColor(0, 0, 0, 0.6)
    love.graphics.rectangle('fill', gw - 520, gh * 0.5, 500, 100, 10)
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.rectangle('line', gw - 520, gh * 0.5, 500, 100, 10)
    love.graphics.setFont(smallFont)
    love.graphics.printf("Shelter", gw - 500, gh * 0.5 + 15, 500, "left")
    love.graphics.setFont(smallestFont)
    love.graphics.printf("Porter Robinson & Madeon", gw - 490, gh * 0.5 + 45, 500, "left")
    love.graphics.printf("Easy", gw - 490, gh * 0.5 + 70, 500, "left")        
    
    love.graphics.print("Selected Mode: " .. stateManager.GameModeState, 0, 20)
  elseif isModes then
    Modes()
  elseif isMods then
    Mods()
  end
end

function Songselect:mousepressed(x, y, button)
  if not isModes and not isMods then                                                       
    backButton:mousepressed(x, y, button)
    modesButton:mousepressed(x, y, button)
    modsButton:mousepressed(x, y, button)
    randomButton:mousepressed(x, y, button)
    playButton:mousepressed(x, y, button)    
  elseif isModes then 
    modeRhombusButton:mousepressed(x, y, button)
    modeCatchButton:mousepressed(x, y, button)
    modeRushButton:mousepressed(x, y, button)  
  elseif isMods then 
    modsHalfSpeedButton:mousepressed(x, y, button)        
    modsDoubleSpeedButton:mousepressed(x, y, button)
    modsHiddenButton:mousepressed(x, y, button)  
    modsFlashlightButton:mousepressed(x, y, button)
    modsNoFailButton:mousepressed(x, y, button) 
    modsAutoButton:mousepressed(x, y, button)
    modsbackButton:mousepressed(x, y, button)
  end
end

function enableHalfTimeMod()
  if modManager.isDoubleSpeed == true then
    modManager.isDoubleSpeed = false
    modsDoubleSpeedButton:setNormalOutlineColor()
  end
  if modManager.isHalfSpeed == false then
    modManager.isHalfSpeed = true
    modsHalfSpeedButton:setHighlightOutlineColor()
  else
    modManager.isHalfSpeed = false
    modsHalfSpeedButton:setNormalOutlineColor()
  end
end

function enableDoubleTimeMod()
  if modManager.isHalfSpeed == true then
    modManager.isHalfSpeed = false
    modsHalfSpeedButton:setNormalOutlineColor()
  end
  if modManager.isDoubleSpeed == false then
    modManager.isDoubleSpeed = true
    modsDoubleSpeedButton:setHighlightOutlineColor()
  else
    modManager.isDoubleSpeed = false
    modsDoubleSpeedButton:setNormalOutlineColor()
  end
end

function enableHiddenMod()
  if modManager.isHidden == false then
    modManager.isHidden = true
    modsHiddenButton:setHighlightOutlineColor()
  else
    modManager.isHidden = false
    modsHiddenButton:setNormalOutlineColor()
  end
end

function enableFlashlightMod()
  if modManager.isFlashlight == false then
    modManager.isFlashlight = true
    modsFlashlightButton:setHighlightOutlineColor()
  else
    modManager.isFlashlight = false
    modsFlashlightButton:setNormalOutlineColor()
  end
end

function enableNoFailMod()
  if modManager.isAuto == true then
    modManager.isAuto = false
    modsAutoButton:setNormalOutlineColor()
  end
  if modManager.isNoFail == false then
    modManager.isNoFail = true
    modsNoFailButton:setHighlightOutlineColor()
  else
    modManager.isNoFail = false
    modsNoFailButton:setNormalOutlineColor()
  end
end

function enableAutoMod()
  if modManager.isNoFail == true then
    modManager.isNoFail = false
    modsNoFailButton:setNormalOutlineColor()
  end
  if modManager.isAuto == false then
    modManager.isAuto = true
    modsAutoButton:setHighlightOutlineColor()
  else
    modManager.isAuto = false
    modsAutoButton:setNormalOutlineColor()
  end
end

function BottomBar()
  love.graphics.setFont(smallFont)
  love.graphics.setLineWidth(3)  
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', 0, gh * 0.92, gw, gh * 0.08)
  
  backButton:draw()
  modesButton:draw()
  modsButton:draw()
  randomButton:draw()
  playButton:draw()
end

function Scores()
  love.graphics.setFont(bigFont)
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', 20, gh / 3 - 200, 450, gh / 3 + 300, 15)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.rectangle('line', 20, gh / 3 - 200, 450, gh / 3 + 300, 15)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Scores", 20, gh / 3 - 200, 450, "center")
end

function Mods()
  love.graphics.setColor(0, 0, 0, 0.8)
  love.graphics.rectangle('fill', 0, 0, gw, gh)
  
  love.graphics.setFont(bigFont)  
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Mods", 0, gh * 0.22, gw, "center") 
  love.graphics.setFont(smallFont)
  love.graphics.printf("Score Multiplier: " .. string.format("%0.2f", scoreManager.modMultiplier) .. "x", 0, gh * 0.33, gw, "center") 
  
  modsHalfSpeedButton:draw()
  modsDoubleSpeedButton:draw()
  modsHiddenButton:draw()
  modsFlashlightButton:draw()
  modsNoFailButton:draw()
  modsAutoButton:draw()
  modsbackButton:draw()
end

function Modes()
  love.graphics.setColor(0, 0, 0, 0.8)
  love.graphics.rectangle('fill', 0, 0, gw, gh)
  
  love.graphics.setFont(bigFont)  
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Modes", 0, gh * 0.25, gw, "center")
  
  love.graphics.setFont(smallFont)  
  
  modeRhombusButton:draw()
  modeCatchButton:draw()
  modeRushButton:draw()
end

function Background()
  love.graphics.draw(img, 0, 0, 0, scaleX, scaleY)
  love.graphics.setColor(0.3, 0.3, 0.3, 0.5)
  love.graphics.rectangle('fill', 0, 0, gw, gh)
end


return Songselect
