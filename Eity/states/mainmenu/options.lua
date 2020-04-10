require 'UI/Options_UI'

Options = {}

local isMouseOnBack
local isMouseOnEnableFPS
local isMouseOnEnableVSync

function Options:load()
  Options_UI:load()
end

function Options:update(dt)
  Options_UI:update(dt)
  isMouseOnBack = mx > gw * 0.54 and mx < gw * 0.64 and
                          my > gh / 2 + 300 and my < gh / 2 + 300 + 50
                      
  isMouseOnEnableVSync = mx > gw * 0.63 - 16 and mx < gw * 0.63 + 16 and
                          my > gh / 2 - 275 - 16 and my < gh / 2 - 275 + 16   
                          
  isMouseOnEnableFPS = mx > gw * 0.63 - 16 and mx < gw * 0.63 + 16 and
                          my > gh / 2 - 200 - 16 and my < gh / 2 - 200 + 16   
                                                              
  if isMouseOnBack then
    if not hoverButtonOver then
      hoverButtonOver = true
      soundManager.ButtonOver:play()
    end
  else
    hoverButtonOver = false
  end
end

function Options:draw()
  Options_UI:draw()
end

function Options:mousepressed(x, y,button)
  if state == "Options" then                          
    if isMouseOnBack and button == 1 then
      soundManager.ButtonHit:play()
      state = "Startmenu"
    elseif isMouseOnEnableFPS and button == 1 then
      soundManager.ButtonHit:play()
      if isEnabledFPS then
        isEnabledFPS = false
      else
        isEnabledFPS = true
      end
    elseif isMouseOnEnableVSync and button == 1 then
      soundManager.ButtonHit:play()
      if isEnabledVSync then
        isEnabledVSync = false
      else
        isEnabledVSync = true
      end
    end
  end
end

return Options
