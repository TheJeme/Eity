require 'UI/Options_UI'

Options = {}

local isMouseOnBack
local isMouseOnEnableFPS

function Options:load()
  Options_UI:load()
end

function Options:update(dt)
  Options_UI:update(dt)
  isMouseOnBack = mx > gw * 0.54 and mx < gw * 0.64 and
                          my > gh / 2 + 300 and my < gh / 2 + 300 + 50
                          
  isMouseOnEnableFPS = mx > gw * 0.63 - 16 and mx < gw * 0.63 + 16 and
                          my > gh / 2 - 275 - 16 and my < gh / 2 - 275 + 16   
                          
  isMouseOnEnableChangeBinds = mx > gw * 0.35 and mx < gw * 0.35 + gw * 0.3 and
                          my > gh / 2 - 150 and my < gh / 2 - 150 + 50        
                                                
  if isMouseOnBack or isMouseOnEnableChangeBinds then
    if not hoverButtonOver then
      hoverButtonOver = true
      SoundManager.ButtonOver:play()
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
      SoundManager.ButtonHit:play()
      state = "Startmenu"
    elseif isMouseOnEnableFPS and button == 1 then
      SoundManager.ButtonHit:play()
      if isEnabledFPS then
        isEnabledFPS = false
      else
        isEnabledFPS = true
      end
    end
  end
end

return Options
