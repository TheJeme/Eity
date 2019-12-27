require 'Maingame'


function love.load()
  Maingame:load()
  love.graphics.setBackgroundColor(0.1, 0.1, 0.1, 1)
end

function love.update(dt)
  Maingame:update(dt)
end

function love.draw()
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.print("FPS " .. love.timer.getFPS())
  Maingame:draw()
end

function love.keypressed(key, scancode, isrepeat)
   Maingame:keypressed(key, scancode, isrepeat)
end
