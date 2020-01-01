Arrow = {}
listOfArrows = {}

function createArrow(type, direction, speed)
  arrow = {}
  arrow.type = type -- 1 = normal, 2 = reverse, 3 = bad --
  arrow.direction = direction -- 1 = left, 2 = down, 3 = right, 4 = up  --
  if (direction == 1) then
    arrow.tempPosition = gw / 2 + gh / 2
  elseif (direction == 2) then
    arrow.tempPosition = 0
  elseif (direction == 3) then
    arrow.tempPosition = gw / 2 - gh / 2
  elseif (direction == 4) then
    arrow.tempPosition = gh
  end
  arrow.speed = speed
  arrow.rotation = 0

  table.insert(listOfArrows, arrow)
end

function Arrow:load()

end

function Arrow:update(dt)
  for i, v in ipairs(listOfArrows) do
    if (v.direction == 4) then
      v.tempPosition = v.tempPosition - v.speed * dt
      if(v.tempPosition < gh * 0.815) and v.type == 2 then
        if(v.rotation < math.pi) then
            v.rotation = v.rotation + v.speed * 0.05 * dt
        else
          v.rotation = math.pi
        end
    end
      if(v.tempPosition < gh * 0.615) then
        table.remove(listOfArrows, i)
        ScoreManager.destroyednotes = ScoreManager.destroyednotes + 1
        if (v.type == 1) then
          if (Player.direction == 2) then
            SoundManager.hitsrc:play()
            ScoreManager.AddScore("perfect")
          else
            SoundManager.misssrc:play()
            ScoreManager.AddScore("miss")
          end
        elseif (v.type == 2) then
          if (Player.direction == 4) then
            SoundManager.hitsrc:play()
            ScoreManager.AddScore("perfect")
          else
            SoundManager.misssrc:play()
            ScoreManager.AddScore("miss")
          end
        elseif (v.type == 3) then
          if (Player.direction == 2) then
            SoundManager.misssrc:play()
            ScoreManager.AddScore("bad")
          end
        end
      end

    elseif (v.direction == 2) then
    v.tempPosition = v.tempPosition + v.speed * dt
    if(v.tempPosition > gh * 0.185) and v.type == 2 then
      if(v.rotation < math.pi) then
          v.rotation = v.rotation + v.speed * 0.05 * dt
      else
        v.rotation = math.pi
      end
    end
    if(v.tempPosition > gh * 0.385) then
      table.remove(listOfArrows, i)
      ScoreManager.destroyednotes = ScoreManager.destroyednotes + 1
      
      if (v.type == 1) then
        if (Player.direction == 4) then
          SoundManager.hitsrc:play()
          ScoreManager.AddScore("perfect")
        else
          SoundManager.misssrc:play()
          ScoreManager.AddScore("miss")
        end
      elseif (v.type == 2) then
        if (Player.direction == 2) then
          SoundManager.hitsrc:play()
          ScoreManager.AddScore("perfect")
        else
          SoundManager.misssrc:play()
          ScoreManager.AddScore("miss")
        end
      elseif (v.type == 3) then
        if (Player.direction == 4) then
            SoundManager.misssrc:play()
            ScoreManager.AddScore("bad")
        end
      end
    end

  elseif (v.direction == 1) then
    v.tempPosition = v.tempPosition - v.speed * dt
    if(v.tempPosition < gw * 0.675) and v.type == 2 then
      if(v.rotation < math.pi) then
          v.rotation = v.rotation + v.speed * 0.05 * dt
      else
        v.rotation = math.pi
      end
    end
    if(v.tempPosition < gw * 0.575) then
      table.remove(listOfArrows, i)
      ScoreManager.destroyednotes = ScoreManager.destroyednotes + 1
              
      if (v.type == 1) then
        if (Player.direction == 3) then
          SoundManager.hitsrc:play()
          ScoreManager.AddScore("perfect")
        else
          SoundManager.misssrc:play()
          ScoreManager.AddScore("miss")
        end
      elseif (v.type == 2) then
        if (Player.direction == 1) then
          SoundManager.hitsrc:play()
          ScoreManager.AddScore("perfect")
        else
          SoundManager.misssrc:play()
          ScoreManager.AddScore("miss")
        end
      elseif (v.type == 3) then
        if (Player.direction == 3) then
          SoundManager.misssrc:play()
          ScoreManager.AddScore("bad")
        end
      end
    end

  elseif (v.direction == 3) then
  v.tempPosition = v.tempPosition + v.speed * dt
  if(v.tempPosition > gw * 0.325) and v.type == 2 then
    if(v.rotation < math.pi) then
        v.rotation = v.rotation + v.speed * 0.05 * dt
    else
      v.rotation = math.pi
    end
  end
  if(v.tempPosition > gw * 0.425) then
      table.remove(listOfArrows, i)
      ScoreManager.destroyednotes = ScoreManager.destroyednotes + 1
      
      if (v.type == 1) then
        if (Player.direction == 1) then
          SoundManager.hitsrc:play()
          ScoreManager.AddScore("perfect")
        else
          SoundManager.misssrc:play()
          ScoreManager.AddScore("miss")
        end
      elseif (v.type == 2) then
        if (Player.direction == 3) then
          SoundManager.hitsrc:play()
          ScoreManager.AddScore("perfect")
        else
          SoundManager.misssrc:play()
          ScoreManager.AddScore("miss")
        end
      elseif (v.type == 3) then
        if (Player.direction == 1) then
          SoundManager.misssrc:play()
          ScoreManager.AddScore("bad")
        end
      end
    end
  end
end

function Arrow:draw()

  for i, v in ipairs(listOfArrows) do
    if (v.type == 1) then
      love.graphics.setColor(34 / 255, 150 / 255, 227 / 255, 1)
    elseif (v.type == 2) then
        love.graphics.setColor(219 / 255, 130 / 255, 52 / 255, 1) 
    elseif (v.type == 3) then
        love.graphics.setColor(219 / 255, 52 / 255, 52 / 255, 1)
    end

  if (v.direction == 4) then
    love.graphics.push()
    love.graphics.translate(gw / 2, gh / 2)
    love.graphics.rotate(v.rotation)
    love.graphics.translate(gw / 2 * -1, gh / 2 * -1)
    love.graphics.polygon('fill', gw / 2, -4 + v.tempPosition,
                          gw / 2 + 40, 35 + v.tempPosition,
                          gw / 2 + 20, 55 + v.tempPosition,
                          gw / 2, 35 + v.tempPosition,
                          gw / 2 - 20, 55 + v.tempPosition,
                          gw / 2 - 40, 35 + v.tempPosition)
                          
    love.graphics.setLineWidth(5)
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.line(gw / 2, -4 + v.tempPosition,
                          gw / 2 + 40, 35 + v.tempPosition,
                          gw / 2 + 20, 55 + v.tempPosition,
                          gw / 2, 35 + v.tempPosition,
                          gw / 2 - 20, 55 + v.tempPosition,
                          gw / 2 - 40, 35 + v.tempPosition,
                          gw / 2, -4 + v.tempPosition)
    love.graphics.pop()

  elseif (v.direction == 2) then
    love.graphics.push()
    love.graphics.translate(gw / 2, gh / 2)
    love.graphics.rotate(v.rotation)
    love.graphics.translate(gw / 2 * -1, gh / 2 * -1)
    love.graphics.polygon('fill', gw / 2, 4 + v.tempPosition,
                          gw / 2 + 40, -35 + v.tempPosition,
                          gw / 2 + 20, -55 + v.tempPosition,
                          gw / 2, -35 + v.tempPosition,
                          gw / 2 - 20, -55 + v.tempPosition,
                          gw / 2 - 40, -35 + v.tempPosition)
    love.graphics.setLineWidth(5)
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.line(gw / 2, 4 + v.tempPosition,
                          gw / 2 + 40, -35 + v.tempPosition,
                          gw / 2 + 20, -55 + v.tempPosition,
                          gw / 2, -35 + v.tempPosition,
                          gw / 2 - 20, -55 + v.tempPosition,
                          gw / 2 - 40, -35 + v.tempPosition,
                          gw / 2, 4 + v.tempPosition)
    love.graphics.pop()

  elseif (v.direction == 1) then
    love.graphics.push()
    love.graphics.translate(gw / 2, gh / 2)
    love.graphics.rotate(v.rotation)
    love.graphics.translate(gw / 2 * -1, gh / 2 * -1)
    love.graphics.polygon('fill', -26 + v.tempPosition, gh / 2,
                          13 + v.tempPosition, gh / 2 + 40,
                          33 + v.tempPosition, gh / 2 + 20,
                          13 + v.tempPosition, gh / 2,
                          33 + v.tempPosition, gh / 2 - 20,
                          13 + v.tempPosition, gh / 2 - 40)
    love.graphics.setLineWidth(5)
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.line(-26 + v.tempPosition, gh / 2,
                          13 + v.tempPosition, gh / 2 + 40,
                          33 + v.tempPosition, gh / 2 + 20,
                          13 + v.tempPosition, gh / 2,
                          33 + v.tempPosition, gh / 2 - 20,
                          13 + v.tempPosition, gh / 2 - 40,
                          -26 + v.tempPosition, gh / 2)
    love.graphics.pop()

  elseif (v.direction == 3) then
    love.graphics.push()
    love.graphics.translate(gw / 2, gh / 2)
    love.graphics.rotate(v.rotation)
    love.graphics.translate(gw / 2 * -1, gh / 2 * -1)

    love.graphics.polygon('fill', 26 + v.tempPosition, gh / 2,
                          -13 + v.tempPosition, gh / 2 + 40,
                          -33 + v.tempPosition, gh / 2 + 20,
                          -13 + v.tempPosition, gh / 2,
                          -33 + v.tempPosition, gh / 2 - 20,
                          -13 + v.tempPosition, gh / 2 - 40)
    love.graphics.setLineWidth(5)
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.line(26 + v.tempPosition, gh / 2,
                          -13 + v.tempPosition, gh / 2 + 40,
                          -33 + v.tempPosition, gh / 2 + 20,
                          -13 + v.tempPosition, gh / 2,
                          -33 + v.tempPosition, gh / 2 - 20,
                          -13 + v.tempPosition, gh / 2 - 40,
                          26 + v.tempPosition, gh / 2)
      love.graphics.pop()
      end
    end
  end
end

return Arrow
