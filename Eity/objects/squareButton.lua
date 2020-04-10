local squareButton = {}
squareButton.__index = squareButton


function newSquareButton(x, y, radius, text, inlineColor, outlineColor, ox, oy, func)
  local s = {}
  s.x = x
  s.y = y
  s.radius = radius
  s.text = text
  s.inlineColor = inlineColor
  s.outlineColor = outlineColor  
  s.ox = ox or 0
  s.oy = oy or 0
  s.func = func
  
  return setmetatable(s, squareButton)
end


function squareButton:update(dt)
  self.isMouseOnButton = mx > self.x - self.radius * 0.8 and mx < self.x + self.radius * 2 * 0.4 and
                          my > self.y - self.radius * 0.8 and my < self.y + self.radius * 2 * 0.4
end

function squareButton:draw()
  love.graphics.setColor(self.outlineColor)
  love.graphics.circle("line", self.x, self.y, self.radius, 4)
  love.graphics.setColor(self.inlineColor)
  love.graphics.circle("fill", self.x, self.y, self.radius, 4)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf(self.text, self.x - self.radius + self.ox, self.y + self.oy, self.radius * 2, "center")
end

function squareButton:mousepressed(x, y, button)
  if self.isMouseOnButton and button == 1 then
    self.func()
    soundManager.ButtonHit:play()
  end
end
