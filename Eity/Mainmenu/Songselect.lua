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
  bigFont = love.graphics.newFont("Assets/roboto.ttf", 84)
  smallFont = love.graphics.newFont("Assets/roboto.ttf", 24)
  SongBG = love.graphics.newImage("Shelter/BG2.jpg")
  scaleX, scaleY = GameManager:getImageScaleForNewDimensions( SongBG, gw, gh )
  playButtonColor = Colors.getGreenColor()
  backButtonColor = Colors.getGreenColor()
  randomButtonColor = Colors.getGreenColor()
  modsButtonColor = Colors.getGreenColor()
  
  modesButtonColor = Colors.getGreenColor()
  modeRhombusButtonColor = Colors.getGreenColor()
  modeCatchButtonColor = Colors.getGreenColor()
  modeRushButtonColor = Colors.getGreenColor()
  
  modsHalfSpeedButtonColor = Colors.getRedColor()
  modsDoubleSpeedButtonColor = Colors.getRedColor()
  modsHiddenButtonColor = Colors.getRedColor()
  modsFlashlightButtonColor = Colors.getRedColor()
  modsNoFailButtonColor = Colors.getRedColor()
  modsAutoButtonColor = Colors.getRedColor()
end

function Songselect:update(dt)
  if not isModes and not isMods then
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
  if isModes or isMods then
    isMouseOnModeRhombus = mx > gw * 0.46 and mx < gw * 0.46 + gw * 0.08 and
                            my > gh * 0.4 and my < gh * 0.4 + 50                                    
    isMouseOnModeCatch = mx > gw * 0.46 and mx < gw * 0.46 + gw * 0.08 and
                            my > gh * 0.5 and my < gh * 0.5 + 50                                
    isMouseOnModeRush = mx > gw * 0.46 and mx < gw * 0.46 + gw * 0.08 and
                            my > gh * 0.6 and my < gh * 0.6 + 50    
                            
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
                                                        

    modeRhombusButtonColor = {0, 184 / 255, 148 / 255, 1}
    modeCatchButtonColor = {0, 184 / 255, 148 / 255, 1}
    modeRushButtonColor = {0, 184 / 255, 148 / 255, 1}
    
    if isModes then
      if isMouseOnModeRhombus or isMouseOnModeCatch or isMouseOnModeRush then
        if isMouseOnModeRhombus then
          modeRhombusButtonColor = {9 / 255, 132 / 255, 227 / 255, 1}
        elseif isMouseOnModeCatch then
          modeCatchButtonColor = {9 / 255, 132 / 255, 227 / 255, 1}
        elseif isMouseOnModeRush then
          modeRushButtonColor = {9 / 255, 132 / 255, 227 / 255, 1}
        end  
            
        if not hoverButtonOver then
          hoverButtonOver = true
          SoundManager.ButtonOver:play()
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
          SoundManager.ButtonOver:play()
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
    love.graphics.setFont(smallFont)
    love.graphics.setColor(0, 0, 0, 0.6)
    love.graphics.rectangle('fill', gw - 520, gh * 0.5, 500, 100, 10)
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.rectangle('line', gw - 520, gh * 0.5, 500, 100, 10)
    love.graphics.printf("Shelter", gw - 710, gh * 0.5 + 25, 500, "center")
    love.graphics.print("Selected Mode: " .. GamestateManager.GameModeState, 0, 20)
  elseif isModes then
    Modes()
  elseif isMods then
    Mods()
  end
end

function Songselect:mousepressed(x, y,button)
  if state == "Songselect" and not isModes and not isMods then                                                       
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
      isMods = true
      SoundManager.ButtonHit:play()
    elseif isMouseOnModes and button == 1 then
      isModes = true
      SoundManager.ButtonHit:play()
    end
  elseif isModes then 
    if isMouseOnModeRhombus and button == 1 then
      GamestateManager.GameModeState = "Rhombus"
      isModes = false
      SoundManager.ButtonHit:play()
    elseif isMouseOnModeCatch and button == 1 then
      GamestateManager.GameModeState = "Catch"
      isModes = false 
      SoundManager.ButtonHit:play()
    elseif isMouseOnModeRush and button == 1 then
      GamestateManager.GameModeState = "Rush"
      isModes = false
      SoundManager.ButtonHit:play()
    end
    
  elseif isMods then 
    if isMouseOnModsHalfSpeed and button == 1 then
      SoundManager.ButtonHit:play()
      if ModManager.isDoubleSpeed == true then
        ModManager.isDoubleSpeed = false
        modsDoubleSpeedButtonColor = Colors.getRedColor()
      end
      if ModManager.isHalfSpeed == false then
        ModManager.isHalfSpeed = true
        modsHalfSpeedButtonColor = Colors.getGreenColor()
      else
        ModManager.isHalfSpeed = false
        modsHalfSpeedButtonColor = Colors.getRedColor()
      end
    elseif isMouseOnModsDoubleSpeed and button == 1 then
      SoundManager.ButtonHit:play()
      if ModManager.isHalfSpeed == true then
        ModManager.isHalfSpeed = false
        modsHalfSpeedButtonColor = Colors.getRedColor()
      end
      if ModManager.isDoubleSpeed == false then
        ModManager.isDoubleSpeed = true
        modsDoubleSpeedButtonColor = Colors.getGreenColor()
      else
        ModManager.isDoubleSpeed = false
        modsDoubleSpeedButtonColor = Colors.getRedColor()
      end
    elseif isMouseOnModsHidden and button == 1 then            
      SoundManager.ButtonHit:play()
      if ModManager.isHidden == false then
        ModManager.isHidden = true
        modsHiddenButtonColor = Colors.getGreenColor()
      else
        ModManager.isHidden = false
        modsHiddenButtonColor = Colors.getRedColor()
      end
    elseif isMouseOnModsFlashlight and button == 1 then            
      SoundManager.ButtonHit:play()
      if ModManager.isFlashlight == false then
        ModManager.isFlashlight = true
        modsFlashlightButtonColor = Colors.getGreenColor()
      else
        ModManager.isFlashlight = false
        modsFlashlightButtonColor = Colors.getRedColor()
      end
    elseif isMouseOnModsNoFail and button == 1 then            
      SoundManager.ButtonHit:play()
      if ModManager.isAuto == true then
        ModManager.isAuto = false
        modsAutoButtonColor = Colors.getRedColor()
      end
      if ModManager.isNoFail == false then
        ModManager.isNoFail = true
        modsNoFailButtonColor = Colors.getGreenColor()
      else
        ModManager.isNoFail = false
        modsNoFailButtonColor = Colors.getRedColor()
      end
    elseif isMouseOnModsAuto and button == 1 then            
      SoundManager.ButtonHit:play()
      if ModManager.isNoFail == true then
        ModManager.isNoFail = false
        modsNoFailButtonColor = Colors.getRedColor()
      end
      if ModManager.isAuto == false then
        ModManager.isAuto = true
        modsAutoButtonColor = Colors.getGreenColor()
      else
        ModManager.isAuto = false
        modsAutoButtonColor = Colors.getRedColor()
      end
    elseif isMouseOnModsBack and button == 1 then            
      isMods = false    
      SoundManager.ButtonHit:play()
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
  love.graphics.printf("Mods", 0, gh * 0.25, gw, "center") 
  love.graphics.setFont(smallFont)
  
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', gw * 0.4, gh * 0.4, 150, 50, 10)
  love.graphics.setColor(modsHalfSpeedButtonColor)
  love.graphics.rectangle('line', gw * 0.4, gh * 0.4, 150, 50, 10)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("0.5x speed", gw * 0.4, gh * 0.4 + 10, 150, "center")
  
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', gw * 0.52, gh * 0.4, 150, 50, 10)
  love.graphics.setColor(modsDoubleSpeedButtonColor)
  love.graphics.rectangle('line', gw * 0.52, gh * 0.4, 150, 50, 10)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("1.5x speed", gw * 0.52, gh * 0.4 + 10, 150, "center")
  
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
  love.graphics.draw(SongBG, 0, 0, 0, scaleX, scaleY)
  love.graphics.setColor(0.3, 0.3, 0.3, 0.5)
  love.graphics.rectangle('fill', 0, 0, gw, gh)
  love.graphics.pop()
end


return Songselect
