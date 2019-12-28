Options_UI = {}

local smallFont
local bigFont

function Options_UI:load()
  bigFont = love.graphics.newFont("Assets/roboto.ttf", 124)
  smallFont = love.graphics.newFont("Assets/roboto.ttf", 24)
end

function Options_UI:update(dt)
  
end

function Options_UI:draw()
  DrawOptionsButtons()
end

function DrawOptionsButtons()  
  love.graphics.setFont(smallFont)
  love.graphics.setLineWidth(6) 
  
  love.graphics.setColor(9 / 255, 132 / 255, 227 / 255, 1)
  love.graphics.rectangle('fill', gw / 2 + 100, gh / 2 + 300, 150, 50, 15)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.rectangle('line', gw / 2 + 100, gh / 2 + 300, 150, 50, 15)
  love.graphics.printf("Back", gw / 3 + 245, gh / 2 + 313, 500, "center")
  
  love.graphics.setColor(108 / 255, 92 / 255, 231 / 255, 1)
  love.graphics.rectangle('fill', gw / 2 - 250, gh / 2 - 375, 150, 50, 15)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.rectangle('line', gw / 2 - 250, gh / 2 - 375, 150, 50, 15)
  love.graphics.printf("General", gw / 3 - 105, gh / 2 - 363, 500, "center")
    
  love.graphics.setColor(0, 0, 0, 0.4)
  love.graphics.rectangle('fill', gw / 3 + 50, gh / 2 - 300, gw / 3 - 100, 50, 15)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.rectangle('line', gw / 3 + 50, gh / 2 - 300, gw / 3 - 100, 50, 15)
  love.graphics.printf("Show FPS", gw / 3 + 65, gh / 2 - 288, 500, "left")
  love.graphics.circle('line', gw / 3 + 50 + gw / 3 - 135, gh / 2 - 300 + 25, 16, 4)
  love.graphics.setColor(0, 184 / 255, 148 / 255, 1)
  love.graphics.circle('fill', gw / 3 + 50 + gw / 3 - 135, gh / 2 - 300 + 25, 8, 4)
  
  love.graphics.setColor(0, 0, 0, 0.4)
  love.graphics.rectangle('fill', gw / 3 + 50, gh / 2 - 225, gw / 3 - 100, 50, 15)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.rectangle('line', gw / 3 + 50, gh / 2 - 225, gw / 3 - 100, 50, 15)
  love.graphics.printf("Background dim", gw / 3 + 65, gh / 2 - 213, 500, "left")
  love.graphics.line(gw / 3 + 350, gh / 3 - 20, gw / 3 + 550, gh / 3 - 20)
  love.graphics.circle('fill', gw / 3 + 50 + gw / 3 - 135, gh / 2 - 225 + 25, 14, 4)
  love.graphics.setColor(0, 184 / 255, 148 / 255, 1)
  love.graphics.circle('fill', gw / 3 + 50 + gw / 3 - 135, gh / 2 - 225 + 25, 7, 4)
  
  
  love.graphics.setColor(0, 184 / 255, 148 / 255, 1)
  love.graphics.rectangle('fill', gw / 3 + 50, gh / 2 - 150, gw / 3 - 100, 50, 15)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.rectangle('line', gw / 3 + 50, gh / 2 - 150, gw / 3 - 100, 50, 15)
  love.graphics.printf("Keyboard bindings", gw / 3 + 85, gh / 2 - 138, 500, "center")
  
  love.graphics.setColor(108 / 255, 92 / 255, 231 / 255, 1)
  love.graphics.rectangle('fill', gw / 2 - 250, gh / 2, 150, 50, 15)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.rectangle('line', gw / 2 - 250, gh / 2, 150, 50, 15)
  love.graphics.printf("Volume", gw / 3 - 105, gh / 2 + 12, 500, "center")
    
  love.graphics.setColor(0, 0, 0, 0.4)
  love.graphics.rectangle('fill', gw / 3 + 50, gh / 2 + 75, gw / 3 - 100, 50, 15)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.rectangle('line', gw / 3 + 50, gh / 2 + 75, gw / 3 - 100, 50, 15)
  love.graphics.printf("Main", gw / 3 + 65, gh / 2 + 87, 500, "left")
  
  love.graphics.setColor(0, 0, 0, 0.4)
  love.graphics.rectangle('fill', gw / 3 + 50, gh / 2 + 150, gw / 3 - 100, 50, 15)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.rectangle('line', gw / 3 + 50, gh / 2 + 150, gw / 3 - 100, 50, 15)
  love.graphics.printf("Music", gw / 3 + 65, gh / 2 + 162, 500, "left")
  
  love.graphics.setColor(0, 0, 0, 0.4)
  love.graphics.rectangle('fill', gw / 3 + 50, gh / 2 + 225, gw / 3 - 100, 50, 15)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.rectangle('line', gw / 3 + 50, gh / 2 + 225, gw / 3 - 100, 50, 15)
  love.graphics.printf("Effect", gw / 3 + 65, gh / 2 + 237, 500, "left")


end

return Options_UI
