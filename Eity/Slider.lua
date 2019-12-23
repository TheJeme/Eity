Slider = {}

listOfSliders = {}

function createSlider(type, direction, speed, length)
  slider = {}
  slider.type = type -- normal, reverse, bad --
  slider.direction = direction -- left, right, down, up --
  if (direction == "up") then
    slider.tempPosition = 590
  elseif (direction == "down") then
    slider.tempPosition = -490
  elseif (direction == "left") then
    slider.tempPosition = 613
  elseif (direction == "right") then
    slider.tempPosition = -1307
  end
  slider.speed = speed
  slider.rotation = 0
  slider.maxlength = length
  slider.length = length
  slider.scoreLength = length

  table.insert(listOfSliders, slider)
end

function Slider:load()
  gw = love.graphics.getWidth()
  gh = love.graphics.getHeight()
end

function Slider:update(dt)
  for i, v in ipairs(listOfSliders) do

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
        v.tempPosition  = 115
          if(v.length > 0) then
            v.length = v.length - v.speed * dt
            if((v.type == "normal" and Player.direction == "down") or (v.type == "bad" and Player.direction == "down") or (v.type == "reverse" and Player.direction == "up")) then
              v.scoreLength = v.scoreLength - v.speed * dt
            end
          else
            table.remove(listOfSliders, i)
            if((v.scoreLength <= 0 and v.type == "normal") or (v.scoreLength <= 0 and v.type == "reverse")) then
              ScoreManager.AddScore("sliderStart")
            elseif ((v.scoreLength < v.maxlength and v.type == "bad")) then
              ScoreManager.AddScore("bad")
            else
              ScoreManager.ResetCombo()
            end

            if (v.type == "normal") then
              if (Player.direction == "down") then
                  ScoreManager.AddScore("sliderEnd")
              else
                ScoreManager.ResetCombo()
              end
            elseif (v.type == "reverse") then
              if (Player.direction == "up") then
                  ScoreManager.AddScore("sliderEnd")
              else
                ScoreManager.ResetCombo()
              end
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
      v.tempPosition  = -965
        if(v.length > 0) then
          v.length = v.length - v.speed * dt
        if((v.type == "normal" and Player.direction == "up") or (v.type == "bad" and Player.direction == "up") or (v.type == "reverse" and Player.direction == "down")) then
          v.scoreLength = v.scoreLength - v.speed * dt
        end
        else
          table.remove(listOfSliders, i)

          if((v.scoreLength <= 0 and v.type == "normal") or (v.scoreLength <= 0 and v.type == "reverse")) then
            ScoreManager.AddScore("sliderStart")
          elseif ((v.scoreLength < v.maxlength and v.type == "bad")) then
            ScoreManager.AddScore("bad")
          else
            ScoreManager.ResetCombo()
          end

          if (v.type == "normal") then
            if (Player.direction == "up") then
                ScoreManager.AddScore("perfect")
            else
              ScoreManager.ResetCombo()
            end
          elseif (v.type == "reverse") then
            if (Player.direction == "down") then
                ScoreManager.AddScore("perfect")
            else
              ScoreManager.ResetCombo()
            end
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
      v.tempPosition  = 138
        if(v.length > 0) then
          v.length = v.length - v.speed * dt
          if((v.type == "normal" and Player.direction == "right") or (v.type == "bad" and Player.direction == "right") or (v.type == "reverse" and Player.direction == "left")) then
            v.scoreLength = v.scoreLength - v.speed * dt
          end
        else
          table.remove(listOfSliders, i)

          if((v.scoreLength <= 0 and v.type == "normal") or (v.scoreLength <= 0 and v.type == "reverse")) then
            ScoreManager.AddScore("sliderStart")
          elseif ((v.scoreLength < v.maxlength and v.type == "bad")) then
            ScoreManager.AddScore("bad")
          else
            ScoreManager.ResetCombo()
          end

          if (v.type == "normal") then
            if (Player.direction == "right") then
                ScoreManager.AddScore("perfect")
            else
              ScoreManager.ResetCombo()
            end
          elseif (v.type == "reverse") then
            if (Player.direction == "left") then
                ScoreManager.AddScore("perfect")
            else
              ScoreManager.ResetCombo()
            end
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
    v.tempPosition  = -1782
      if(v.length > 0) then
        v.length = v.length - v.speed * dt
        if((v.type == "normal" and Player.direction == "left") or (v.type == "bad" and Player.direction == "left") or (v.type == "reverse" and Player.direction == "right")) then
          v.scoreLength = v.scoreLength - v.speed * dt
        end
      else
        table.remove(listOfSliders, i)

        if((v.scoreLength <= 0 and v.type == "normal") or (v.scoreLength <= 0 and v.type == "reverse")) then
          ScoreManager.AddScore("sliderStart")
        elseif ((v.scoreLength < v.maxlength and v.type == "bad")) then
          ScoreManager.AddScore("bad")
        else
          ScoreManager.ResetCombo()
        end

        if (v.type == "normal") then
          if (Player.direction == "left") then
              ScoreManager.AddScore("perfect")
          else
            ScoreManager.ResetCombo()
          end
        elseif (v.type == "reverse") then
          if (Player.direction == "right") then
              ScoreManager.AddScore("perfect")
          else
            ScoreManager.ResetCombo()
          end
        end
      end
    end
  end
end

function Slider:draw()
  for i, v in ipairs(listOfSliders) do
  if (v.direction == "up") then
    love.graphics.push()
    love.graphics.translate(gw / 2, gh / 2)
    love.graphics.rotate(v.rotation)
    love.graphics.translate(gw / 2 * -1, gh / 2 * -1)

    love.graphics.setColor(0.25, 0.25, 0.25, 1)
    love.graphics.rectangle('fill', gw / 2 - 40, gh / 2 + 35 + v.tempPosition, 80, v.length)

    if (v.type == "normal") then
      love.graphics.setColor(34 / 255, 150 / 255, 227 / 255, 1)

    elseif (v.type == "reverse") then
        love.graphics.setColor(219 / 255, 130 / 255, 52 / 255, 1)

    elseif (v.type == "bad") then
        love.graphics.setColor(219 / 255, 52 / 255, 52 / 255, 1)
    end
    love.graphics.polygon('fill', gw / 2, gh / 2 - 4 + v.tempPosition,
                          gw / 2 + 40, gh / 2 + 35 + v.tempPosition,
                          gw / 2 + 20, gh / 2 + 55 + v.tempPosition,
                          gw / 2, gh / 2 + 35 + v.tempPosition,
                          gw / 2 - 20, gh / 2 + 55 + v.tempPosition,
                          gw / 2 - 40, gh / 2 + 35 + v.tempPosition)

    love.graphics.polygon('fill', gw / 2, gh / 2 - 4 + v.tempPosition + v.length,
                          gw / 2 + 40, gh / 2 + 35 + v.tempPosition + v.length,
                          gw / 2 + 20, gh / 2 + 55 + v.tempPosition + v.length,
                          gw / 2, gh / 2 + 35 + v.tempPosition + v.length,
                          gw / 2 - 20, gh / 2 + 55 + v.tempPosition + v.length,
                          gw / 2 - 40, gh / 2 + 35 + v.tempPosition + v.length)
      love.graphics.pop()
      elseif (v.direction == "down") then
        love.graphics.push()
        love.graphics.translate(gw / 2, gh / 2)
        love.graphics.rotate(v.rotation)
        love.graphics.translate(gw / 2 * -1, gh / 2 * -1)

        love.graphics.setColor(0.25, 0.25, 0.25, 1)
        love.graphics.rectangle('fill', gw / 2 - 40, (gh / 2 + 35 + v.tempPosition + v.length) * -1, 80, v.length)

        if (v.type == "normal") then
          love.graphics.setColor(34 / 255, 150 / 255, 227 / 255, 1)

        elseif (v.type == "reverse") then
            love.graphics.setColor(219 / 255, 130 / 255, 52 / 255, 1)

        elseif (v.type == "bad") then
            love.graphics.setColor(219 / 255, 52 / 255, 52 / 255, 1)
        end
        love.graphics.polygon('fill', gw / 2, (gh / 2 - 4 + v.tempPosition) * -1,
                              gw / 2 + 40, (gh / 2 + 35 + v.tempPosition) * -1,
                              gw / 2 + 20, (gh / 2 + 55 + v.tempPosition) * -1,
                              gw / 2, (gh / 2 + 35 + v.tempPosition) * -1,
                              gw / 2 - 20, (gh / 2 + 55 + v.tempPosition) * -1,
                              gw / 2 - 40, (gh / 2 + 35 + v.tempPosition) * -1)

        love.graphics.polygon('fill', gw / 2, (gh / 2 - 4 + v.tempPosition + v.length) * -1,
                              gw / 2 + 40, (gh / 2 + 35 + v.tempPosition + v.length) * -1,
                              gw / 2 + 20, (gh / 2 + 55 + v.tempPosition + v.length) * -1,
                              gw / 2, (gh / 2 + 35 + v.tempPosition + v.length) * -1,
                              gw / 2 - 20, (gh / 2 + 55 + v.tempPosition + v.length) * -1,
                              gw / 2 - 40, (gh / 2 + 35 + v.tempPosition + v.length) * -1)
      love.graphics.pop()
      elseif (v.direction == "left") then
        love.graphics.push()
        love.graphics.translate(gw / 2, gh / 2)
        love.graphics.rotate(v.rotation)
        love.graphics.translate(gw / 2 * -1, gh / 2 * -1)

        love.graphics.setColor(0.25, 0.25, 0.25, 1)
        love.graphics.rectangle('fill', gw / 2 + 13 + v.tempPosition, gh / 2 - 40, v.length, 80)

        if (v.type == "normal") then
          love.graphics.setColor(34 / 255, 150 / 255, 227 / 255, 1)

        elseif (v.type == "reverse") then
            love.graphics.setColor(219 / 255, 130 / 255, 52 / 255, 1)

        elseif (v.type == "bad") then
            love.graphics.setColor(219 / 255, 52 / 255, 52 / 255, 1)
        end

        love.graphics.polygon('fill', gw / 2 - 26 + v.tempPosition , gh / 2,
                              gw / 2 + 13 + v.tempPosition, gh / 2 + 40,
                              gw / 2 + 33 + v.tempPosition, gh / 2 + 20,
                              gw / 2 + 13 + v.tempPosition, gh / 2,
                              gw / 2 + 33 + v.tempPosition, gh / 2 - 20,
                              gw / 2 + 13 + v.tempPosition, gh / 2 - 40)

        love.graphics.polygon('fill', gw / 2 - 26 + v.tempPosition + v.length, gh / 2,
                              gw / 2 + 13 + v.tempPosition + v.length, gh / 2 + 40,
                              gw / 2 + 33 + v.tempPosition + v.length, gh / 2 + 20,
                              gw / 2 + 13 + v.tempPosition + v.length, gh / 2,
                              gw / 2 + 33 + v.tempPosition + v.length, gh / 2 - 20,
                              gw / 2 + 13 + v.tempPosition + v.length, gh / 2 - 40)
        love.graphics.pop()

        elseif (v.direction == "right") then
        love.graphics.push()
        love.graphics.translate(gw / 2, gh / 2)
        love.graphics.rotate(v.rotation)
        love.graphics.translate(gw / 2 * -1, gh / 2 * -1)

        love.graphics.setColor(0.25, 0.25, 0.25, 1)
        love.graphics.rectangle('fill', (gw / 2 + 13 + v.tempPosition + v.length) * -1, gh / 2 - 40, v.length, 80)

        if (v.type == "normal") then
          love.graphics.setColor(34 / 255, 150 / 255, 227 / 255, 1)

        elseif (v.type == "reverse") then
            love.graphics.setColor(219 / 255, 130 / 255, 52 / 255, 1)

        elseif (v.type == "bad") then
            love.graphics.setColor(219 / 255, 52 / 255, 52 / 255, 1)
        end


        love.graphics.polygon('fill', (gw / 2 - 26 + v.tempPosition) * -1, gh / 2,
                              (gw / 2 + 13 + v.tempPosition) * -1, gh / 2 + 40,
                              (gw / 2 + 33 + v.tempPosition) * -1, gh / 2 + 20,
                              (gw / 2 + 13 + v.tempPosition) * -1, gh / 2,
                              (gw / 2 + 33 + v.tempPosition) * -1, gh / 2 - 20,
                              (gw / 2 + 13 + v.tempPosition) * -1, gh / 2 - 40)

        love.graphics.polygon('fill', (gw / 2 - 26 + v.tempPosition + v.length) * -1, gh / 2,
                              (gw / 2 + 13 + v.tempPosition + v.length) * -1, gh / 2 + 40,
                              (gw / 2 + 33 + v.tempPosition + v.length) * -1, gh / 2 + 20,
                              (gw / 2 + 13 + v.tempPosition + v.length) * -1, gh / 2,
                              (gw / 2 + 33 + v.tempPosition + v.length) * -1, gh / 2 - 20,
                              (gw / 2 + 13 + v.tempPosition + v.length) * -1, gh / 2 - 40)
        love.graphics.pop()
      end
    end
  end
end

return Slider
