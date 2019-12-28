require 'UI/Options_UI'

Options = {}

function Options:load()
  Options_UI:load()
end

function Options:update(dt)
  Options_UI:update(dt)
end

function Options:draw()
  Options_UI:draw()
end

function Options:mousepressed(x, y,button)
  if state == "Options" then
    local isMouseOnBack = mx > gw / 2 + 100 and mx < gw / 2 + 250 and
                            my > gh / 2 + 300 and my < gh / 2 + 350                            
    if isMouseOnBack then
      state = "Startmenu"
    end
  end
end

return Options
