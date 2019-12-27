SoundManager = {}

function SoundManager:load()
  SoundManager.maingamesrc = love.audio.newSource("Shelter/shelter.mp3", "static")
  SoundManager.maingamesrc:setVolume(0.05)
end

function SoundManager:Restart()
  SoundManager.maingamesrc:stop()
  SoundManager.maingamesrc:play()
end

return SoundManager
