map = { }
 
function map:getBackground()
  return "maps/FREEDOM DiVE/bg.jpg"
end

function map:getTitle()
  return "FREEDOM DiVE"
end

function map:getDifficult()
  return "Normal"
end
 
function map:getPorter()
  return "xi"
end

function map:getSong()
  return "maps/FREEDOM DiVE/song.mp3"
end
 
function map:getNotes()        
  -- (0 = none, 1 = normal, 2 = slider, 3 = bad), 448 = up, 64 = down, 192 = left, 320 = right, milliseconds to spawn
  -- Slider length  
  return {
    {1, 320, 400, 600, 40211111},
  }
end

return map
