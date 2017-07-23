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

function love.keypressed(key)
    if key=="a" or key=="left" then
        playgrid:updateActivePos(-1, 0)
    elseif key=="d" or key=="right" then
        playgrid:updateActivePos(1, 0)
    end
    if key=="w" or key=="up" then
        playgrid:rotateActiveShape(1)
    end
end
