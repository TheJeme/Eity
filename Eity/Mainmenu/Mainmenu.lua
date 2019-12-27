require 'UI/Button_UI'
require 'UI/Mainmenu_UI'

Mainmenu = {}


function Mainmenu:load()
  Mainmenu_UI:load()
end

function Mainmenu:update(dt)
    Mainmenu_UI:update(dt)
end

function Mainmenu:draw()
  Mainmenu_UI:draw()
end

function Mainmenu:keypressed(key, scancode, isrepeat)
  
  if key == "escape" then
    PressedQuit = true
  end
end

function Mainmenu:mousepressed(x, y,button)
  local isMouseOnPlay = mx > gw / 2 - 60 and mx < gw / 2 - 120 + 280 and
                          my > gh / 2 - 250 - 60 and my < gh / 2 - 90
                          
  local isMouseOnOptions = mx > gw / 2 + 120 and mx < gw / 2 + 340 and
                          my > gh / 2 - 120 and my < gh / 2 + 120
                          
  local isMouseOnExit = mx > gw / 2 - 60 and mx < gw / 2 - 120 + 280 and
                          my > gh / 2 + 90 and my < gh / 2 + 250 + 60
                          
  local isMouseOnExitNo = mx > gw / 2 - 140 - 75 and mx < gw / 2 - 75 and
                          my > gh / 2 + 100 + 30 and my < gh / 2 + 300 - 30
                          
  local isMouseOnExitYes = mx > gw / 2 + 75 and mx < gw / 2 + 140 + 75 and
                          my > gh / 2 + 100 + 30 and my < gh / 2 + 300 - 30
                          

                          
       if isMouseOnPlay and not PressedQuit then
         GameManager.Restart()
         GamestateManager.GameState = "Maingame"
       elseif isMouseOnOptions and not PressedQuit then
         GamestateManager.GameState = "Options" 
       elseif isMouseOnExit and not PressedQuit then
         PressedQuit = true
       elseif isMouseOnExitYes and PressedQuit then
         love.event.quit()
       elseif isMouseOnExitNo and PressedQuit then
         PressedQuit = false
       end
end


return Mainmenu
