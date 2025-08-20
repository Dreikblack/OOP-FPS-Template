---@meta
---@class Brush:Entity
---@field faces Face[]
Brush = {}

----------------------------
-- Methods
----------------------------

---@return Face
function Brush:AddFace() end

---@param material Material
---@return Face
function Brush:AddFace(material) end

---@param x number
---@param y number
---@param z number
---@return number
function Brush:AddVertex(x, y, z) end

---@param position Vec3
---@return number
function Brush:AddVertex(position) end

function Brush:Build() end

---@param brush Brush
---@return boolean
function Brush:IntersectsBrush(brush) end

---@param point Vec3
---@param padding number
---@return boolean
function Brush:IntersectsPoint(point, padding) end

---@param number v:
---@param number x:
---@param number y:
---@param number z:
function Brush:SetVertexPosition(number, number, number, number) end

---@param number v:
---@param Vec3 position:
function Brush:SetVertexPosition(number, Vec3) end

---@param plane Plane
---@param operandA Brush
---@param operandB Brush
---@param sliceface Face
---@param tolerance number
---@return boolean
function Brush:Slice(plane, operandA, operandB, sliceface, tolerance) end

----------------------------
-- Functions
----------------------------

---@param world World
---@param width number
---@param height number
---@param depth number
---@return Brush
function CreateBoxBrush(world, width, height, depth) end

---@param world World
---@return Brush
function CreateBrush(world) end

