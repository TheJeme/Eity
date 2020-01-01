
GamestateManager = {}

function GamestateManager:load()
  GamestateManager.GameState = "Mainmenu" -- Mainmenu, Maingame
  GamestateManager.GameModeState = "Rhombus" -- Rhombus, Catch, Rush
end

return GamestateManager
