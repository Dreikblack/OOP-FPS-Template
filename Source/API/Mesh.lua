---@meta
---@class Mesh:Object
---@field bounds Aabb
---@field extra Object
---@field material Material
---@field materials Material[4]
---@field name string
---@field type number
Mesh = {}

----------------------------
-- Methods
----------------------------

---@param x number
---@param y number
---@param z number
---@return number
function Mesh:AddVertex(x, y, z) end

---@param x number
---@param y number
---@param z number
---@param nx number
---@param ny number
---@param nz number
---@return number
function Mesh:AddVertex(x, y, z, nx, ny, nz) end

---@param x number
---@param y number
---@param z number
---@param nx number
---@param ny number
---@param nz number
---@param u number
---@param v number
---@return number
function Mesh:AddVertex(x, y, z, nx, ny, nz, u, v) end

---@param x number
---@param y number
---@param z number
---@param nx number
---@param ny number
---@param nz number
---@param u number
---@param v number
---@param displacement number
---@return number
function Mesh:AddVertex(x, y, z, nx, ny, nz, u, v, displacement) end

---@param position Vec3
---@return number
function Mesh:AddVertex(position) end

---@param position Vec3
---@param normal Vec3
---@return number
function Mesh:AddVertex(position, normal) end

---@param position Vec3
---@param normal Vec3
---@param texcoords Vec2
---@return number
function Mesh:AddVertex(position, normal, texcoords) end

---@param position Vec3
---@param normal Vec3
---@param texcoords Vec2
---@param displacement number
---@return number
function Mesh:AddVertex(position, normal, texcoords, displacement) end

function Mesh:Copy() end

---@return number
function Mesh:CountPrimitives() end

---@return number
function Mesh:CountVertices() end

---@return number
function Mesh:GetRenderLayers() end

---@param index number
---@return Vec4
function Mesh:GetVertexColor(index) end

---@return Vec3
function Mesh:GetVertexNormal() end

---@param index number
---@return Vec3
function Mesh:GetVertexPosition(index) end

---@param index number
---@param texcoordset number
---@return Vec2
function Mesh:GetVertexTexCoords(index, texcoordset) end

---@param x boolean
---@param y boolean
---@param z boolean
function Mesh:Recenter(x, y, z) end

---@param pitch number
---@param yaw number
---@param roll number
function Mesh:Rotate(pitch, yaw, roll) end

---@param rotation Vec3
function Mesh:Rotate(rotation) end

---@param rotation Quat
function Mesh:Rotate(rotation) end

---@param scale Vec3
function Mesh:Scale(scale) end

---@param x number
---@param y number
---@param z number
function Mesh:Scale(x, y, z) end

---@param material Material
---@param index number
function Mesh:SetMaterial(material, index) end

---@param renderlayers number
function Mesh:SetRenderLayers(renderlayers) end

---@param mode boolean
function Mesh:SetSkinned(mode) end

---@param index number
---@param r number
---@param g number
---@param b number
---@param a number
function Mesh:SetVertexColor(index, r, g, b, a) end

---@param index number
---@param color Vec4
function Mesh:SetVertexColor(index, color) end

---@param index number
---@param x number
---@param y number
---@param z number
function Mesh:SetVertexNormal(index, x, y, z) end

---@param index number
---@param normal Vec3
function Mesh:SetVertexNormal(index, normal) end

---@param index number
---@param x number
---@param y number
---@param z number
function Mesh:SetVertexPosition(index, x, y, z) end

---@param index number
---@param normal Vec3
function Mesh:SetVertexPosition(index, normal) end

---@param index number
---@param u number
---@param v number
---@param texcoordset number
function Mesh:SetVertexTexCoords(index, u, v, texcoordset) end

---@param index number
---@param texcoords Vec2
---@param texcoordset number
function Mesh:SetVertexTexCoords(index, texcoords, texcoordset) end

---@param matrix Mat4
function Mesh:Transform(matrix) end

---@param x number
---@param y number
---@param z number
function Mesh:Translate(x, y, z) end

---@param offset Vec3
function Mesh:Translate(offset) end

function Mesh:UpdateBounds() end

function Mesh:UpdateTangents() end

----------------------------
-- Functions
----------------------------

---@param primitivetype number
---@return Mesh
function CreateMesh(primitivetype) end

