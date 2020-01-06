SoundManager = {}

function SoundManager:SetMusicVolume(v)
  musicVolume = v
  
  SoundManager.mainmenusrc:setVolume(musicVolume)
  SoundManager.maingamesrc:setVolume(musicVolume)
end

function SoundManager:SetEffectsVolume(v)
  effectsVolume = v
  
  SoundManager.ButtonOver:setVolume(effectsVolume)
  SoundManager.ButtonHit:setVolume(effectsVolume)

  SoundManager.hitsrc:setVolume(effectsVolume)
  SoundManager.hitSlidersrc:setVolume(effectsVolume)
  SoundManager.misssrc:setVolume(effectsVolume)
end


function SoundManager:load()
  musicVolume = 0.05
  effectsVolume = 0.05
  
  SoundManager.maingamesrc = love.audio.newSource("Assets/elama.mp3", "static")
  SoundManager.mainmenusrc = love.audio.newSource("Assets/Verse_One_BGMusic.mp3", "static")
  
  SoundManager.ButtonOver = love.audio.newSource("Assets/ButtonOver.wav", "static")
  SoundManager.ButtonHit = love.audio.newSource("Assets/ButtonHit.wav", "static")
  
  SoundManager.hitsrc = love.audio.newSource("Assets/hit.wav", "static")
  SoundManager.hitSlidersrc = love.audio.newSource("Assets/slider.wav", "static")
  SoundManager.misssrc = love.audio.newSource("Assets/miss.wav", "static")
  
  SoundManager.mainmenusrc:setVolume(musicVolume)
  SoundManager.maingamesrc:setVolume(musicVolume)
  
  SoundManager.ButtonOver:setVolume(effectsVolume)
  SoundManager.ButtonHit:setVolume(effectsVolume)

  SoundManager.hitsrc:setVolume(effectsVolume)
  SoundManager.hitSlidersrc:setVolume(effectsVolume)
  SoundManager.misssrc:setVolume(effectsVolume)
end

function SoundManager:Restart()
  SoundManager.maingamesrc:stop()
  SoundManager.maingamesrc:play()
end

return SoundManager
