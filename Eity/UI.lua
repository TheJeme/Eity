require 'Player'

UI = {}

function UI:load()
  gw = love.graphics.getWidth()
  gh = love.graphics.getHeight()
end

function UI:update(dt)

end

function UI:draw()
  MainGame()
end

function MainGame()
  love.graphics.setLineWidth(700)
  love.graphics.setColor(0.1, 0.1, 0.1, 1)
  love.graphics.circle("line", gw / 2, gh / 2, 1100, 4)
  love.graphics.setLineWidth(18)
  love.graphics.circle("fill", gw / 2, gh / 2, 100, 4)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.circle("line", gw / 2, gh / 2, 100, 4)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.setLineWidth(112)
  love.graphics.circle("line", gw / 2, gh / 2, 600, 4)
end

return UI
