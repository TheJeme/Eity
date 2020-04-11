soundManager = {}

function soundManager:SetMusicVolume(volume)
  
  soundManager.mainmenusrc:setVolume(volume)
  soundManager.maingamesrc:setVolume(volume)
end

function soundManager:SetEffectsVolume(volume)
  
  soundManager.ButtonOver:setVolume(volume)
  soundManager.ButtonHit:setVolume(volume)

  soundManager.hitsrc:setVolume(volume)
  soundManager.hitSlidersrc:setVolume(volume)
  soundManager.misssrc:setVolume(volume)
end


function soundManager:load()
  musicVolume = 0.05
  effectsVolume = 0.05
  
  soundManager.maingamesrc = love.audio.newSource("maps/Shelter/shelter.mp3", "static")
  soundManager.mainmenusrc = love.audio.newSource("Assets/Verse_One_BGMusic.mp3", "static")
  
  soundManager.ButtonOver = love.audio.newSource("Assets/ButtonOver.wav", "static")
  soundManager.ButtonHit = love.audio.newSource("Assets/ButtonHit.wav", "static")
  
  soundManager.hitsrc = love.audio.newSource("Assets/hit.wav", "static")
  soundManager.hitSlidersrc = love.audio.newSource("Assets/slider.wav", "static")
  soundManager.misssrc = love.audio.newSource("Assets/miss.wav", "static")
  
  soundManager.mainmenusrc:setVolume(musicVolume)
  soundManager.maingamesrc:setVolume(musicVolume)
  
  soundManager.ButtonOver:setVolume(effectsVolume)
  soundManager.ButtonHit:setVolume(effectsVolume)

  soundManager.hitsrc:setVolume(effectsVolume)
  soundManager.hitSlidersrc:setVolume(effectsVolume)
  soundManager.misssrc:setVolume(effectsVolume)
end

function soundManager:Restart()
  soundManager.maingamesrc:stop()
  soundManager.maingamesrc:play()
end

return soundManager
