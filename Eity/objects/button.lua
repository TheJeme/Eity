local button = {}
button.__index = button

local hoverButtonOver

function newButton(x, y, width, height, corner, text, inlineColor, normalOutlineColor, highlightOutlineColor, textAlign, ox, oy, func)
  local b = {}
  b.x = x
  b.y = y
  b.width = width
  b.height = height
  b.corner = corner
  b.text = text
  b.inlineColor = inlineColor
  b.normalOutlineColor = normalOutlineColor
  b.highlightOutlineColor = highlightOutlineColor
  b.textAlign = textAlign or "center"
  b.ox = ox or 0
  b.oy = oy or 0
  b.func = func
  b.activeOutlineColor = normalOutlineColor
  
  return setmetatable(b, button)
end

function button:update(dt)
  self.isMouseOnButton = mx > self.x and mx < self.x + self.width and
                          my > self.y and my < self.y + self.height
                          
                          
  if self.isMouseOnButton then
    self.activeOutlineColor = self.highlightOutlineColor
    if not self.hoverButtonOver then
      self.hoverButtonOver = true
      soundManager.ButtonOver:play()
    end
  else
    self.hoverButtonOver = false
    self.activeOutlineColor = self.normalOutlineColor
  end
  
end

function button:draw()
  love.graphics.setColor(self.inlineColor)
  love.graphics.rectangle('fill', self.x, self.y, self.width, self.height, self.corner)
  love.graphics.setColor(self.activeOutlineColor)
  love.graphics.rectangle('line', self.x, self.y, self.width, self.height, self.corner)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf(self.text, self.x + self.ox, self.y + self.oy, self.width, self.textAlign)
end

function button:mousepressed(x, y, button)
  if self.isMouseOnButton and button == 1 then
    self.func()
    soundManager.ButtonHit:play()
  end
end
