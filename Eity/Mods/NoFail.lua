NoFail = {}

function NoFail.AddHealth(value)
  
  GameManager.health = GameManager.health + value
  if GameManager.health > 100 then
    GameManager.health = 100
  end
end

return NoFail
