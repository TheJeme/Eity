require 'GameManager'

Menu_UI = {}

function newButton(text, fn)
  return {
    text = text,
    fn = fn,

    now = false,
    last = false
  }
end

local buttons = {}
local font = nil

function Menu_UI:load()
  font = love.graphics.newFont(32)

  table.insert(buttons, newButton("Continue", function()GameManager.Pause() end))
  table.insert(buttons, newButton("Restart", function()GameManager.Restart() end))
  table.insert(buttons, newButton("Quit", function()love.event.quit(0) end))
end

function Menu_UI:draw()

  local button_width = gw * (1/3)
  local button_height = 64
  local margin = 24

  local total_height = (button_height + margin) * #buttons
  local cursor_y = 75

  for i, button in ipairs(buttons) do
    button.last = button.now

    local bx = (gw / 2) - (button_width / 2)
    local by = (gh / 2) - (total_height / 2) + cursor_y - 63

    local color = {0.4, 0.4, 0.5}
    local mx, my = love.mouse.getPosition()

    local hot = mx > bx and mx < bx + button_width and
                my > by and my < by + button_height

    if hot then
      color = {0.8, 0.8, 0.9}
    end

    button.now = love.mouse.isDown(1)
    if (button.now and not button.last and hot) then
      button.fn()
    end

    love.graphics.setColor(unpack(color))
    love.graphics.rectangle("fill", bx, by,
     button_width, button_height, 24)

     love.graphics.setColor(0,0,0)

     local textW = font:getWidth(button.text)
     local textH = font:getHeight(button.text)
     love.graphics.print(button.text, font,
      (gw / 2) - (textW / 2),
      by + textH / 2)

     cursor_y = cursor_y + (button_height + margin)
  end
end
return UI
