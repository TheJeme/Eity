require 'UI'
require 'Player'
require 'Arrow'
require 'Slider'

Maingame = {}

function Maingame:load()
  Arrow:load()
  Slider:load()
  UI:load()
  Player:load()
end

function Maingame:update(dt)
  Arrow:update(dt)
  Slider:update(dt)
  UI:update(dt)
end

function Maingame:draw()
  Arrow:draw()
  Slider:draw()
  UI:draw()
  Player:draw()
end

function Maingame:keypressed(key, scancode, isrepeat)
  Player:keypressed(key, scancode, isrepeat)

  if key == "y" then
    createArrow("normal", "down", 150)
  end
  if key == "u" then
    createArrow("normal", "up", 400)
  end
  if key == "i" then
    createArrow("normal", "left", 50)
  end
  if key == "o" then
    createArrow("normal", "right", 250)
  end

  if key == "h" then
    createArrow("reverse", "left", 200)
  end
  if key == "j" then
    createArrow("reverse", "up", 200)
  end
  if key == "k" then
    createArrow("reverse", "down", 200)
  end
  if key == "l" then
    createArrow("reverse", "right", 200)
  end

  if key == "n" then
    createArrow("bad", "left", 200)
  end
  if key == "m" then
    createArrow("bad", "up", 200)
  end
  if key == "," then
    createArrow("bad", "down", 200)
  end
  if key == "." then
    createArrow("bad", "right", 200)
  end
end

return Maingame
