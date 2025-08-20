---@meta
---@class Terrain:Entity
---@field heightmap Pixmap
---@field material Material
---@field resolution iVec2
Terrain = {}

----------------------------
-- Methods
----------------------------

---@param material [Material](Material
---@return number
function Terrain:AddLayer(material) end

---@param layer number
function Terrain:Fill(layer) end

---@param tx number
---@param ty number
---@return number
function Terrain:GetElevation(tx, ty) end

---@param coord iVec2
---@return number
function Terrain:GetElevation(coord) end

---@param x number
---@param y number
---@param z number
---@return number
function Terrain:GetElevation(x, y, z) end

---@param position Vec3
---@return number
function Terrain:GetElevation(position) end

---@param x number
---@param y number
---@return number
function Terrain:GetHeight(x, y) end

---@param coord iVec2
---@return number
function Terrain:GetHeight(coord) end

---@param GetLayerHeightConstraints(numberlayer Vec3
---@param x number
---@param y number
function Terrain:GetLayerHeightConstraints(GetLayerHeightConstraints(numberlayer, x, y) end

---@param GetLayerHeightConstraints(numberlayer Vec3
---@param coord [iVec2](iVec2
function Terrain:GetLayerHeightConstraints(GetLayerHeightConstraints(numberlayer, coord) end

---@param layer number
---@return number
function Terrain:GetLayerScale(layer) end

---@param GetLayerSlopeConstraints(numberlayer Vec3
---@param x number
---@param y number
function Terrain:GetLayerSlopeConstraints(GetLayerSlopeConstraints(numberlayer, x, y) end

---@param GetLayerSlopeConstraints(numberlayer Vec3
---@param coord [iVec2](iVec2
function Terrain:GetLayerSlopeConstraints(GetLayerSlopeConstraints(numberlayer, coord) end

---@param layer number
---@return number
function Terrain:GetLayerTextureMappingMode(layer) end

---@param layer number
---@param x number
---@param y number
---@return number
function Terrain:GetLayerWeight(layer, x, y) end

---@param layer number
---@param coord iVec2
---@return number
function Terrain:GetLayerWeight(layer, coord) end

---@param GetLayers(numberx number[4]
---@param y number
function Terrain:GetLayers(GetLayers(numberx, y) end

---@param GetLayers(iVec2 number[4]
function Terrain:GetLayers(GetLayers(iVec2) end

function Terrain:GetNormal() end

---@param number:Vec3 ty:
---@return function
function Terrain:GetNormal(number:Vec3) end

---@param iVec2:Vec3 coord:
---@return function
function Terrain:GetNormal(iVec2:Vec3) end

---@param Vec3:Vec3 coord:
---@return function
function Terrain:GetNormal(Vec3:Vec3) end

---@param number:Vec3 z:
---@return function
function Terrain:GetNormal(number:Vec3) end

function Terrain:GetNormal() end

---@param inttx const
---@param intty const
---@return float
function Terrain:GetSlope(inttx, intty) end

---@param iVec2&coord const
---@return float
function Terrain:GetSlope(iVec2&coord) end

---@param Vec3&coord const
---@return float
function Terrain:GetSlope(Vec3&coord) end

---@param numberx const
---@param numbery const
---@param numberz const
---@return float
function Terrain:GetSlope(numberx, numbery, numberz) end

---@param x number
---@param y number
---@return boolean
function Terrain:GetTileHidden(x, y) end

---@param coord [iVec2](iVec2
---@return boolean
function Terrain:GetTileHidden(coord) end

---@param path [string](
---@param range Vec2
---@return bool
function Terrain:LoadHeightmap(path, range) end

---@param path [string](
---@param range Vec2
---@param flags number
---@return bool
function Terrain:LoadHeightmap(path, range, flags) end

---@param x number
---@param y number
---@param height number
function Terrain:SetHeight(x, y, height) end

---@param coord iVec2&
---@param height number
function Terrain:SetHeight(coord, height) end

---@param layer number
---@param minheight number
---@param maxheight number
---@param transition number
function Terrain:SetLayerHeightConstraints(layer, minheight, maxheight, transition) end

---@param layer number
---@param scale number
---@return void
function Terrain:SetLayerScale(layer, scale) end

---@param layer number
---@param minheight number
---@param maxheight number
---@param transition number
function Terrain:SetLayerSlopeConstraints(layer, minheight, maxheight, transition) end

---@param layer number
---@param mode number
function Terrain:SetLayerTextureMappingMode(layer, mode) end

---@param layer number
---@param x number
---@param y number
---@param weight number
---@param normalize boolean
function Terrain:SetLayerWeight(layer, x, y, weight, normalize) end

---@param layer number
---@param coord iVec2
---@param weight number
---@param normalize boolean
function Terrain:SetLayerWeight(layer, coord, weight, normalize) end

---@param x number
---@param y number
---@param hidden boolean
function Terrain:SetTileHidden(x, y, hidden) end

---@param coord iVec2
---@param hidden boolean
function Terrain:SetTileHidden(coord, hidden) end

----------------------------
-- Functions
----------------------------

---@param world World
---@param width number
---@param height number
---@return Terrain
function CreateTerrain(world, width, height) end

---@param world World
---@param resolution iVec2
---@return Terrain
function CreateTerrain(world, resolution) end

