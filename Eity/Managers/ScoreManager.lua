ScoreManager = {}

local bigFont
local smallFont
local note
function ScoreManager:load()
  bigFont = love.graphics.newFont("Assets/roboto.ttf", 48)
  smallFont = love.graphics.newFont("Assets/roboto.ttf", 24)
  ScoreManager.score = 0
  ScoreManager.combo = 0
  ScoreManager.modMultiplier = 1.00
  ScoreManager.misses = 0
  ScoreManager.hits = 0
  
  ScoreManager.totalBlueArrows = 0
  ScoreManager.totalBlueSliders = 0
  ScoreManager.totalYellowArrows = 0
  ScoreManager.totalYellowSliders = 0
  ScoreManager.totalRedArrows = 0
  ScoreManager.totalRedSliders = 0
  
  ScoreManager.Destroyednotes = 0
  ScoreManager.destroyedArrows = 0
  ScoreManager.collectedBlueArrows = 0
  ScoreManager.collectedBlueSliders = 0
  ScoreManager.collectedYellowArrows = 0
  ScoreManager.collectedYellowSliders = 0
  ScoreManager.collectedRedArrows = 0
  ScoreManager.collectedRedSliders = 0
  
  note = 1
end

function ScoreManager.ResetCombo()
  ScoreManager.combo = 0
end

function ScoreManager.AddHealth(value)
  
  GameManager.health = GameManager.health + value
  if GameManager.health > 100 then
    GameManager.health = 100
  end
end

function ScoreManager.Restart()
  ScoreManager.score = 0
  ScoreManager.combo = 0
  ScoreManager.maxCombo = 0
  ScoreManager.misses = 0
  ScoreManager.hits = 0
  ScoreManager.destroyednotes = 0
  ScoreManager.destroyedArrows = 0
  
  ScoreManager.totalBlueArrows = 0
  ScoreManager.totalBlueSliders = 0
  ScoreManager.totalYellowArrows = 0
  ScoreManager.totalYellowSliders = 0
  
  ScoreManager.collectedBlueArrows = 0
  ScoreManager.collectedBlueSliders = 0
  ScoreManager.collectedYellowArrows = 0
  ScoreManager.collectedYellowSliders = 0
  ScoreManager.collectedRedArrows = 0
  ScoreManager.collectedRedSliders = 0
end

function ScoreManager.CalculateTotalNotes()
  ScoreManager.totalBlueArrows = 0
  ScoreManager.totalBlueSliders = 0
  ScoreManager.totalYellowArrows = 0
  ScoreManager.totalYellowSliders = 0
  note = 1
  for i, v in ipairs(map_01) do
    if #map_01 >= note then
      if map_01[note][1] == 1 and map_01[note][4] == 0 then ScoreManager.totalBlueArrows = ScoreManager.totalBlueArrows + 1
      elseif map_01[note][1] == 1 and map_01[note][4] ~= 0 then ScoreManager.totalBlueSliders = ScoreManager.totalBlueSliders + 1
      elseif map_01[note][1] == 2 and map_01[note][4] == 0 then ScoreManager.totalYellowArrows = ScoreManager.totalYellowArrows + 1
      elseif map_01[note][1] == 2 and map_01[note][4] ~= 0 then ScoreManager.totalYellowSliders = ScoreManager.totalYellowSliders + 1
      end
      note = note + 1
    end
  end
end

function ScoreManager.AddScore(type)
  if (type == "perfect") then
      ScoreManager.combo = ScoreManager.combo + 1
      ScoreManager.hits = ScoreManager.hits + 1
      ScoreManager.AddHealth(5)
      ScoreManager.score = ScoreManager.score + 300 * ScoreManager.combo * ScoreManager.modMultiplier
  elseif (type == "sliderStart") then
        ScoreManager.AddHealth(2)
        ScoreManager.score = ScoreManager.score + 100 * ScoreManager.combo * ScoreManager.modMultiplier
  elseif (type == "sliderEnd") then
        ScoreManager.combo = ScoreManager.combo + 1
        ScoreManager.hits = ScoreManager.hits + 1
        ScoreManager.AddHealth(2)
        ScoreManager.score = ScoreManager.score + 100 * ScoreManager.combo * ScoreManager.modMultiplier
  elseif (type == "miss") then
        if ScoreManager.combo > ScoreManager.maxCombo then ScoreManager.maxCombo = ScoreManager.combo end
        ScoreManager.combo = 0
        ScoreManager.AddHealth(-20)
        ScoreManager.misses = ScoreManager.misses + 1
  elseif (type == "bad") then
        if ScoreManager.combo > ScoreManager.maxCombo then ScoreManager.maxCombo = ScoreManager.combo end
        ScoreManager.combo = 0
        ScoreManager.AddHealth(-25)
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
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.printf(ScoreManager.combo .. "x", 0, gh - 50, 100, "left")
  love.graphics.printf(string.format("%08d", ScoreManager.score), 0, 0, gw, "right")
  love.graphics.setFont(smallFont)
  love.graphics.printf(string.format("%0.2f", ScoreManager.getAccuracy()) .. "%", 0, 50, gw, "right")
end

function ScoreManager.getAccuracy()
  if ScoreManager.destroyednotes == 0 or (ScoreManager.destroyednotes - ScoreManager.misses) / ScoreManager.destroyednotes * 100 == 100 then
    return 100
  else
    return (ScoreManager.destroyednotes - ScoreManager.misses) / ScoreManager.destroyednotes * 100
  end
end

function ScoreManager.getGrade()
  if ScoreManager.getAccuracy() == 100 then
    return "SS"
  elseif ScoreManager.getAccuracy() >= 98 then
    return "S"
  elseif ScoreManager.getAccuracy() >= 95 then
    return "A"
  elseif ScoreManager.getAccuracy() >= 90 then
    return "B"
  elseif ScoreManager.getAccuracy() >= 85 then
    return "C"
  else
    return "D"
  end
end

function ScoreManager.getGradeColor()
  if ScoreManager.getAccuracy() == 100 then
    return {255 / 255, 215 / 255, 55 / 255, 1}
  elseif ScoreManager.getAccuracy() >= 98 then
    return {255 / 255, 215 / 255, 55 / 255, 1}
  elseif ScoreManager.getAccuracy() >= 95 then
    return {153 / 255, 199 / 255, 59 / 255, 1}
  elseif ScoreManager.getAccuracy() >= 90 then
    return {51 / 255, 152 / 255, 220 / 255, 1}
  elseif ScoreManager.getAccuracy() >= 85 then
    return {116 / 255, 94 / 255, 198 / 255, 1}
  else
    return {242 / 255, 75 / 255, 60 / 255, 1}
  end
end

return ScoreManager
