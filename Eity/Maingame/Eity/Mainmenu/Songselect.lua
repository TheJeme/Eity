Songselect = {}

local smallFont
local bigFont

function Songselect:load()
  bigFont = love.graphics.newFont("Assets/roboto.ttf", 84)
  smallFont = love.graphics.newFont("Assets/roboto.ttf", 24)
  SongBG = love.graphics.newImage("Shelter/BG2.jpg")
  scaleX, scaleY = GameManager:getImageScaleForNewDimensions( SongBG, 1920, 1080 )
end

function Songselect:update(dt)

end

function Songselect:draw()
  Background()  
  BackButton()
  Scores()
  BottomBar()
  
  love.graphics.setFont(smallFont)
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', gw - 520, gh * 0.5, 500, 100, 10)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.rectangle('line', gw - 520, gh * 0.5, 500, 100, 10)
  love.graphics.printf("Shelter", gw - 710, gh * 0.5 + 25, 500, "center")
  

end

function Songselect:mousepressed(x, y,button)
  if state == "Songselect" then
    local isMouseOnPlay = mx > gw - 200 and mx < gw - 200 + 150 and
                            my > gh * 0.94 and my < gh * 0.94 + 50        
                            
    local isMouseOnBack = mx > -1 and mx < gw * 0.12 and         
                            my > gh * 0.92 and my < gh * 0.99 
                            
                            
                            
                                       
    if isMouseOnPlay then
      GameManager.Restart()
      GamestateManager.GameState = "Maingame"
    elseif isMouseOnBack then
      state = "Startmenu"
    end
  end
end

function BottomBar()
  love.graphics.setFont(smallFont)
  love.graphics.setLineWidth(3)
  
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', gw - 800, gh * 0.94, 150, 50, 10)
  love.graphics.setColor(0, 184 / 255, 148 / 255, 1)
  love.graphics.rectangle('line', gw - 800, gh * 0.94, 150, 50, 10)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Modes", gw - 925, gh * 0.95, 400, "center")
  
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', gw - 600, gh * 0.94, 150, 50, 10)
  love.graphics.setColor(0, 184 / 255, 148 / 255, 1)
  love.graphics.rectangle('line', gw - 600, gh * 0.94, 150, 50, 10)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Mods", gw - 725, gh * 0.95, 400, "center")
  
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', gw - 400, gh * 0.94, 150, 50, 10)
  love.graphics.setColor(0, 184 / 255, 148 / 255, 1)
  love.graphics.rectangle('line', gw - 400, gh * 0.94, 150, 50, 10)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Random", gw - 525, gh * 0.95, 400, "center")
  
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', gw - 200, gh * 0.94, 150, 50, 10)
  love.graphics.setColor(0, 184 / 255, 148 / 255, 1)
  love.graphics.rectangle('line', gw - 200, gh * 0.94, 150, 50, 10)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Play", gw - 325, gh * 0.95, 400, "center")
end

function Scores()
  love.graphics.setFont(bigFont)
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', 20, gh / 3 - 200, gw * 0.2, gh / 3 + 300, 15)
    love.graphics.setColor(1, 1, 1, 1)
  love.graphics.rectangle('line', 20, gh / 3 - 200, gw * 0.2, gh / 3 + 300, 15)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Scores", gw * 0.005, gh / 3 - 200, 400, "center")
end

function Background()
  love.graphics.push()
  love.graphics.draw(SongBG, 0, 0, 0, scaleX, scaleY)
  love.graphics.setColor(0.3, 0.3, 0.3, 0.5)
  love.graphics.rectangle('fill', 0, 0, 1920, 1080)
  love.graphics.pop()
  love.graphics.setColor(0, 0, 0, 0.6)
  love.graphics.rectangle('fill', 0, gh * 0.92, gw, gh * 0.08)
end

function BackButton()
  love.graphics.setFont(smallFont)
  love.graphics.setLineWidth(5)
  love.graphics.setColor(9 / 255, 132 / 255, 227 / 255, 1)
  love.graphics.polygon('fill', 0, gh * 0.99,
                      gw * 0.1, gh * 0.99,
                      gw * 0.12, gh * 0.92,
                      0, gh * 0.92)   
                                 
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf("Back", 60, gh * 0.94, 100, "center")
  love.graphics.polygon("fill", 28, gh * 0.955, 60, gh * 0.94, 60, gh * 0.97)
  love.graphics.line(0, gh * 0.99,
          gw * 0.1, gh * 0.99,
          gw * 0.12, gh * 0.92,
          0, gh * 0.92)
end


return Songselect
