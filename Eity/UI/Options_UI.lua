require 'simple-slider'

Options_UI = {}

local smallFont
local bigFont

function Options_UI:load()
  bigFont = love.graphics.newFont("Assets/roboto.ttf", 124)
  smallFont = love.graphics.newFont("Assets/roboto.ttf", 24)
  backgroundDimSlider = newSlider(gw * 0.56, gh / 2 - 200, gw * 0.15, 0.5, 0, 1, function (v) GameManager.setBackgroundDim(v) end)
  
  mainVolumeSlider = newSlider(gw * 0.56, gh / 2 + 100, gw * 0.15, 1, 0, 2, function (v) love.audio.setVolume(v) end)
  musicVolumeSlider = newSlider(gw * 0.56, gh / 2 + 175, gw * 0.15, 0.05, 0, 0.1, function (v) SoundManager:SetMusicVolume(v) end)
  effectsVolumeSlider = newSlider(gw * 0.56, gh / 2 + 250, gw * 0.15, 0.05, 0, 0.1, function (v) SoundManager:SetEffectsVolume(v) end)
end

function Options_UI:update(dt)
  backgroundDimSlider:update()
  mainVolumeSlider:update()
  musicVolumeSlider:update()
  effectsVolumeSlider:update()
end

function Options_UI:draw()
  DrawOptionsButtons()
  backgroundDimSlider:draw()
  mainVolumeSlider:draw()
  musicVolumeSlider:draw()
  effectsVolumeSlider:draw()
end

function DrawOptionsButtons()  
  love.graphics.setFont(smallFont)
  love.graphics.setLineWidth(6) 
  
  love.graphics.setColor(Colors.getBlueColor())
  love.graphics.rectangle('fill', gw * 0.54, gh / 2 + 300, gw * 0.1, 50, 15)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.rectangle('line', gw * 0.54, gh / 2 + 300, gw * 0.1, 50, 15)
  love.graphics.printf("Back", gw * 0.54, gh / 2 + 313, gw * 0.1, "center")
  
  love.graphics.setColor(Colors.getPurpleColor())
  love.graphics.rectangle('fill', gw * 0.38, gh / 2 - 375, gw * 0.1, 50, 15)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.rectangle('line', gw * 0.38, gh / 2 - 375, gw * 0.1, 50, 15)
  love.graphics.printf("General", gw * 0.38, gh / 2 - 363, gw * 0.1, "center")
    
  love.graphics.setColor(0, 0, 0, 0.4)
  love.graphics.rectangle('fill', gw * 0.35, gh / 2 - 300, gw * 0.3, 50, 15)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.rectangle('line', gw * 0.35, gh / 2 - 300, gw * 0.3, 50, 15)
  love.graphics.printf("Show FPS", gw * 0.36, gh / 2 - 288, gw * 0.3, "left")
  love.graphics.circle('line', gw * 0.63, gh / 2 - 275, 16, 4)
  love.graphics.setColor(Colors.getGreenColor())
  
  if isEnabledFPS then
    love.graphics.circle('fill', gw * 0.63, gh / 2 - 275, 8, 4)
  end
  
  
  love.graphics.setColor(0, 0, 0, 0.4)
  love.graphics.rectangle('fill', gw * 0.35, gh / 2 - 225, gw * 0.3, 50, 15)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.rectangle('line', gw * 0.35, gh / 2 - 225, gw * 0.3, 50, 15)
  love.graphics.printf("Background dim", gw * 0.36, gh / 2 - 213, gw * 0.3, "left")
  
  
  love.graphics.setColor(Colors.getGreenColor())
  love.graphics.rectangle('fill', gw * 0.35, gh / 2 - 150, gw * 0.3, 50, 15)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.rectangle('line', gw * 0.35, gh / 2 - 150, gw * 0.3, 50, 15)
  love.graphics.printf("Keyboard bindings", 0, gh / 2 - 138, gw, "center")
  
  love.graphics.setColor(Colors.getPurpleColor())
  love.graphics.rectangle('fill', gw * 0.38, gh / 2, gw * 0.1, 50, 15)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.rectangle('line', gw * 0.38, gh / 2, gw * 0.1, 50, 15)
  love.graphics.printf("Volume", gw * 0.38, gh / 2 + 12, gw * 0.1, "center")
    
  love.graphics.setColor(0, 0, 0, 0.4)
  love.graphics.rectangle('fill', gw * 0.35, gh / 2 + 75, gw * 0.3, 50, 15)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.rectangle('line', gw * 0.35, gh / 2 + 75, gw * 0.3, 50, 15)
  love.graphics.printf("Main", gw * 0.36, gh / 2 + 87, 500, "left")
  
  love.graphics.setColor(0, 0, 0, 0.4)
  love.graphics.rectangle('fill', gw * 0.35, gh / 2 + 150, gw * 0.3, 50, 15)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.rectangle('line', gw * 0.35, gh / 2 + 150, gw * 0.3, 50, 15)
  love.graphics.printf("Music", gw * 0.36, gh / 2 + 162, 500, "left")
  
  love.graphics.setColor(0, 0, 0, 0.4)
  love.graphics.rectangle('fill', gw * 0.35, gh / 2 + 225, gw * 0.3, 50, 15)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.rectangle('line', gw * 0.35, gh / 2 + 225, gw * 0.3, 50, 15)
  love.graphics.printf("Effect", gw * 0.36, gh / 2 + 237, 500, "left")


end

return Options_UI
