require 'lib/simple-slider'
require 'objects/button'

Options_UI = {}

local smallFont
local bigFont

local backButton, generalButton, volumeButton, mainButton, musicButton, effectButton, vsyncButton

function Options_UI:load()
  bigFont = love.graphics.newFont("Assets/roboto.ttf", 124)
  smallFont = love.graphics.newFont("Assets/roboto.ttf", 24)
  
  backButton = newButton(gw * 0.54, gh / 2 + 300, gw * 0.1, 50, 15, "Back", Blue, White, White, "center", 0, 10)
  generalButton = newButton(gw * 0.38, gh / 2 - 375, gw * 0.1, 50, 15, "General", Purple, White, White, "center", 0, 10)
  volumeButton = newButton(gw * 0.38, gh / 2, gw * 0.1, 50, 15, "Volume", Purple, White, White, "center", 0, 10)
  mainButton = newButton(gw * 0.35, gh / 2 + 75, gw * 0.3, 50, 15, "Main", GrayOpacity4, White, White, "left", 15, 10)
  musicButton = newButton(gw * 0.35, gh * 0.5 + 150, gw * 0.3, 50, 15, "Music", GrayOpacity4, White, White, "left", 15, 10)
  effectButton = newButton(gw * 0.35, gh / 2 + 225, gw * 0.3, 50, 15, "Effect", GrayOpacity4, White, White, "left", 15, 10)
  vsyncButton = newButton(gw * 0.35, gh / 2 - 300, gw * 0.3, 50, 15, "Enable Vsync", GrayOpacity4, White, White, "left", 15, 10)
  fpsButton = newButton(gw * 0.35, gh / 2 - 225, gw * 0.3, 50, 15, "Show FPS", GrayOpacity4, White, White, "left", 15, 10)
  backroundDimButton = newButton(gw * 0.35, gh / 2 - 150, gw * 0.3, 50, 15, "Background dim", GrayOpacity4, White, White, "left", 15, 10)


  backgroundDimSlider = newSlider(gw * 0.56, gh / 2 - 125, gw * 0.15, 0.5, 0, 1, function (v) GameManager.setBackgroundDim(v) end)
  
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
  DrawButtons()
  DrawSliders()
end

function DrawSliders()
  backgroundDimSlider:draw()
  mainVolumeSlider:draw()
  musicVolumeSlider:draw()
  effectsVolumeSlider:draw()
end

function DrawButtons()  
  love.graphics.setFont(smallFont)
  love.graphics.setLineWidth(6)   
  backButton:draw()
  generalButton:draw()  
    
  vsyncButton:draw()
  love.graphics.circle('line', gw * 0.63, gh / 2 - 275, 16, 4)
  if isEnabledVSync then
    love.graphics.setColor(Green)
    love.graphics.circle('fill', gw * 0.63, gh / 2 - 275, 8, 4)
  end
      
  fpsButton:draw()
  love.graphics.circle('line', gw * 0.63, gh / 2 - 200, 16, 4)
  if isEnabledFPS then
    love.graphics.setColor(Green)
    love.graphics.circle('fill', gw * 0.63, gh / 2 - 200, 8, 4)
  end
  
  backroundDimButton:draw()
  volumeButton:draw()
  mainButton:draw()
  musicButton:draw()
  effectButton:draw()
  --[[
  love.graphics.setColor(Colors.getGreenColor())
  love.graphics.rectangle('fill', gw * 0.35, gh / 2 - 75, gw * 0.3, 50, 15)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.rectangle('line', gw * 0.35, gh / 2 - 75, gw * 0.3, 50, 15)
  love.graphics.printf("Keyboard bindings", 0, gh / 2 - 63, gw, "center")
  ]]

end

return Options_UI
