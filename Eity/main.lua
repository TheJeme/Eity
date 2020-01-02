require 'Maingame/Maingame'
require 'Mainmenu/Mainmenu'
require 'Managers/GamestateManager'
require 'Managers/GameManager'

local discordRPC = require 'discordRPC'
local appId = require 'applicationId'
local SCreen = require 'cscreen'


function love.load()
  love.window.setMode(1920,1080,{fullscreen=true, fullscreentype="exclusive"})
  --love.window.setMode(1600,900,{fullscreen=true, fullscreentype="exclusive"})
  isEnabledFPS = true
  isEnabledVSync = false
  gw = love.graphics.getWidth()
  gh = love.graphics.getHeight()
	SCreen.init(gw, gh, true)
  mx, my = love.mouse.getPosition()
  defaultFont = love.graphics.getFont()
  GamestateManager:load()
  Mainmenu:load()
  Maingame:load()
  GameManager:load()
  love.graphics.setBackgroundColor(0.1, 0.1, 0.1, 1)
  
  discordRPC.initialize(appId, true)
  now = os.time(os.date("*t"))
  detailsNow = "In Mainmenu"
  stateNow = ""
  
  nextPresenceUpdate = 0
end

function discordApplyPresence()
  if GamestateManager.GameState == "Mainmenu" then
    detailsNow = "In Mainmenu"
    stateNow = ""
  elseif GamestateManager.GameState == "Maingame" then
    detailsNow = "Shelter"
    stateNow = "By Porter Robinson & Madeon"
  end
  
  presence = {
    largeImageKey = "eity_icon",
    largeImageText = "Eity v0.5.8",
    details = detailsNow,
    state = stateNow,
    startTimestamp = now,
  }
  
  return presence
end

function love.update(dt)
  mx, my = love.mouse.getPosition()
  ScoreManager:update(dt)
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
  
  if(GamestateManager.GameState == "Mainmenu") then
    Mainmenu:update(dt)
  elseif(GamestateManager.GameState == "Maingame") then
    Maingame:update(dt)
  end
end

function love.draw()  
	SCreen.apply()
  if(GamestateManager.GameState == "Mainmenu") then
    Mainmenu:draw()
  elseif(GamestateManager.GameState == "Maingame") then
    love.graphics.setFont(defaultFont)
    Maingame:draw()
  end
  	SCreen.cease()
    
  if isEnabledFPS then
    love.graphics.setFont(defaultFont)
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.print("FPS " .. love.timer.getFPS())
  end
end

function love.quit()
    discordRPC.shutdown()
end

function love.mousepressed(x, y,button)
  if(GamestateManager.GameState == "Mainmenu") then
    Mainmenu:mousepressed(x, y,button)
  elseif(GamestateManager.GameState == "Maingame") then
    Maingame:mousepressed(x, y,button)
  end
end

function love.resize(width, height)
	SCreen.update(width, height)
end

function love.keypressed(key, scancode, isrepeat)
  if(GamestateManager.GameState == "Maingame") then
    Maingame:keypressed(key, scancode, isrepeat)
  elseif(GamestateManager.GameState == "Mainmenu") then
    Mainmenu:keypressed(key, scancode, isrepeat)
  end
end
