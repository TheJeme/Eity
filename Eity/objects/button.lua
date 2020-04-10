local button = {}
button.__index = button

local hoverButtonOver

function newButton(x, y, width, height, corner, text, inlineColor, normalOutlineColor, highlightOutlineColor, textAlign, ox, oy)
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
  
  return setmetatable(b, button)
end

function button:update(dt)
  isMouseOnButton = mx > b.x and mx < b.x + b.length and
                          my > b.y and my < b.y + b.height
                          
                          
  if isMouseOnButton then
    hoverButtonOver = true
    SoundManager.ButtonOver:play()
  else
    hoverButtonOver = false
  end
end

function button:draw()
  love.graphics.setColor(self.inlineColor)
  love.graphics.rectangle('fill', self.x, self.y, self.width, self.height, self.corner)
  love.graphics.setColor(self.normalOutlineColor)
  love.graphics.rectangle('line', self.x, self.y, self.width, self.height, self.corner)
  love.graphics.printf(self.text, self.x + self.ox, self.y + self.oy, self.width, self.textAlign)
end
