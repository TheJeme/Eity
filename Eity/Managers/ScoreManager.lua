ScoreManager = {}

function ScoreManager:load()
  ScoreManager.score = 0
  ScoreManager.combo = 0
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
      ScoreManager.score = ScoreManager.score + 300 * ScoreManager.combo
  elseif (type == "sliderStart") then
        ScoreManager.combo = ScoreManager.combo + 1
        ScoreManager.score = ScoreManager.score + 100 * ScoreManager.combo
  elseif (type == "sliderEnd") then
        ScoreManager.combo = ScoreManager.combo + 1
        ScoreManager.hits = ScoreManager.hits + 1
        ScoreManager.score = ScoreManager.score + 100 * ScoreManager.combo
  elseif (type == "good") then
        ScoreManager.combo = ScoreManager.combo + 1
        ScoreManager.hits = ScoreManager.hits + 1
        ScoreManager.score = ScoreManager.score + 100 * ScoreManager.combo
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


function ScoreManager:draw()
  love.graphics.setFont(defaultFont)
  love.graphics.print("Combo: " .. ScoreManager.combo, 0, 20)
  love.graphics.print("Score: " .. ScoreManager.score, 0, 40)
  love.graphics.print("Accuracy: " .. string.format("%0.2f", (ScoreManager.destroyednotes - ScoreManager.misses) / ScoreManager.destroyednotes * 100) .. "%", 0, 100)
end

return ScoreManager
