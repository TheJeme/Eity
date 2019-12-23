require 'Player'
require 'ScoreManager'

Arrow = {}
listOfArrows = {}

function createArrow(type, direction, speed)
  arrow = {}
  arrow.type = type -- normal, reverse, bad --
  arrow.direction = direction -- left, right, down, up --
  if (direction == "up") then
    arrow.tempPosition = 590
  elseif (direction == "down") then
    arrow.tempPosition = -490
  elseif (direction == "left") then
    arrow.tempPosition = 613
  elseif (direction == "right") then
    arrow.tempPosition = -1307
  end
  arrow.speed = speed
  arrow.rotation = 0

  table.insert(listOfArrows, arrow)
end

function Arrow:load()
  gw = love.graphics.getWidth()
  gh = love.graphics.getHeight()
  hitsrc = love.audio.newSource("hit.wav", "static")
  misssrc = love.audio.newSource("miss.wav", "static")
  hitsrc:setVolume(0.5)
  misssrc:setVolume(0.5)
end

function Arrow:update(dt)
  for i, v in ipairs(listOfArrows) do
    if (v.direction == "up") then
      v.tempPosition = v.tempPosition - v.speed * dt
      if(v.tempPosition < 110 + 200) and v.type == "reverse" then
        if(v.rotation < math.pi) then
            v.rotation = v.rotation + v.speed * 0.05 * dt
        else
          v.rotation = math.pi
        end
    end
      if(v.tempPosition < 115) then
        table.remove(listOfArrows, i)

        if (v.type == "normal") then
          if (Player.direction == "down") then
            hitsrc:play()
            ScoreManager.AddScore("perfect")
          else
            misssrc:play()
            ScoreManager.ResetCombo()
          end
        elseif (v.type == "reverse") then
          if (Player.direction == "up") then
            hitsrc:play()
            ScoreManager.AddScore("perfect")
          else
            misssrc:play()
            ScoreManager.ResetCombo()
          end
        elseif (v.type == "bad") then
          if (Player.direction == "down") then
            misssrc:play()
            ScoreManager.AddScore("bad")
          end
        end
      end

    elseif (v.direction == "down") then
    v.tempPosition = v.tempPosition - v.speed * dt
    if(v.tempPosition < -960 + 200) and v.type == "reverse" then
      if(v.rotation < math.pi) then
          v.rotation = v.rotation + v.speed * 0.05 * dt
      else
        v.rotation = math.pi
      end
    end
    if(v.tempPosition < -965) then
      table.remove(listOfArrows, i)

      if (v.type == "normal") then
        if (Player.direction == "up") then
          hitsrc:play()
          ScoreManager.AddScore("perfect")
        else
          misssrc:play()
          ScoreManager.ResetCombo()
        end
      elseif (v.type == "reverse") then
        if (Player.direction == "down") then
          hitsrc:play()
          ScoreManager.AddScore("perfect")
        else
          misssrc:play()
          ScoreManager.ResetCombo()
        end
      elseif (v.type == "bad") then
        if (Player.direction == "up") then
            misssrc:play()
            ScoreManager.AddScore("bad")
        end
      end
    end

    elseif (v.direction == "left") then
    v.tempPosition = v.tempPosition - v.speed * dt
    if(v.tempPosition < 135 + 200) and v.type == "reverse" then
      if(v.rotation < math.pi) then
          v.rotation = v.rotation + v.speed * 0.05 * dt
      else
        v.rotation = math.pi
      end
    end
    if(v.tempPosition < 138) then
      table.remove(listOfArrows, i)
      if (v.type == "normal") then
        if (Player.direction == "right") then
          hitsrc:play()
          ScoreManager.AddScore("perfect")
        else
          misssrc:play()
          ScoreManager.ResetCombo()
        end
      elseif (v.type == "reverse") then
        if (Player.direction == "left") then
            hitsrc:play()
            ScoreManager.AddScore("perfect")
        else
          misssrc:play()
          ScoreManager.ResetCombo()
        end
      elseif (v.type == "bad") then
        if (Player.direction == "right") then
            misssrc:play()
            ScoreManager.AddScore("bad")
        end
      end
    end

  elseif (v.direction == "right") then
  v.tempPosition = v.tempPosition - v.speed * dt
  if(v.tempPosition < -1785 + 200) and v.type == "reverse" then
    if(v.rotation < math.pi) then
        v.rotation = v.rotation + v.speed * 0.05 * dt
    else
      v.rotation = math.pi
    end
  end
  if(v.tempPosition < -1782) then
      table.remove(listOfArrows, i)
      if (v.type == "normal") then
        if (Player.direction == "left") then
            hitsrc:play()
            ScoreManager.AddScore("perfect")
        else
          misssrc:play()
          ScoreManager.ResetCombo()
        end
      elseif (v.type == "reverse") then
        if (Player.direction == "right") then
            hitsrc:play()
            ScoreManager.AddScore("perfect")
        else
          misssrc:play()
          ScoreManager.ResetCombo()
        end
      elseif (v.type == "bad") then
        if (Player.direction == "left") then
          misssrc:play()
          ScoreManager.AddScore("bad")
        end
      end
    end
  end
end

function Arrow:draw()

  for i, v in ipairs(listOfArrows) do
    if (v.type == "normal") then
      love.graphics.setColor(34 / 255, 150 / 255, 227 / 255, 1)

    elseif (v.type == "reverse") then
        love.graphics.setColor(219 / 255, 130 / 255, 52 / 255, 1)

    elseif (v.type == "bad") then
        love.graphics.setColor(219 / 255, 52 / 255, 52 / 255, 1)
    end

  if (v.direction == "up") then
    love.graphics.push()
    love.graphics.translate(gw / 2, gh / 2)
    love.graphics.rotate(v.rotation)
    love.graphics.translate(gw / 2 * -1, gh / 2 * -1)
    love.graphics.polygon('fill', gw / 2, gh / 2 - 4 + v.tempPosition,
                          gw / 2 + 40, gh / 2 + 35 + v.tempPosition,
                          gw / 2 + 20, gh / 2 + 55 + v.tempPosition,
                          gw / 2, gh / 2 + 35 + v.tempPosition,
                          gw / 2 - 20, gh / 2 + 55 + v.tempPosition,
                          gw / 2 - 40, gh / 2 + 35 + v.tempPosition)
    love.graphics.pop()

  elseif (v.direction == "down") then
    love.graphics.push()
    love.graphics.translate(gw / 2, gh / 2)
    love.graphics.rotate(v.rotation)
    love.graphics.translate(gw / 2 * -1, gh / 2 * -1)
    love.graphics.polygon('fill', gw / 2, (gh / 2 - 4 + v.tempPosition) * -1,
                          gw / 2 + 40, (gh / 2 + 35 + v.tempPosition) * -1,
                          gw / 2 + 20, (gh / 2 + 55 + v.tempPosition) * -1,
                          gw / 2, (gh / 2 + 35 + v.tempPosition) * -1,
                          gw / 2 - 20, (gh / 2 + 55 + v.tempPosition) * -1,
                          gw / 2 - 40, (gh / 2 + 35 + v.tempPosition) * -1)
    love.graphics.pop()

  elseif (v.direction == "left") then
    love.graphics.push()
    love.graphics.translate(gw / 2, gh / 2)
    love.graphics.rotate(v.rotation)
    love.graphics.translate(gw / 2 * -1, gh / 2 * -1)
    love.graphics.polygon('fill', gw / 2 - 26 + v.tempPosition, gh / 2,
                          gw / 2 + 13 + v.tempPosition, gh / 2 + 40,
                          gw / 2 + 33 + v.tempPosition, gh / 2 + 20,
                          gw / 2 + 13 + v.tempPosition, gh / 2,
                          gw / 2 + 33 + v.tempPosition, gh / 2 - 20,
                          gw / 2 + 13 + v.tempPosition, gh / 2 - 40)
    love.graphics.pop()

  elseif (v.direction == "right") then
    love.graphics.push()
    love.graphics.translate(gw / 2, gh / 2)
    love.graphics.rotate(v.rotation)
    love.graphics.translate(gw / 2 * -1, gh / 2 * -1)

    love.graphics.polygon('fill', (gw / 2 - 26 + v.tempPosition) * -1, gh / 2,
                          (gw / 2 + 13 + v.tempPosition) * -1, gh / 2 + 40,
                          (gw / 2 + 33 + v.tempPosition) * -1, gh / 2 + 20,
                          (gw / 2 + 13 + v.tempPosition) * -1, gh / 2,
                          (gw / 2 + 33 + v.tempPosition) * -1, gh / 2 - 20,
                          (gw / 2 + 13 + v.tempPosition) * -1, gh / 2 - 40)
      love.graphics.pop()
      end
    end
  end
end

return Arrow
