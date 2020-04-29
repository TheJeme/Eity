map = { }
 
function map:getBackground()
  return "maps/Highscore/bg.png"
end

function map:getTitle()
  return "Highscore"
end

function map:getDifficult()
  return "Insane"
end
 
function map:getPorter()
  return "Panda Eyes & Teminite"
end

function map:getSong()
  return "maps/Highscore/song.mp3"
end
 
function map:getNotes()        
  -- (0 = none, 1 = normal, 2 = reverse, 3 = bad), (448 = up, 64 = down, 192 = left, 320 = right), speed, slider length, milliseconds to spawn
  return {
    {1, 320, 400, 600, 111402},
  }
end

return map
