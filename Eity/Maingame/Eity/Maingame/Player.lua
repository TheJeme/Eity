Player = {}

function Player:load()
  Player.direction = 4
end

function Player:draw()
  
  love.graphics.setColor(1, 1, 1, 1)
  
  if Player.direction == 4 then
    love.graphics.polygon('fill', gw / 2, gh / 2 - 26,
                          gw / 2 + 40, gh / 2 + 13,
                          gw / 2 + 20, gh / 2 + 33,
                          gw / 2, gh / 2 + 13,
                          gw / 2 - 20, gh / 2 + 33,
                          gw / 2 - 40, gh / 2 + 13)
  elseif Player.direction == 2 then
    love.graphics.polygon('fill', gw / 2, gh / 2 - 26 * -1,
                          gw / 2 + 40, gh / 2 + 13 * -1,
                          gw / 2 + 20, gh / 2 + 33 * -1,
                          gw / 2, gh / 2 + 13 * -1,
                          gw / 2 - 20, gh / 2 + 33 * -1,
                          gw / 2 - 40, gh / 2 + 13 * -1)
  elseif Player.direction == 1 then
    love.graphics.polygon('fill', gw / 2 - 26, gh / 2,
                          gw / 2 + 13, gh / 2 + 40,
                          gw / 2 + 33, gh / 2 + 20,
                          gw / 2 + 13, gh / 2,
                          gw / 2 + 33, gh / 2 - 20,
                          gw / 2 + 13, gh / 2 - 40)
  elseif Player.direction == 3 then
    love.graphics.polygon('fill', gw / 2 - 26 * -1, gh / 2,
                          gw / 2 + 13 * -1, gh / 2 + 40,
                          gw / 2 + 33 * -1, gh / 2 + 20,
                          gw / 2 + 13 * -1, gh / 2,
                          gw / 2 + 33 * -1, gh / 2 - 20,
                          gw / 2 + 13 * -1, gh / 2 - 40)
  end
end
function Player:keypressed(key, scancode, isrepeat)
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

return Player
