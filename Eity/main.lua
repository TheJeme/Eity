require 'managers/stateManager'
require 'managers/GameManager'
require 'globals'
require 'colors'
require 'lib/simpleScale'

local discordRPC = require 'lib/discordRPC'
local appId = require 'applicationId'
local beloved = require 'lib/beloved'

function love.load()
  simpleScale.setWindow(gw, gh, window_width, window_height)
  stateManager:load()
  gameManager:load()
  beloved:load()
  love.graphics.setBackgroundColor(0.1, 0.1, 0.1, 1)
  
  discordRPC.initialize(appId, true)
  now = os.time(os.date("*t"))
  detailsNow = "In Mainmenu"
  stateNow = ""  
  nextPresenceUpdate = 0
end

function discordApplyPresence()
  if stateManager.GameState == "Maingame" then
    detailsNow = "Shelter"
    stateNow = "By Porter Robinson & Madeon"
  else
    detailsNow = "In Mainmenu"
    stateNow = ""
  end
  
  presence = {
    largeImageKey = "eity_icon",
    largeImageText = "Eity v0.7.4",
    details = detailsNow,
    state = stateNow,
    startTimestamp = now,
  }
  
  return presence
end

function love.update(dt)
  mx, my = love.mouse.getPosition()
  scoreManager:update(dt)
  gameManager:update(dt)
  stateManager:update(dt)
  
  if isEnabledVSync then
    love.window.setVSync(1)
  else
    love.window.setVSync(0)
  end
  
  if nextPresenceUpdate < love.timer.getTime() then
      discordRPC.updatePresence(discordApplyPresence())
      nextPresenceUpdate = love.timer.getTime() + 2.0
  end
  discordRPC.runCallbacks()
  

end

function love.draw()  
	simpleScale.set()
    stateManager:draw()
	simpleScale.unSet()
  beloved:draw() 
    
  if isEnabledFPS then
    love.graphics.setFont(defaultFont)
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.printf("FPS " .. love.timer.getFPS(), 0, gh - 12, gw, "right")
  end
end

function love.quit()
    discordRPC.shutdown()
end

function love.mousepressed(x, y, button)
  stateManager:mousepressed(x, y, button)
  beloved:mousepressed(x, y, button)
end

function love.keypressed(key)
  stateManager:keypressed(key)
  beloved:keypressed(key) 
end
