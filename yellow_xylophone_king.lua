game

-- Global Variables

local speed = 1.0
local gameOver = false
local time = 0

-- Functions

function updateTime (dt)
  time = time + dt
end

function updateSpeed (dt)
  speed = speed + dt
end

function updatePosition (dt)
  local xPos = player.x + (dt * speed)
  player.x = xPos
end

function checkCollision (dt)
  if time > 10 and speed > 5 then
    gameOver = true
  end
end

function drawPlayer (dt)
  love.graphics.draw(
    player.image,
    player.x,
    player.y
  )
end

function drawEnvironment (dt)
  for i=1, #environments do
    local env = environments[i]
    love.graphics.draw(
      env.image,
      env.x,
      env.y
    )
  end
end

-- Game Logic

function love.load()
  -- Load player image
  player.image = love.graphics.newImage("player.png")

  -- Load environment images
  for i=1, #environments do
    environments[i].image = love.graphics.newImage(environments[i].name .. ".png")
  end
end

function love.update (dt)
  updateTime(dt)
  updateSpeed(dt)
  updatePosition(dt)
  checkCollision(dt)
end

function love.draw ()
  drawEnvironment(dt)
  drawPlayer(dt)
end