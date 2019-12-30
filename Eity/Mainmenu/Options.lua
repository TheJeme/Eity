require 'UI/Options_UI'

Options = {}

local isMouseOnBack

function Options:load()
  Options_UI:load()
end

function Options:update(dt)
  Options_UI:update(dt)
  isMouseOnBack = mx > gw / 2 + 100 and mx < gw / 2 + 250 and
                          my > gh / 2 + 300 and my < gh / 2 + 350                                                      
  if isMouseOnBack then
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
    end
  end
end

return Options
