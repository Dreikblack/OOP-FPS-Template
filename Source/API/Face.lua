---@meta
---@class Face:Object
---@field plane [Plane](Plane)
Face = {}

----------------------------
-- Methods
----------------------------

---@param v number
---@return number
function Face:AddIndice(v) end

---@return Material
function Face:GetMaterial() end

---@param axis number
---@return Plane
function Face:GetTextureMappingPlane(axis) end

---@return number
function Face:GetTextureMappingRotation() end

---@return Vec2
function Face:GetTextureMappingScale() end

---@return Plane
function Face:GetTextureMappingTranslation() end

---@param material Material
function Face:SetMaterial(material) end

---@param plane [Plane](Plane
---@param axis number
function Face:SetTextureMappingPlane(plane, axis) end

---@param angle number
function Face:SetTextureMappingRotation(angle) end

---@param x number
---@param y number
function Face:SetTextureMappingScale(x, y) end

---@param scale [Vec2](Vec2
function Face:SetTextureMappingScale(scale) end

---@param x number
---@param y number
function Face:SetTextureMappingTranslation(x, y) end

---@param scale [Vec2](Vec2
function Face:SetTextureMappingTranslation(scale) end

