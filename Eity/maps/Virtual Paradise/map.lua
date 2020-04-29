map = { }
 
function map:getBackground()
  return "maps/Virtual Paradise/bg.jpg"
end

function map:getTitle()
  return "Virtual Paradise"
end

function map:getDifficult()
  return "Template"
end
 
function map:getPorter()
  return "AK X LYNX ft. Veela"
end

function map:getSong()
  return "maps/Virtual Paradise/song.mp3"
end
 
function map:getNotes()        
  -- (0 = none, 1 = normal, 2 = reverse, 3 = bad), (448 = up, 64 = down, 192 = left, 320 = right), speed, slider length, milliseconds to spawn
  return {
    {1, 320, 400, 600, 111402},
  }
end

return map
