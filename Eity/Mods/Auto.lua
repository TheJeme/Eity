Auto = {}

function Auto.ApplyMod()
  for i, v in ipairs(map) do    
    if #map >= scoreManager.destroyedArrows + 1 and map[scoreManager.destroyedArrows+1][1] == 1 then
      if math.ceil(map[scoreManager.destroyedArrows+1][2] * 4 / 512) == 1 then player.direction = "right"
      elseif math.ceil(map[scoreManager.destroyedArrows+1][2] * 4 / 512) == 2 then player.direction = "up"
      elseif math.ceil(map[scoreManager.destroyedArrows+1][2] * 4 / 512) == 3 then player.direction = "left"
      elseif math.ceil(map[scoreManager.destroyedArrows+1][2] * 4 / 512) == 4 then player.direction = "down" end 
           
    elseif (#map >= scoreManager.destroyedArrows + 1 and map[scoreManager.destroyedArrows+1][1] == 2) or
           (#map >= scoreManager.destroyedArrows + 1 and map[scoreManager.destroyedArrows+1][1] == 3) then
      if math.ceil(map[scoreManager.destroyedArrows+1][2] * 4 / 512) == 1 then player.direction = "left"
      elseif math.ceil(map[scoreManager.destroyedArrows+1][2] * 4 / 512) == 2 then player.direction = "down"
      elseif math.ceil(map[scoreManager.destroyedArrows+1][2] * 4 / 512) == 3 then player.direction = "right"
      elseif math.ceil(map[scoreManager.destroyedArrows+1][2] * 4 / 512) == 4 then player.direction = "up" end
    end
  end
end

return Auto
