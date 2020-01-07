Auto = {}

function Auto.ApplyMod()
  for i, v in ipairs(map) do    
    if #map >= ScoreManager.destroyedArrows + 1 and map[ScoreManager.destroyedArrows+1][1] == 1 then
      if math.ceil(map[ScoreManager.destroyedArrows+1][2] * 4 / 512) == 1 then Player.direction = 3
      elseif math.ceil(map[ScoreManager.destroyedArrows+1][2] * 4 / 512) == 2 then Player.direction = 4
      elseif math.ceil(map[ScoreManager.destroyedArrows+1][2] * 4 / 512) == 3 then Player.direction = 1
      elseif math.ceil(map[ScoreManager.destroyedArrows+1][2] * 4 / 512) == 4 then Player.direction = 2 end 
           
    elseif (#map >= ScoreManager.destroyedArrows + 1 and map[ScoreManager.destroyedArrows+1][1] == 2) or
           (#map >= ScoreManager.destroyedArrows + 1 and map[ScoreManager.destroyedArrows+1][1] == 3) then
      if math.ceil(map[ScoreManager.destroyedArrows+1][2] * 4 / 512) == 1 then Player.direction = 1
      elseif math.ceil(map[ScoreManager.destroyedArrows+1][2] * 4 / 512) == 2 then Player.direction = 2
      elseif math.ceil(map[ScoreManager.destroyedArrows+1][2] * 4 / 512) == 3 then Player.direction = 3
      elseif math.ceil(map[ScoreManager.destroyedArrows+1][2] * 4 / 512) == 4 then Player.direction = 4 end
    end
  end
end

return Auto
