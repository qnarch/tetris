-- use of standard library classic for class functionality
Object = require("classic")
require("playgrid")

function love.load()
  playgrid = Playgrid()
end

function love.draw()
  playgrid:draw(dt)
end

function love.update(dt)
  playgrid:update(dt)
end

