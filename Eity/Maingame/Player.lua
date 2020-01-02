Player = {}

function Player:load()
  Player.direction = 4
end

function Player:draw()
  
  love.graphics.setColor(1, 1, 1, 1)
  
  if Player.direction == 4 then
    love.graphics.polygon('fill', gw / 2, gh / 2 - 34,
                          gw / 2 + 40, gh / 2 + 5,
                          gw / 2 + 20, gh / 2 + 25,
                          gw / 2, gh / 2 + 5,
                          gw / 2 - 20, gh / 2 + 25,
                          gw / 2 - 40, gh / 2 + 5)
  elseif Player.direction == 2 then
    love.graphics.polygon('fill', gw / 2, gh / 2 - 34 * -1,
                          gw / 2 + 40, gh / 2 + 5 * -1,
                          gw / 2 + 20, gh / 2 + 25 * -1,
                          gw / 2, gh / 2 + 5 * -1,
                          gw / 2 - 20, gh / 2 + 25 * -1,
                          gw / 2 - 40, gh / 2 + 5 * -1)
  elseif Player.direction == 1 then
    love.graphics.polygon('fill', gw / 2 - 34, gh / 2,
                          gw / 2 + 5, gh / 2 + 40,
                          gw / 2 + 25, gh / 2 + 20,
                          gw / 2 + 5, gh / 2,
                          gw / 2 + 25, gh / 2 - 20,
                          gw / 2 + 5, gh / 2 - 40)
  elseif Player.direction == 3 then
    love.graphics.polygon('fill', gw / 2 - 34 * -1, gh / 2,
                          gw / 2 + 5 * -1, gh / 2 + 40,
                          gw / 2 + 25 * -1, gh / 2 + 20,
                          gw / 2 + 5 * -1, gh / 2,
                          gw / 2 + 25 * -1, gh / 2 - 20,
                          gw / 2 + 5 * -1, gh / 2 - 40)
  end
end
function Player:keypressed(key, scancode, isrepeat)
  if not ModManager.isAuto then
    if key == "w" or key == "up" then
      Player.direction = 4
    end
    if key == "s" or key == "down" then
      Player.direction = 2
    end
    if key == "a" or key == "left" then
      Player.direction = 1
    end
    if key == "d" or key == "right" then
      Player.direction = 3
    end
  end
end

return Player
