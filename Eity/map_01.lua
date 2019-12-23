require 'Arrow'
require 'Slider'

map_01 = { }

function map_01:load()
  map_01 = {
    {"arrow", "normal", "left", 200, 1},
    {"arrow", "normal", "left", 200, 1.3},
    {"arrow", "normal", "left", 200, 1.6},
    {"arrow", "normal", "right", 200, 2},
    {"arrow", "normal", "up", 200, 3.5},
    {"arrow", "normal", "left", 200, 3},
    {"arrow", "reverse", "down", 200, 4},
    {"arrow", "bad", "right", 200, 4.5},
    {"slider", "normal", "left", 200, 5, 200}}
end


return map_01
