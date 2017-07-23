-- Class definition
Shape = Object:extend()

-- Shape definitions
possibleShapes = {}
lprimeShape = {}

-- A mirrored 'L' shape, and all rotations
local lprimeRot1 = {}
lprimeRot1[1] = {0,0,0}
lprimeRot1[2] = {1,1,1}
lprimeRot1[3] = {0,0,1}

local lprimeRot2 = {}
lprimeRot2[1] = {0,1,0}
lprimeRot2[2] = {0,1,0}
lprimeRot2[3] = {1,1,0}

local lprimeRot3 = {}
lprimeRot3[1] = {1,0,0}
lprimeRot3[2] = {1,1,1}
lprimeRot3[3] = {0,0,0}

local lprimeRot4 = {}
lprimeRot4[1] = {0,1,1}
lprimeRot4[2] = {0,1,0}
lprimeRot4[3] = {0,1,0}

possibleShapes[1] = lprimeShape
lprimeShape[1] = lprimeRot1
lprimeShape[2] = lprimeRot2
lprimeShape[3] = lprimeRot3
lprimeShape[4] = lprimeRot4

-- Constructor
function Shape.new(self, table)
  self.table = table
end
