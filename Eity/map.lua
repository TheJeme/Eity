require "map_01"
require "map_02"

map = { }
 
function map:load()      
  map1 = false
  -- (0 = none, 1 = normal, 2 = slider, 3 = bad), 448 = up, 64 = down, 192 = left, 320 = right, milliseconds to spawn
  -- Slider length
    
  if map1 == true then
    map_01:load()
    map = map_01
  else
    map_02:load()
    map = map_02
  end
  for i, v in ipairs(map) do
    if (map[i][1] == 3) then
      map[i][5] = map[i][5] + 100
    end
  end
end

return map
