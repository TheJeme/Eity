ScoreManager = {}

local bigFont
local smallFont

function ScoreManager:load()
  bigFont = love.graphics.newFont("Assets/roboto.ttf", 48)
  smallFont = love.graphics.newFont("Assets/roboto.ttf", 24)
  ScoreManager.score = 0
  ScoreManager.combo = 0
  ScoreManager.modMultiplier = 1.00
  ScoreManager.misses = 0
  ScoreManager.hits = 0
  ScoreManager.Destroyednotes = 0
end

function ScoreManager.ResetCombo()
  ScoreManager.combo = 0
end

function ScoreManager.Restart()
  ScoreManager.score = 0
  ScoreManager.combo = 0
  ScoreManager.misses = 0
  ScoreManager.hits = 0
  ScoreManager.destroyednotes = 0
end

function ScoreManager.AddScore(type)
  if (type == "perfect") then
      ScoreManager.combo = ScoreManager.combo + 1
      ScoreManager.hits = ScoreManager.hits + 1
      ScoreManager.score = ScoreManager.score + 300 * ScoreManager.combo * ScoreManager.modMultiplier
  elseif (type == "sliderStart") then
        ScoreManager.combo = ScoreManager.combo + 1
        ScoreManager.score = ScoreManager.score + 100 * ScoreManager.combo * ScoreManager.modMultiplier
  elseif (type == "sliderEnd") then
        ScoreManager.combo = ScoreManager.combo + 1
        ScoreManager.hits = ScoreManager.hits + 1
        ScoreManager.score = ScoreManager.score + 100 * ScoreManager.combo * ScoreManager.modMultiplier
  elseif (type == "good") then
        ScoreManager.combo = ScoreManager.combo + 1
        ScoreManager.hits = ScoreManager.hits + 1
        ScoreManager.score = ScoreManager.score + 100 * ScoreManager.combo * ScoreManager.modMultiplier
  elseif (type == "miss") then
        ScoreManager.combo = 0
        ScoreManager.misses = ScoreManager.misses + 1
  elseif (type == "bad") then
        ScoreManager.combo = 0
        ScoreManager.misses = ScoreManager.misses + 1
        ScoreManager.score = ScoreManager.score - 100
        if (ScoreManager.score < 0) then
          ScoreManager.score = 0
        end
  end
end

function ScoreManager:update(dt)
  
  ScoreManager.modMultiplier = 1.00
  if ModManager.isHalfSpeed then
    ScoreManager.modMultiplier = ScoreManager.modMultiplier - 0.50
  end
  if ModManager.isDoubleSpeed then
    ScoreManager.modMultiplier = ScoreManager.modMultiplier + 0.50
  end
  if ModManager.isHidden then
    ScoreManager.modMultiplier = ScoreManager.modMultiplier + 0.25
  end
  if ModManager.isFlashlight then
    ScoreManager.modMultiplier = ScoreManager.modMultiplier + 0.25
  end
  if ModManager.isNoFail then
    ScoreManager.modMultiplier = ScoreManager.modMultiplier - 0.25
  end
  if ModManager.isAuto then
    ScoreManager.modMultiplier = 0
  end
end

function ScoreManager:draw()
  love.graphics.setFont(bigFont)
  love.graphics.printf(ScoreManager.combo .. "x", 0, gh - 50, 100, "left")
  love.graphics.printf(string.format("%08d", ScoreManager.score), 0, 0, gw, "right")
  love.graphics.setFont(smallFont)
  if ScoreManager.destroyednotes == 0 or (ScoreManager.destroyednotes - ScoreManager.misses) / ScoreManager.destroyednotes * 100 == 100 then
      love.graphics.printf("100%", 0, 50, gw, "right")
  else
    love.graphics.printf(string.format("%0.2f", (ScoreManager.destroyednotes - ScoreManager.misses) / ScoreManager.destroyednotes * 100) .. "%", 0, 50, gw, "right")
  end
end

return ScoreManager
