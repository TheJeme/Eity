Slider = {}

listOfSliders = {}

function createSlider(type, direction, speed, length)
  slider = {}
  slider.type = type -- normal, reverse, bad --
  slider.direction = direction -- 1 = left, 2 = down, 3 = right, 4 = up  --
  if (direction == 1) then
    slider.tempPosition = 613
  elseif (direction == 2) then
    slider.tempPosition = -490
  elseif (direction == 3) then
    slider.tempPosition = -1307
  elseif (direction == 4) then
    slider.tempPosition = 590
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
  
  hitsrc = love.audio.newSource("hit.wav", "static")
  hitSlidersrc = love.audio.newSource("slider.wav", "static")
  misssrc = love.audio.newSource("miss.wav", "static")
  hitsrc:setVolume(0.5)
  hitSlidersrc:setVolume(0.5)
  misssrc:setVolume(0.5)
end

function Slider:update(dt)
  for i, v in ipairs(listOfSliders) do

    if (v.direction == 4) then
    v.tempPosition = v.tempPosition - v.speed * dt
    if(v.tempPosition < 110 + 200) and v.type == 2 then
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
            if((v.type == 1 and Player.direction == 2) or (v.type == 3 and Player.direction == 2) or (v.type == 2 and Player.direction == 4)) then
              v.scoreLength = v.scoreLength - v.speed * dt
              hitSlidersrc:play()
            end
          else
            table.remove(listOfSliders, i)
            if((v.scoreLength <= 0 and v.type == 1) or (v.scoreLength <= 0 and v.type == 2)) then
              ScoreManager.AddScore("sliderStart")
            elseif ((v.scoreLength < v.maxlength and v.type == 3)) then
              misssrc:play()
              ScoreManager.AddScore("bad")
            end

            if (v.type == 1) then
              if (Player.direction == 2) then
                hitsrc:play()
                ScoreManager.AddScore("sliderEnd")
              else
                misssrc:play()
                ScoreManager.ResetCombo()
              end
            elseif (v.type == 2) then
              if (Player.direction == 4) then
                hitsrc:play()
                ScoreManager.AddScore("sliderEnd")
              else
                misssrc:play()
                ScoreManager.ResetCombo()
              end
            end
          end
        end

    elseif (v.direction == 2) then
    v.tempPosition = v.tempPosition - v.speed * dt
    if(v.tempPosition < -960 + 200) and v.type == 2 then
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
        if((v.type == 1 and Player.direction == 4) or (v.type == 3 and Player.direction == 4) or (v.type == 2 and Player.direction == 2)) then
          v.scoreLength = v.scoreLength - v.speed * dt
          hitSlidersrc:play()
        end
        else
          table.remove(listOfSliders, i)

          if((v.scoreLength <= 0 and v.type == 1) or (v.scoreLength <= 0 and v.type == 2)) then
            ScoreManager.AddScore("sliderStart")
          elseif ((v.scoreLength < v.maxlength and v.type == 3)) then
            misssrc:play()
            ScoreManager.AddScore("bad")
          end

          if (v.type == 1) then
            if (Player.direction == 4) then
              hitsrc:play()
              ScoreManager.AddScore("sliderEnd")
            else
              misssrc:play()
              ScoreManager.ResetCombo()
            end
          elseif (v.type == 2) then
            if (Player.direction == 2) then
              hitsrc:play()
              ScoreManager.AddScore("sliderEnd")
            else
              misssrc:play()
              ScoreManager.ResetCombo()
            end
          end
        end
      end

    elseif (v.direction == 1) then
    v.tempPosition = v.tempPosition - v.speed * dt
    if(v.tempPosition < 135 + 200) and v.type == 2 then
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
          if((v.type == 1 and Player.direction == 3) or (v.type == 3 and Player.direction == 3) or (v.type == 2 and Player.direction == 1)) then
            v.scoreLength = v.scoreLength - v.speed * dt
            hitSlidersrc:play()
          end
        else
          table.remove(listOfSliders, i)

          if((v.scoreLength <= 0 and v.type == 1) or (v.scoreLength <= 0 and v.type == 2)) then
            ScoreManager.AddScore("sliderStart")
          elseif ((v.scoreLength < v.maxlength and v.type == 3)) then
            misssrc:play()
            ScoreManager.AddScore("bad")
          end

          if (v.type == 1) then
            if (Player.direction == 3) then
              hitsrc:play()
              ScoreManager.AddScore("sliderEnd")
            else
              misssrc:play()
              ScoreManager.ResetCombo()
            end
          elseif (v.type == 2) then
            if (Player.direction == 1) then
              hitsrc:play()
              ScoreManager.AddScore("sliderEnd")
            else
              misssrc:play()
              ScoreManager.ResetCombo()
            end
          end
        end
      end

  elseif (v.direction == 3) then
  v.tempPosition = v.tempPosition - v.speed * dt
  if(v.tempPosition < -1785 + 200) and v.type == 2 then
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
        if((v.type == 1 and Player.direction == 1) or (v.type == 3 and Player.direction == 1) or (v.type == 2 and Player.direction == 3)) then
          v.scoreLength = v.scoreLength - v.speed * dt
          hitSlidersrc:play()
        end
      else
        table.remove(listOfSliders, i)

        if((v.scoreLength <= 0 and v.type == 1) or (v.scoreLength <= 0 and v.type == 2)) then
          ScoreManager.AddScore("sliderStart")
        elseif ((v.scoreLength < v.maxlength and v.type == 3)) then
          misssrc:play()
          ScoreManager.AddScore("bad")
        end

        if (v.type == 1) then
          if (Player.direction == 1) then
            hitsrc:play()
            ScoreManager.AddScore("sliderEnd")
          else
            misssrc:play()
            ScoreManager.ResetCombo()
          end
        elseif (v.type == 2) then
          if (Player.direction == 3) then
            hitsrc:play()
            ScoreManager.AddScore("sliderEnd")
          else
            misssrc:play()
            ScoreManager.ResetCombo()
          end
        end
      end
    end
  end
end

function Slider:draw()
  for i, v in ipairs(listOfSliders) do
  if (v.direction == 4) then
    love.graphics.push()
    love.graphics.translate(gw / 2, gh / 2)
    love.graphics.rotate(v.rotation)
    love.graphics.translate(gw / 2 * -1, gh / 2 * -1)

    love.graphics.setColor(0.25, 0.25, 0.25, 1)
    love.graphics.rectangle('fill', gw / 2 - 40, gh / 2 + 35 + v.tempPosition, 80, v.length)

    if (v.type == 1) then
      love.graphics.setColor(34 / 255, 150 / 255, 227 / 255, 1)

    elseif (v.type == 2) then
        love.graphics.setColor(219 / 255, 130 / 255, 52 / 255, 1)

    elseif (v.type == 3) then
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


    love.graphics.setLineWidth(5)
    love.graphics.setColor(1, 1, 1, 1)

    love.graphics.line(gw / 2, gh / 2 - 4 + v.tempPosition,
                          gw / 2 + 40, gh / 2 + 35 + v.tempPosition,
                          gw / 2 + 40, gh / 2 + 35 + v.tempPosition + v.length,
                          gw / 2 + 20, gh / 2 + 55 + v.tempPosition + v.length,
                          gw / 2, gh / 2 + 35 + v.tempPosition + v.length,
                          gw / 2 - 20, gh / 2 + 55 + v.tempPosition + v.length,
                          gw / 2 - 40, gh / 2 + 35 + v.tempPosition + v.length,
                          gw / 2 - 40, gh / 2 + 35 + v.tempPosition,
                          gw / 2, gh / 2 - 4 + v.tempPosition)
      love.graphics.pop()
      elseif (v.direction == 2) then
        love.graphics.push()
        love.graphics.translate(gw / 2, gh / 2)
        love.graphics.rotate(v.rotation)
        love.graphics.translate(gw / 2 * -1, gh / 2 * -1)

        love.graphics.setColor(0.25, 0.25, 0.25, 1)
        love.graphics.rectangle('fill', gw / 2 - 40, (gh / 2 + 35 + v.tempPosition + v.length) * -1, 80, v.length)

        if (v.type == 1) then
          love.graphics.setColor(34 / 255, 150 / 255, 227 / 255, 1)

        elseif (v.type == 2) then
            love.graphics.setColor(219 / 255, 130 / 255, 52 / 255, 1)

        elseif (v.type == 3) then
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


      love.graphics.setLineWidth(5)
      love.graphics.setColor(1, 1, 1, 1)

      love.graphics.line(gw / 2, (gh / 2 - 4 + v.tempPosition) * -1,
                            gw / 2 + 40, (gh / 2 + 35 + v.tempPosition) * -1,
                            gw / 2 + 40, (gh / 2 + 35 + v.tempPosition + v.length) * -1,
                            gw / 2 + 20, (gh / 2 + 55 + v.tempPosition + v.length) * -1,
                            gw / 2, (gh / 2 + 35 + v.tempPosition + v.length) * -1,
                            gw / 2 - 20, (gh / 2 + 55 + v.tempPosition + v.length) * -1,
                            gw / 2 - 40, (gh / 2 + 35 + v.tempPosition + v.length) * -1,
                            gw / 2 - 40, (gh / 2 + 35 + v.tempPosition) * -1,
                            gw / 2, (gh / 2 - 4 + v.tempPosition) * -1)

      love.graphics.pop()
      elseif (v.direction == 1) then
        love.graphics.push()
        love.graphics.translate(gw / 2, gh / 2)
        love.graphics.rotate(v.rotation)
        love.graphics.translate(gw / 2 * -1, gh / 2 * -1)

        love.graphics.setColor(0.25, 0.25, 0.25, 1)
        love.graphics.rectangle('fill', gw / 2 + 13 + v.tempPosition, gh / 2 - 40, v.length, 80)

        if (v.type == 1) then
          love.graphics.setColor(34 / 255, 150 / 255, 227 / 255, 1)

        elseif (v.type == 2) then
            love.graphics.setColor(219 / 255, 130 / 255, 52 / 255, 1)

        elseif (v.type == 3) then
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
        love.graphics.setLineWidth(5)
        love.graphics.setColor(1, 1, 1, 1)

        love.graphics.line(gw / 2 - 26 + v.tempPosition , gh / 2,
                              gw / 2 + 13 + v.tempPosition, gh / 2 + 40,
                              gw / 2 + 13 + v.tempPosition + v.length, gh / 2 + 40,
                              gw / 2 + 33 + v.tempPosition + v.length, gh / 2 + 20,
                              gw / 2 + 13 + v.tempPosition + v.length, gh / 2,
                              gw / 2 + 33 + v.tempPosition + v.length, gh / 2 - 20,
                              gw / 2 + 13 + v.tempPosition + v.length, gh / 2 - 40,
                              gw / 2 + 13 + v.tempPosition, gh / 2 - 40,
                              gw / 2 - 26 + v.tempPosition, gh / 2)
        love.graphics.pop()

        elseif (v.direction == 3) then
        love.graphics.push()
        love.graphics.translate(gw / 2, gh / 2)
        love.graphics.rotate(v.rotation)
        love.graphics.translate(gw / 2 * -1, gh / 2 * -1)

        love.graphics.setColor(0.25, 0.25, 0.25, 1)
        love.graphics.rectangle('fill', (gw / 2 + 13 + v.tempPosition + v.length) * -1, gh / 2 - 40, v.length, 80)

        if (v.type == 1) then
          love.graphics.setColor(34 / 255, 150 / 255, 227 / 255, 1)

        elseif (v.type == 2) then
            love.graphics.setColor(219 / 255, 130 / 255, 52 / 255, 1)

        elseif (v.type == 3) then
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

      love.graphics.setLineWidth(5)
      love.graphics.setColor(1, 1, 1, 1)

      love.graphics.line((gw / 2 - 26 + v.tempPosition) * -1, gh / 2,
                            (gw / 2 + 13 + v.tempPosition) * -1, gh / 2 + 40,
                            (gw / 2 + 13 + v.tempPosition + v.length) * -1, gh / 2 + 40,
                            (gw / 2 + 33 + v.tempPosition + v.length) * -1, gh / 2 + 20,
                            (gw / 2 + 13 + v.tempPosition + v.length) * -1, gh / 2,
                            (gw / 2 + 33 + v.tempPosition + v.length) * -1, gh / 2 - 20,
                            (gw / 2 + 13 + v.tempPosition + v.length) * -1, gh / 2 - 40,
                            (gw / 2 + 13 + v.tempPosition) * -1, gh / 2 - 40,
                            (gw / 2 - 26 + v.tempPosition) * -1, gh / 2)
        love.graphics.pop()
      end
    end
  end
end

return Slider
