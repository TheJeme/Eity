require 'states/mainmenu/Options'
require 'states/mainmenu/Songselect'
require 'UI/Mainmenu_UI'

Mainmenu = {}

local isMouseOnPlay, isMouseOnOptions, isMouseOnExit, isMouseOnExitNo, isMouseOnExitYes

function Mainmenu:load()
  Mainmenu_UI:load()
  Songselect:load()
  Options:load()
  menustate = "Startmenu"
end

function Mainmenu:update(dt)
  if menustate == "Startmenu" then
    soundManager.mainmenusrc:play()
    Mainmenu_UI:update(dt)
  elseif menustate == "Options" then
    Options:update(dt)
  elseif menustate == "Songselect" then
    Songselect:update(dt)
    soundManager.mainmenusrc:stop()
  end                        
end

function Mainmenu:draw()
  if menustate == "Startmenu" or menustate == "Options" then
    love.graphics.draw(mainBG, 0, 0, 0, 1, 1)
    love.graphics.setColor(0.3, 0.3, 0.3, 0.5)
    love.graphics.rectangle('fill', 0, 0, gw, gh)
  end
  if menustate == "Startmenu" then
    Mainmenu_UI:draw()
  elseif menustate == "Options" then
    Options:draw()
  elseif menustate == "Songselect" then
    Songselect:draw()
  end
end

function Mainmenu:keypressed(key)
  
  if key == "escape" and menustate == "Songselect" and isModes then
    isModes = false
  elseif key == "escape" and menustate == "Songselect" and isMods then
    isMods = false
  elseif key == "escape" and menustate == "Startmenu" then
    PressedQuit = true
  elseif key == "escape" and menustate == "Options" or menustate == "Songselect" and key == "escape" then
    menustate = "Startmenu"
  end
end

function Mainmenu:mousepressed(x, y, button)
  if menustate == "Options" then
     Options:mousepressed(x, y,button)  
 elseif menustate == "Songselect" then
     Songselect:mousepressed(x, y, button)
  elseif menustate == "Startmenu" then
    Mainmenu_UI:mousepressed(x, y, button)
   end  
end

return Mainmenu
