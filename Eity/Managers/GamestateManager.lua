
GamestateManager = {}

function GamestateManager:load()
  GamestateManager.GameState = "Mainmenu" -- Mainmenu, Maingame, Rankingscreen
  GamestateManager.GameModeState = "Rhombus" -- Rhombus, Catch, Rush
end

return GamestateManager
