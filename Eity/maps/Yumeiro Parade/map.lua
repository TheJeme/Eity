map = { }
 
function map:getBackground()
  return "maps/Yumeiro Parade/bg.jpg"
end

function map:getTitle()
  return "Yumeiro Parade"
end

function map:getDifficult()
  return "Easy"
end
 
function map:getPorter()
  return "Rhodanthe"
end

function map:getSong()
  return "maps/Yumeiro Parade/song.mp3"
end
 
function map:getNotes()        
  -- (0 = none, 1 = normal, 2 = slider, 3 = bad), 448 = up, 64 = down, 192 = left, 320 = right, milliseconds to spawn
  -- Slider length  
  return {
    {1, 320, 400, 600, 4021111},
  }
end

return map
