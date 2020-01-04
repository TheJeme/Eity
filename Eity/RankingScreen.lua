Rankingscreen = {}

local bigFont
local smallFont
local titleFont
local descFont
local rankingFont

function Rankingscreen:load()
  rankingFont = love.graphics.newFont("Assets/roboto.ttf", 556)
  bigFont = love.graphics.newFont("Assets/roboto.ttf", 78)
  smallFont = love.graphics.newFont("Assets/roboto.ttf", 48)
  titleFont = love.graphics.newFont("Assets/roboto.ttf", 36)
  descFont = love.graphics.newFont("Assets/roboto.ttf", 24)
end

function Rankingscreen:update(dt)
  
end

function Rankingscreen:draw()
  Rankingscreen.Background()
  Rankingscreen.Topbar()
  Rankingscreen.Results()
  Rankingscreen.Ranking()
  Rankingscreen:Buttons()    
end

function Rankingscreen:mousepressed(x, y,button)
  
end

function Rankingscreen:keypressed(key, scancode, isrepeat)
  
end

function Rankingscreen.Background()
  love.graphics.push()
  love.graphics.draw(img, 0, 0, 0, scaleX, scaleY)
  love.graphics.setColor(0.3, 0.3, 0.3, GameManager.backgroundDim)
  love.graphics.rectangle('fill', 0, 0, gw, gh)
  love.graphics.pop()
end

function Rankingscreen.Topbar()
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', 0, 0, gw, gh * 0.1)
  
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.setFont(titleFont)
  love.graphics.printf("Shelter - Porter Robinson & Madeon [Easy]", 0, 0, gw, "left")
  love.graphics.setFont(descFont)
  love.graphics.printf("Played on 17/03/2003 06:34:07", 0, 45, gw, "left")
end

function Rankingscreen.Ranking()
  love.graphics.setFont(bigFont)
  love.graphics.setLineWidth(6) 
  
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', gw * 0.6, gh * 0.15, gw * 0.3, 100, 15)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.rectangle('line', gw * 0.6, gh * 0.15, gw * 0.3, 100, 15)
  love.graphics.printf("Ranking", gw * 0.6, gh * 0.15, gw * 0.3, "center")
  love.graphics.setColor(255 / 255, 215 / 255, 55 / 255, 1)
  love.graphics.setFont(rankingFont)
  love.graphics.printf("S", gw * 0.45, gh * 0.2, gw * 0.6, "center")
end

function Rankingscreen.Results()
  love.graphics.setFont(smallFont)
  love.graphics.setLineWidth(6)
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', 50, gh * 0.15, gw * 0.5, gh * 0.65, 15)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.rectangle('line', 50, gh * 0.15, gw * 0.5, gh * 0.65, 15)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Score " .. string.format("%08d", ScoreManager.score), 50, gh * 0.16, gw / 2, "center")
  Rankingscreen:Blues()   
  Rankingscreen:yellows()
  Rankingscreen:reds()    
  love.graphics.printf("Combo " .. ScoreManager.combo .. "x", 100, gh * 0.7, 450, "left")           
  love.graphics.printf("Accuracy " .. ScoreManager.getAccuracy(), 475, gh * 0.7, 450, "left")                         
                        
end

function Rankingscreen:Buttons()
  love.graphics.setFont(smallFont)
  love.graphics.setLineWidth(6)
  
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', 50, gh * 0.9, 200, 75, 10)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.rectangle('line', 50, gh * 0.9, 200, 75, 10)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Back", 50, gh * 0.9 + 10, 200, "center")


end

function Rankingscreen:Blues()
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("20/103", -26 + 130 + 90, gh / 2 - gh * 0.23, 500, "left")
  
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("15/45", -26 + 600 + 90, gh / 2 - gh * 0.23, 500, "left")
  
  
  love.graphics.setColor(34 / 255, 150 / 255, 227 / 255, 1)
  love.graphics.polygon('fill', -26 + 130, gh / 2 - gh * 0.2,
                        13 + 130, gh / 2 + 40 - gh * 0.2,
                        33 + 130, gh / 2 + 20 - gh * 0.2,
                        13 + 130, gh / 2 - gh * 0.2,
                        33 + 130, gh / 2 - 20 - gh * 0.2,
                        13 + 130, gh / 2 - 40 - gh * 0.2)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.line(-26 + 130, gh / 2 - gh * 0.2,
                        13 + 130, gh / 2 + 40 - gh * 0.2,
                        33 + 130, gh / 2 + 20 - gh * 0.2,
                        13 + 130, gh / 2 - gh * 0.2,
                        33 + 130, gh / 2 - 20 - gh * 0.2,
                        13 + 130, gh / 2 - 40 - gh * 0.2,
                        -26 + 130, gh / 2 - gh * 0.2)
                        
  love.graphics.setColor(0.25, 0.25, 0.25, 1)
  love.graphics.rectangle('fill', 13 + 500, gh / 2 - 40 - gh * 0.2, 100, 80)

  love.graphics.setColor(34 / 255, 150 / 255, 227 / 255, 1)
  love.graphics.polygon('fill', -26 + 500, gh / 2 - gh * 0.2,
                        13 + 500, gh / 2 + 40 - gh * 0.2,
                        33 + 500, gh / 2 + 20 - gh * 0.2,
                        13 + 500, gh / 2 - gh * 0.2,
                        33 + 500, gh / 2 - 20 - gh * 0.2,
                        13 + 500, gh / 2 - 40 - gh * 0.2)
                        
  love.graphics.polygon('fill', -26 + 500 + 100, gh / 2 - gh * 0.2,
                        13 + 500 + 100, gh / 2 + 40 - gh * 0.2,
                        33 + 500 + 100, gh / 2 + 20 - gh * 0.2,
                        13 + 500 + 100, gh / 2 - gh * 0.2,
                        33 + 500 + 100, gh / 2 - 20 - gh * 0.2,
                        13 + 500 + 100, gh / 2 - 40 - gh * 0.2)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.line(-26 + 500, gh / 2 - gh * 0.2,
                        13 + 500, gh / 2 + 40 - gh * 0.2,
                        13 + 500 + 100, gh / 2 + 40 - gh * 0.2,
                        33 + 500 + 100, gh / 2 + 20 - gh * 0.2,
                        13 + 500 + 100, gh / 2 - gh * 0.2,
                        33 + 500 + 100, gh / 2 - 20 - gh * 0.2,
                        13 + 500 + 100, gh / 2 - 40 - gh * 0.2,
                        13 + 500, gh / 2 - 40 - gh * 0.2,
                        -26 + 500, gh / 2 - gh * 0.2)

end

function Rankingscreen:yellows()
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("20/103", -26 + 130 + 90, gh / 2 - gh * 0.08, 500, "left")
  
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("15/45", -26 + 600 + 90, gh / 2 - gh * 0.08, 500, "left")
  
  
  love.graphics.setColor(219 / 255, 130 / 255, 52 / 255, 1)
  love.graphics.polygon('fill', -26 + 130, gh / 2 - gh * 0.05,
                        13 + 130, gh / 2 + 40 - gh * 0.05,
                        33 + 130, gh / 2 + 20 - gh * 0.05,
                        13 + 130, gh / 2 - gh * 0.05,
                        33 + 130, gh / 2 - 20 - gh * 0.05,
                        13 + 130, gh / 2 - 40 - gh * 0.05)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.line(-26 + 130, gh / 2 - gh * 0.05,
                        13 + 130, gh / 2 + 40 - gh * 0.05,
                        33 + 130, gh / 2 + 20 - gh * 0.05,
                        13 + 130, gh / 2 - gh * 0.05,
                        33 + 130, gh / 2 - 20 - gh * 0.05,
                        13 + 130, gh / 2 - 40 - gh * 0.05,
                        -26 + 130, gh / 2 - gh * 0.05)
                        
  love.graphics.setColor(0.25, 0.25, 0.25, 1)
  love.graphics.rectangle('fill', 13 + 500, gh / 2 - 40 - gh * 0.05, 100, 80)

  love.graphics.setColor(219 / 255, 130 / 255, 52 / 255, 1)
  love.graphics.polygon('fill', -26 + 500, gh / 2 - gh * 0.05,
                        13 + 500, gh / 2 + 40 - gh * 0.05,
                        33 + 500, gh / 2 + 20 - gh * 0.05,
                        13 + 500, gh / 2 - gh * 0.05,
                        33 + 500, gh / 2 - 20 - gh * 0.05,
                        13 + 500, gh / 2 - 40 - gh * 0.05)
                        
  love.graphics.polygon('fill', -26 + 500 + 100, gh / 2 - gh * 0.05,
                        13 + 500 + 100, gh / 2 + 40 - gh * 0.05,
                        33 + 500 + 100, gh / 2 + 20 - gh * 0.05,
                        13 + 500 + 100, gh / 2 - gh * 0.05,
                        33 + 500 + 100, gh / 2 - 20 - gh * 0.05,
                        13 + 500 + 100, gh / 2 - 40 - gh * 0.05)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.line(-26 + 500, gh / 2 - gh * 0.05,
                        13 + 500, gh / 2 + 40 - gh * 0.05,
                        13 + 500 + 100, gh / 2 + 40 - gh * 0.05,
                        33 + 500 + 100, gh / 2 + 20 - gh * 0.05,
                        13 + 500 + 100, gh / 2 - gh * 0.05,
                        33 + 500 + 100, gh / 2 - 20 - gh * 0.05,
                        13 + 500 + 100, gh / 2 - 40 - gh * 0.05,
                        13 + 500, gh / 2 - 40 - gh * 0.05,
                        -26 + 500, gh / 2 - gh * 0.05)

end

function Rankingscreen:reds()
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("5x", -26 + 130 + 90, gh / 2 + gh * 0.07, 500, "left")
  
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("12x", -26 + 600 + 90, gh / 2 + gh * 0.07, 500, "left")
  
  
  love.graphics.setColor(219 / 255, 52 / 255, 52 / 255, 1)
  love.graphics.polygon('fill', -26 + 130, gh / 2 + gh * 0.1,
                        13 + 130, gh / 2 + 40 + gh * 0.1,
                        33 + 130, gh / 2 + 20 + gh * 0.1,
                        13 + 130, gh / 2 + gh * 0.1,
                        33 + 130, gh / 2 - 20 + gh * 0.1,
                        13 + 130, gh / 2 - 40 + gh * 0.1)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.line(-26 + 130, gh / 2 + gh * 0.1,
                        13 + 130, gh / 2 + 40 + gh * 0.1,
                        33 + 130, gh / 2 + 20 + gh * 0.1,
                        13 + 130, gh / 2 + gh * 0.1,
                        33 + 130, gh / 2 - 20 + gh * 0.1,
                        13 + 130, gh / 2 - 40 + gh * 0.1,
                        -26 + 130, gh / 2 + gh * 0.1)
                        
  love.graphics.setColor(0.25, 0.25, 0.25, 1)
  love.graphics.rectangle('fill', 13 + 500, gh / 2 - 40 + gh * 0.1, 100, 80)

  love.graphics.setColor(219 / 255, 52 / 255, 52 / 255, 1)
  love.graphics.polygon('fill', -26 + 500, gh / 2 + gh * 0.1,
                        13 + 500, gh / 2 + 40 + gh * 0.1,
                        33 + 500, gh / 2 + 20 + gh * 0.1,
                        13 + 500, gh / 2 + gh * 0.1,
                        33 + 500, gh / 2 - 20 + gh * 0.1,
                        13 + 500, gh / 2 - 40 + gh * 0.1)
                        
  love.graphics.polygon('fill', -26 + 500 + 100, gh / 2 + gh * 0.1,
                        13 + 500 + 100, gh / 2 + 40 + gh * 0.1,
                        33 + 500 + 100, gh / 2 + 20 + gh * 0.1,
                        13 + 500 + 100, gh / 2 + gh * 0.1,
                        33 + 500 + 100, gh / 2 - 20 + gh * 0.1,
                        13 + 500 + 100, gh / 2 - 40 + gh * 0.1)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.line(-26 + 500, gh / 2 + gh * 0.1,
                        13 + 500, gh / 2 + 40 + gh * 0.1,
                        13 + 500 + 100, gh / 2 + 40 + gh * 0.1,
                        33 + 500 + 100, gh / 2 + 20 + gh * 0.1,
                        13 + 500 + 100, gh / 2 + gh * 0.1,
                        33 + 500 + 100, gh / 2 - 20 + gh * 0.1,
                        13 + 500 + 100, gh / 2 - 40 + gh * 0.1,
                        13 + 500, gh / 2 - 40 + gh * 0.1,
                        -26 + 500, gh / 2 + gh * 0.1)

end

return Rankingscreen