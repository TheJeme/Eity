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

local modeRhombusButtonColor
local modeCatchButtonColor
local modeRushButtonColor

local modsHalfSpeedButtonColor
local modsDoubleSpeedButtonColor
local modsHiddenButtonColor
local modsFlashlightButtonColor
local modsNoFailButtonColor
local modsAutoButtonColor

function Songselect:load()
  img = love.graphics.newImage("maps/Shelter/BG1.jpg")
  scaleX, scaleY = gameManager:getImageScaleForNewDimensions( img, gw, gh )
  bigFont = love.graphics.newFont("Assets/roboto.ttf", 84)
  smallFont = love.graphics.newFont("Assets/roboto.ttf", 24)
  smallestFont = love.graphics.newFont("Assets/roboto.ttf", 18)
  playButtonColor = Green
  backButtonColor = Green
  randomButtonColor = Green
  modsButtonColor = Green
  
  modesButtonColor = Green
  modeRhombusButtonColor = Green
  modeCatchButtonColor = Green
  modeRushButtonColor = Green
  
  modsHalfSpeedButtonColor = Red
  modsDoubleSpeedButtonColor = Red
  modsHiddenButtonColor = Red
  modsFlashlightButtonColor = Red
  modsNoFailButtonColor = Red
  modsAutoButtonColor = Red
end

function Songselect:update(dt)
  if not isModes and not isMods then
    isMouseOnPlay = mx > window_width - 200 and mx < window_width - 200 + 150 and
                            my > window_height * 0.94 and my < window_height * 0.94 + 50        
                            
    isMouseOnBack = mx > 50 and mx < 200 and         
                            my > gh * 0.94 and my < gh * 0.94 + 50
                            
    isMouseOnRandom = mx > window_width - 400 and mx < window_width - 400 + 150 and         
                            my > window_height * 0.94 and my < window_height * 0.94 + 50
                            
    isMouseOnMods = mx > window_width - 600 and mx < window_width - 600 + 150 and         
                            my > window_height * 0.94 and my < window_height * 0.94 + 50
                            
    isMouseOnModes = mx > window_width - 800 and mx < window_width - 800 + 150 and         
                            my > window_height * 0.94 and my < window_height * 0.94 + 50
 
  
    playButtonColor = Green
    backButtonColor = Green
    randomButtonColor = Green
    modsButtonColor = Green
    modesButtonColor = Green
            
    if isMouseOnPlay or isMouseOnBack or isMouseOnRandom or isMouseOnMods or isMouseOnModes then
      if isMouseOnPlay then
        playButtonColor = Blue
      elseif isMouseOnBack then
        backButtonColor = Blue
      elseif isMouseOnRandom then
        randomButtonColor = Blue
      elseif isMouseOnMods then
        modsButtonColor = Blue
      elseif isMouseOnModes then
        modesButtonColor = Blue
      end  
    
      if not hoverButtonOver then
        hoverButtonOver = true
        soundManager.ButtonOver:play()
      end
    else
      hoverButtonOver = false
    end
  end
  if isModes or isMods then
    isMouseOnModeRhombus = mx > window_width * 0.46 and mx < gw * 0.46 + window_width * 0.08 and
                            my > window_height * 0.4 and my < window_height * 0.4 + 50                                    
    isMouseOnModeCatch = mx > window_width * 0.46 and mx < window_width * 0.46 + window_width * 0.08 and
                            my > window_height * 0.5 and my < window_height * 0.5 + 50                                
    isMouseOnModeRush = mx > window_width * 0.46 and mx < window_width * 0.46 + window_width * 0.08 and
                            my > window_height * 0.6 and my < window_height * 0.6 + 50    
                            
    isMouseOnModsBack = mx > gw * 0.46 and mx < gw * 0.46 + 150 and
                            my > gh * 0.7 and my < gh * 0.7 + 50 
    isMouseOnModsHalfSpeed = mx > gw * 0.4 and mx < gw * 0.4 + 150 and
                            my > gh * 0.4 and my < gh * 0.4 + 50       
    isMouseOnModsDoubleSpeed = mx > gw * 0.52 and mx < gw * 0.52 + 150 and
                            my > gh * 0.4 and my < gh * 0.4 + 50 
    isMouseOnModsHidden = mx > gw * 0.4 and mx < gw * 0.4 + 150 and
                            my > gh * 0.5 and my < gh * 0.5 + 50             
    isMouseOnModsFlashlight = mx > gw * 0.52 and mx < gw * 0.52 + 150 and
                            my > gh * 0.5 and my < gh * 0.5 + 50       
    isMouseOnModsNoFail = mx > gw * 0.4 and mx < gw * 0.4 + 150 and
                            my > gh * 0.6 and my < gh * 0.6 + 50 
    isMouseOnModsAuto = mx > gw * 0.52 and mx < gw * 0.52 + 150 and
                            my > gh * 0.6 and my < gh * 0.6 + 50              
                                                        

    modeRhombusButtonColor = Green
    modeCatchButtonColor = Green
    modeRushButtonColor = Green
    
    if isModes then
      if isMouseOnModeRhombus or isMouseOnModeCatch or isMouseOnModeRush then
        if isMouseOnModeRhombus then
          modeRhombusButtonColor = Blue
        elseif isMouseOnModeCatch then
          modeCatchButtonColor = Blue
        elseif isMouseOnModeRush then
          modeRushButtonColor = Blue
        end  
            
        if not hoverButtonOver then
          hoverButtonOver = true
          soundManager.ButtonOver:play()
        end
      else
        hoverButtonOver = false
      end
    end
    
    if isMods then                
      if isMouseOnModsBack or isMouseOnModsHalfSpeed or isMouseOnModsDoubleSpeed or isMouseOnModsHidden
       or isMouseOnModsFlashlight or isMouseOnModsNoFail or isMouseOnModsAuto then       
              
        if not hoverButtonOver then
          hoverButtonOver = true
          soundManager.ButtonOver:play()
        end
      else
        hoverButtonOver = false
      end
    end
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
  if state == "Songselect" and not isModes and not isMods then                                                       
    if isMouseOnPlay and button == 1 then
      soundManager.ButtonHit:play()
      gameManager.Restart()
      stateManager.GameState = "Maingame"
    elseif isMouseOnBack and button == 1 then
      state = "Startmenu"
      soundManager.ButtonHit:play()
    elseif isMouseOnRandom and button == 1 then
      soundManager.ButtonHit:play()
    elseif isMouseOnMods and button == 1 then
      isMods = true
      soundManager.ButtonHit:play()
    elseif isMouseOnModes and button == 1 then
      isModes = true
      soundManager.ButtonHit:play()
    end
  elseif isModes then 
    if isMouseOnModeRhombus and button == 1 then
      stateManager.GameModeState = "Rhombus"
      isModes = false
      soundManager.ButtonHit:play()
    elseif isMouseOnModeCatch and button == 1 then
      stateManager.GameModeState = "Catch"
      isModes = false 
      soundManager.ButtonHit:play()
    elseif isMouseOnModeRush and button == 1 then
      stateManager.GameModeState = "Rush"
      isModes = false
      soundManager.ButtonHit:play()
    end
    
  elseif isMods then 
    if isMouseOnModsHalfSpeed and button == 1 then
      soundManager.ButtonHit:play()
      if modManager.isDoubleSpeed == true then
        modManager.isDoubleSpeed = false
        modsDoubleSpeedButtonColor = Red
      end
      if modManager.isHalfSpeed == false then
        modManager.isHalfSpeed = true
        modsHalfSpeedButtonColor = Green
      else
        modManager.isHalfSpeed = false
        modsHalfSpeedButtonColor = Red
      end
    elseif isMouseOnModsDoubleSpeed and button == 1 then
      soundManager.ButtonHit:play()
      if modManager.isHalfSpeed == true then
        modManager.isHalfSpeed = false
        modsHalfSpeedButtonColor = Red
      end
      if modManager.isDoubleSpeed == false then
        modManager.isDoubleSpeed = true
        modsDoubleSpeedButtonColor = Green
      else
        modManager.isDoubleSpeed = false
        modsDoubleSpeedButtonColor = Red
      end
    elseif isMouseOnModsHidden and button == 1 then            
      soundManager.ButtonHit:play()
      if modManager.isHidden == false then
        modManager.isHidden = true
        modsHiddenButtonColor = Green
      else
        modManager.isHidden = false
        modsHiddenButtonColor = Red
      end
    elseif isMouseOnModsFlashlight and button == 1 then            
      soundManager.ButtonHit:play()
      if modManager.isFlashlight == false then
        modManager.isFlashlight = true
        modsFlashlightButtonColor = Green
      else
        modManager.isFlashlight = false
        modsFlashlightButtonColor = Red
      end
    elseif isMouseOnModsNoFail and button == 1 then            
      soundManager.ButtonHit:play()
      if modManager.isAuto == true then
        modManager.isAuto = false
        modsAutoButtonColor = Red
      end
      if modManager.isNoFail == false then
        modManager.isNoFail = true
        modsNoFailButtonColor = Green
      else
        modManager.isNoFail = false
        modsNoFailButtonColor = Red
      end
    elseif isMouseOnModsAuto and button == 1 then            
      soundManager.ButtonHit:play()
      if modManager.isNoFail == true then
        modManager.isNoFail = false
        modsNoFailButtonColor = Red
      end
      if modManager.isAuto == false then
        modManager.isAuto = true
        modsAutoButtonColor = Green
      else
        modManager.isAuto = false
        modsAutoButtonColor = Red
      end
    elseif isMouseOnModsBack and button == 1 then            
      isMods = false    
      soundManager.ButtonHit:play()
    end
  end
end

function BottomBar()
  love.graphics.setFont(smallFont)
  love.graphics.setLineWidth(3)
  
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', 0, gh * 0.92, gw, gh * 0.08)
  
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
  
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', gw * 0.4, gh * 0.4, 150, 50, 10)
  love.graphics.setColor(modsHalfSpeedButtonColor)
  love.graphics.rectangle('line', gw * 0.4, gh * 0.4, 150, 50, 10)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("0.75x speed", gw * 0.4, gh * 0.4 + 10, 150, "center")
  
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', gw * 0.52, gh * 0.4, 150, 50, 10)
  love.graphics.setColor(modsDoubleSpeedButtonColor)
  love.graphics.rectangle('line', gw * 0.52, gh * 0.4, 150, 50, 10)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("1.25x speed", gw * 0.52, gh * 0.4 + 10, 150, "center")
  
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', gw * 0.4, gh * 0.5, 150, 50, 10)
  love.graphics.setColor(modsHiddenButtonColor)
  love.graphics.rectangle('line', gw * 0.4, gh * 0.5, 150, 50, 10)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Hidden", gw * 0.4, gh * 0.5 + 10, 150, "center")
  
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', gw * 0.52, gh * 0.5, 150, 50, 10)
  love.graphics.setColor(modsFlashlightButtonColor)
  love.graphics.rectangle('line', gw * 0.52, gh * 0.5, 150, 50, 10)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Flashlight", gw * 0.52, gh * 0.5 + 10, 150, "center")
  
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', gw * 0.4, gh * 0.6, 150, 50, 10)
  love.graphics.setColor(modsNoFailButtonColor)
  love.graphics.rectangle('line', gw * 0.4, gh * 0.6, 150, 50, 10)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("No Fail", gw * 0.4, gh * 0.6 + 10, 150, "center")
  
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', gw * 0.52, gh * 0.6, 150, 50, 10)
  love.graphics.setColor(modsAutoButtonColor)
  love.graphics.rectangle('line', gw * 0.52, gh * 0.6, 150, 50, 10)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Auto", gw * 0.52, gh * 0.6 + 10, 150, "center")
  
  
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', gw * 0.46, gh * 0.7, gw * 0.08, 50, 10)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.rectangle('line', gw * 0.46, gh * 0.7, gw * 0.08, 50, 10)
  love.graphics.printf("Back", gw * 0.46, gh * 0.7 + 10, gw * 0.08, "center")
end

function Modes()
  love.graphics.setColor(0, 0, 0, 0.8)
  love.graphics.rectangle('fill', 0, 0, gw, gh)
  
  love.graphics.setFont(bigFont)  
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Modes", 0, gh * 0.25, gw, "center")
  
  love.graphics.setFont(smallFont)  
  
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', gw * 0.46, gh * 0.4, gw * 0.08, 50, 10)
  love.graphics.setColor(modeRhombusButtonColor)
  love.graphics.rectangle('line', gw * 0.46, gh * 0.4, gw * 0.08, 50, 10)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Rhombus", gw * 0.46, gh * 0.4 + 10, gw * 0.08, "center")
  
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', gw * 0.46, gh * 0.5, gw * 0.08, 50, 10)
  love.graphics.setColor(modeCatchButtonColor)
  love.graphics.rectangle('line', gw * 0.46, gh * 0.5, gw * 0.08, 50, 10)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Catch", gw * 0.46, gh * 0.5 + 10, gw * 0.08, "center")
  
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', gw * 0.46, gh * 0.6, gw * 0.08, 50, 10)
  love.graphics.setColor(modeRushButtonColor)
  love.graphics.rectangle('line', gw * 0.46, gh * 0.6, gw * 0.08, 50, 10)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Rush", gw * 0.46, gh * 0.6 + 10, gw * 0.08, "center")
end

function Background()
  love.graphics.push()
  love.graphics.draw(img, 0, 0, 0, scaleX, scaleY)
  love.graphics.setColor(0.3, 0.3, 0.3, 0.5)
  love.graphics.rectangle('fill', 0, 0, gw, gh)
  love.graphics.pop()
end


return Songselect
