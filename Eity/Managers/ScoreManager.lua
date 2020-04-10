scoreManager = {}

local bigFont
local smallFont
local note
function scoreManager:load()
  bigFont = love.graphics.newFont("Assets/roboto.ttf", 48)
  smallFont = love.graphics.newFont("Assets/roboto.ttf", 24)
  scoreManager.score = 0
  scoreManager.combo = 0
  scoreManager.modMultiplier = 1.00
  scoreManager.misses = 0
  scoreManager.hits = 0
  
  scoreManager.totalBlueArrows = 0
  scoreManager.totalBlueSliders = 0
  scoreManager.totalYellowArrows = 0
  scoreManager.totalYellowSliders = 0
  scoreManager.totalRedArrows = 0
  scoreManager.totalRedSliders = 0
  
  scoreManager.Destroyednotes = 0
  scoreManager.destroyedArrows = 0
  scoreManager.collectedBlueArrows = 0
  scoreManager.collectedBlueSliders = 0
  scoreManager.collectedYellowArrows = 0
  scoreManager.collectedYellowSliders = 0
  scoreManager.collectedRedArrows = 0
  scoreManager.collectedRedSliders = 0
  
  note = 1
end

function scoreManager.ResetCombo()
  scoreManager.combo = 0
end

function scoreManager.AddHealth(value)
  
  gameManager.health = gameManager.health + value
  if gameManager.health > 100 then
    gameManager.health = 100
  end
end

function scoreManager.Restart()
  scoreManager.score = 0
  scoreManager.combo = 0
  scoreManager.maxCombo = 0
  scoreManager.misses = 0
  scoreManager.hits = 0
  scoreManager.destroyednotes = 0
  scoreManager.destroyedArrows = 0
  
  scoreManager.totalBlueArrows = 0
  scoreManager.totalBlueSliders = 0
  scoreManager.totalYellowArrows = 0
  scoreManager.totalYellowSliders = 0
  
  scoreManager.collectedBlueArrows = 0
  scoreManager.collectedBlueSliders = 0
  scoreManager.collectedYellowArrows = 0
  scoreManager.collectedYellowSliders = 0
  scoreManager.collectedRedArrows = 0
  scoreManager.collectedRedSliders = 0
end

function scoreManager.CalculateTotalNotes()
  scoreManager.totalBlueArrows = 0
  scoreManager.totalBlueSliders = 0
  scoreManager.totalYellowArrows = 0
  scoreManager.totalYellowSliders = 0
  note = 1
  for i, v in ipairs(map) do
    if #map >= note then
      if map[note][1] == 1 and map[note][4] == 0 then scoreManager.totalBlueArrows = scoreManager.totalBlueArrows + 1
      elseif map[note][1] == 1 and map[note][4] ~= 0 then scoreManager.totalBlueSliders = scoreManager.totalBlueSliders + 1
      elseif map[note][1] == 2 and map[note][4] == 0 then scoreManager.totalYellowArrows = scoreManager.totalYellowArrows + 1
      elseif map[note][1] == 2 and map[note][4] ~= 0 then scoreManager.totalYellowSliders = scoreManager.totalYellowSliders + 1
      end
      note = note + 1
    end
  end
end

function scoreManager.AddScore(type)
  if (type == "perfect") then
      scoreManager.combo = scoreManager.combo + 1
      scoreManager.hits = scoreManager.hits + 1
      scoreManager.AddHealth(5)
      scoreManager.score = scoreManager.score + 300 * scoreManager.combo * scoreManager.modMultiplier
  elseif (type == "sliderStart") then
        scoreManager.AddHealth(2)
        scoreManager.score = scoreManager.score + 100 * scoreManager.combo * scoreManager.modMultiplier
  elseif (type == "sliderEnd") then
        scoreManager.combo = scoreManager.combo + 1
        scoreManager.hits = scoreManager.hits + 1
        scoreManager.AddHealth(2)
        scoreManager.score = scoreManager.score + 100 * scoreManager.combo * scoreManager.modMultiplier
  elseif (type == "miss") then
        if scoreManager.combo > scoreManager.maxCombo then scoreManager.maxCombo = scoreManager.combo end
        scoreManager.combo = 0
        scoreManager.AddHealth(-20)
        scoreManager.misses = scoreManager.misses + 1
  elseif (type == "bad") then
        if scoreManager.combo > scoreManager.maxCombo then scoreManager.maxCombo = scoreManager.combo end
        scoreManager.combo = 0
        scoreManager.AddHealth(-25)
        scoreManager.misses = scoreManager.misses + 1
        scoreManager.score = scoreManager.score - 100
        if (scoreManager.score < 0) then
          scoreManager.score = 0
        end
  end
end

function scoreManager:update(dt)
  
  scoreManager.modMultiplier = 1.00
  if modManager.isHalfSpeed then
    scoreManager.modMultiplier = scoreManager.modMultiplier - 0.50
  end
  if modManager.isDoubleSpeed then
    scoreManager.modMultiplier = scoreManager.modMultiplier + 0.50
  end
  if modManager.isHidden then
    scoreManager.modMultiplier = scoreManager.modMultiplier + 0.25
  end
  if modManager.isFlashlight then
    scoreManager.modMultiplier = scoreManager.modMultiplier + 0.25
  end
  if modManager.isNoFail then
    scoreManager.modMultiplier = scoreManager.modMultiplier - 0.25
  end
  if modManager.isAuto then
    scoreManager.modMultiplier = 0
  end
end

function scoreManager:draw()
  love.graphics.setFont(bigFont)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf(scoreManager.combo .. "x", 0, gh - 50, 100, "left")
  love.graphics.printf(string.format("%08d", scoreManager.score), 0, 0, gw, "right")
  love.graphics.setFont(smallFont)
  love.graphics.printf(string.format("%0.2f", scoreManager.getAccuracy()) .. "%", 0, 50, gw, "right")
end

function scoreManager.getAccuracy()
  if scoreManager.destroyednotes == 0 or (scoreManager.destroyednotes - scoreManager.misses) / scoreManager.destroyednotes * 100 == 100 then
    return 100
  else
    return (scoreManager.destroyednotes - scoreManager.misses) / scoreManager.destroyednotes * 100
  end
end

function scoreManager.getGrade()
  if scoreManager.getAccuracy() == 100 then
    return "SS"
  elseif scoreManager.getAccuracy() >= 98 then
    return "S"
  elseif scoreManager.getAccuracy() >= 95 then
    return "A"
  elseif scoreManager.getAccuracy() >= 90 then
    return "B"
  elseif scoreManager.getAccuracy() >= 85 then
    return "C"
  else
    return "D"
  end
end

function scoreManager.getGradeColor()
  if scoreManager.getAccuracy() == 100 then
    return {255 / 255, 215 / 255, 55 / 255, 1}
  elseif scoreManager.getAccuracy() >= 98 then
    return {255 / 255, 215 / 255, 55 / 255, 1}
  elseif scoreManager.getAccuracy() >= 95 then
    return {153 / 255, 199 / 255, 59 / 255, 1}
  elseif scoreManager.getAccuracy() >= 90 then
    return {51 / 255, 152 / 255, 220 / 255, 1}
  elseif scoreManager.getAccuracy() >= 85 then
    return {116 / 255, 94 / 255, 198 / 255, 1}
  else
    return {242 / 255, 75 / 255, 60 / 255, 1}
  end
end

return scoreManager
