elama = require "maps/Elaman koulu/map"
shelter = require "maps/Shelter/map"

mapManager = { }
 
map = {}
 
function mapManager:load()      
  map1 = true
  -- (0 = none, 1 = normal, 2 = slider, 3 = bad), 448 = up, 64 = down, 192 = left, 320 = right, milliseconds to spawn
  -- Slider length
    
  if map1 == true then
    elama:load()
    map = elama
  else
    shelter:load()
    map = shelter
  end
  for i, v in ipairs(map) do
    if (map[i][1] == 3) then
      map[i][5] = map[i][5] + 100
    end
  end
end

return mapManager
