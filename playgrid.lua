-- Class definition
Playgrid = Object:extend()
require("shape")

-- Constructor
function Playgrid.new(self)
  -- grid is 10 x 20
  self.grid = {}
  
  -- Populate grid with zeros
  for i = 1, 10 do
    self.grid[i] = {}
    for j = 1, 20 do
        self.grid[i][j] = 0
    end
  end

  -- Array and origin position of the active shape
  self.activeShape = Shape(shapeArray)
  self.activePos = {x=4, y=0}
end

function Playgrid.draw(self)
  -- todo: render play field using images
  -- Print values of grid
  for i = 1, #self.grid do
    for j = 1, #self.grid[i] do
        love.graphics.print(self.grid[i][j], 10 + 15*i, 10 + 15*j)
    end
  end  


end

function Playgrid.update(self, dt)
  -- todo: implement some fixed tick
  -- Update grid with positions of activeShape at activePosition
  for i = 1, #self.activeShape.table do
    for j = 1, #self.activeShape.table[i] do
      if self.activeShape.table[i][j] == 1 then
        local x = self.activePos.x + i
        local y = self.activePos.y + j
        self.grid[x][y] = 1
      end
    end
  end

end
