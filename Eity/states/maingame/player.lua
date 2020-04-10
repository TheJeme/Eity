Player = {}

function Player:resetPosition()
  Player.direction = "up"
end

function Player:draw()  
  love.graphics.setColor(1, 1, 1, 1)
  
  if Player.direction == "up" then
    love.graphics.polygon('fill', gw / 2, gh / 2 - 34,
                          gw / 2 + 40, gh / 2 + 5,
                          gw / 2 + 20, gh / 2 + 25,
                          gw / 2, gh / 2 + 5,
                          gw / 2 - 20, gh / 2 + 25,
                          gw / 2 - 40, gh / 2 + 5)
  elseif Player.direction == "down" then
    love.graphics.polygon('fill', gw / 2, gh / 2 - 34 * -1,
                          gw / 2 + 40, gh / 2 + 5 * -1,
                          gw / 2 + 20, gh / 2 + 25 * -1,
                          gw / 2, gh / 2 + 5 * -1,
                          gw / 2 - 20, gh / 2 + 25 * -1,
                          gw / 2 - 40, gh / 2 + 5 * -1)
  elseif Player.direction == "left" then
    love.graphics.polygon('fill', gw / 2 - 34, gh / 2,
                          gw / 2 + 5, gh / 2 + 40,
                          gw / 2 + 25, gh / 2 + 20,
                          gw / 2 + 5, gh / 2,
                          gw / 2 + 25, gh / 2 - 20,
                          gw / 2 + 5, gh / 2 - 40)
  elseif Player.direction == "right" then
    love.graphics.polygon('fill', gw / 2 - 34 * -1, gh / 2,
                          gw / 2 + 5 * -1, gh / 2 + 40,
                          gw / 2 + 25 * -1, gh / 2 + 20,
                          gw / 2 + 5 * -1, gh / 2,
                          gw / 2 + 25 * -1, gh / 2 - 20,
                          gw / 2 + 5 * -1, gh / 2 - 40)
  end
end
function Player:keypressed(key)
  if not ModManager.isAuto then
    if key == "w" or key == "up" then
      Player.direction = "up"
    end
    if key == "s" or key == "down" then
      Player.direction = "down"
    end
    if key == "a" or key == "left" then
      Player.direction = "left"
    end
    if key == "d" or key == "right" then
      Player.direction = "right"
    end
  end
end

return Player
