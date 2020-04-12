mapList = {}

local bigFont
local smallFont
local smallestFont
local maplist
local scrollY
local selectedMap
local isMouseOnMap

function mapList:load(listOfMaps)
  bigFont = love.graphics.newFont("Assets/roboto.ttf", 84)
  smallFont = love.graphics.newFont("Assets/roboto.ttf", 24)
  smallestFont = love.graphics.newFont("Assets/roboto.ttf", 18)
  maplist = listOfMaps
  scrollY = 0
  selectedMap = 0
  isMouseOnMap = false
end


function mapList:draw()
  for i, v in ipairs(maplist) do
    if (i == selectedMap) then
      love.graphics.setColor(0.1, 0.1, 0.1, 0.9)
      love.graphics.rectangle('fill', gw - 820, scrollY + 100 + 111 * (i - 1), 700, 100, 10)
      love.graphics.setColor(White)
      love.graphics.rectangle('line', gw - 820, scrollY + 100 + 111 * (i - 1), 700, 100, 10)
      love.graphics.setFont(smallFont)
      love.graphics.printf("Shelter", gw - 800, scrollY + 115 + 111 * (i - 1), 700, "left")
      love.graphics.setFont(smallestFont)
      love.graphics.setColor(White)
      love.graphics.printf("Porter Robinson & Madeon", gw - 790, scrollY + 145 + 111 * (i - 1), 700, "left")
      love.graphics.setColor(Blue)
      love.graphics.printf("Easy", gw - 790, scrollY + 165 + 111 * (i - 1), 700, "left")  
    else
      love.graphics.setColor(0.1, 0.1, 0.1, 0.9)
      love.graphics.rectangle('fill', gw - 780, scrollY + 100 + 111 * (i - 1), 660, 100, 10)
      love.graphics.setColor(White)
      love.graphics.rectangle('line', gw - 780, scrollY + 100 + 111 * (i - 1), 660, 100, 10)
      love.graphics.setFont(smallFont)
      love.graphics.printf("Shelter", gw - 760, scrollY + 115 + 111 * (i - 1), 660, "left")
      love.graphics.setFont(smallestFont)
      love.graphics.setColor(White)
      love.graphics.printf("Porter Robinson & Madeon", gw - 750, scrollY + 145 + 111 * (i - 1), 700, "left")
      love.graphics.setColor(Blue)
      love.graphics.printf("Easy", gw - 750, scrollY + 165 + 111 * (i - 1), 700, "left") 
    end
  end
end

function mapList:mousepressed(x, y, button)  
  for i, v in ipairs(maplist) do
    isMouseOnMap = x > gw - 820 and x < gw - 820 + 700 and
                            y > scrollY + 100 + 111 * (i - 1) and y < scrollY + 100 + 111 * (i - 1) + 100         
    if isMouseOnMap and button == 1 then    
      selectedMap = i    
    end  
  end 
end


function love.wheelmoved(x, y)
    if y > 0 then
        scrollY = scrollY + 30
        if (scrollY >= 0) then
          scrollY = 0
        end
    elseif y < 0 then
        scrollY = scrollY - 30
        if (scrollY <= 890 + #maplist * -111) then
          scrollY = 890 + #maplist * -111
        end
    end
end


function mapList.mapListUp()
  if selectedMap > 1 then
    selectedMap = selectedMap - 1
  end
end

function mapList.mapListDown()
  if selectedMap < #maplist then
    selectedMap = selectedMap + 1
  end
end
