require 'UI/Options_UI'

Options = {}

local isMouseOnEnableFPS
local isMouseOnEnableVSync

function Options:load()
  Options_UI:load()
end

function Options:update(dt)
  Options_UI:update(dt)
                      
  isMouseOnEnableVSync = mx > window_width * 0.63 - 16 and mx < window_width * 0.63 + 16 and
                          my > window_height / 2 - 275 - 16 and my < window_height / 2 - 275 + 16   
                          
  isMouseOnEnableFPS = mx > window_width * 0.63 - 16 and mx < window_width * 0.63 + 16 and
                          my > window_height / 2 - 200 - 16 and my < window_height / 2 - 200 + 16   
                                                            
end

function Options:draw()
  Options_UI:draw()
end

function Options:mousepressed(x, y,button)
  if menustate == "Options" then          
    Options_UI:mousepressed(x, y,button)                
    if isMouseOnEnableFPS and button == 1 then
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
