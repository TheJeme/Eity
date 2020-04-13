soundManager = {}



function soundManager:SetMusicVolume(volume)  
  musicVolume = volume
  soundManager.mainmenusrc:setVolume(volume)
end

function soundManager:SetEffectsVolume(volume)
  effectsVolume = volume
  
  soundManager.buttonOversrc:setVolume(volume)
  soundManager.buttonHitsrc:setVolume(volume)

  soundManager.hitsrc:setVolume(volume)
  soundManager.hitSlidersrc:setVolume(volume)
  soundManager.misssrc:setVolume(volume)
end


function soundManager:load()
  musicVolume = 0.05
  effectsVolume = 0.05
  
  soundManager.mainmenusrc = love.audio.newSource("assets/verse_one_bgmusic.mp3", "static")
  
  soundManager.buttonOversrc = love.audio.newSource("assets/ButtonOver.wav", "static")
  soundManager.buttonHitsrc = love.audio.newSource("assets/ButtonHit.wav", "static")
  
  soundManager.hitsrc = love.audio.newSource("assets/hit.wav", "static")
  soundManager.hitSlidersrc = love.audio.newSource("assets/slider.wav", "static")
  soundManager.misssrc = love.audio.newSource("assets/miss.wav", "static")
  
  soundManager:SetMusicVolume(musicVolume)  
  soundManager:SetEffectsVolume(effectsVolume)
  
end

function soundManager.playSoundEffect(source)
	local clone = source:clone()
	clone:play()
end

function soundManager:Restart()
  mapSong:stop()
  mapSong:play()
end

return soundManager
