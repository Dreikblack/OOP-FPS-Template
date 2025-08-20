---@meta
---@class Material:Asset
---@field color [Vec4](Vec4)
---@field textures [Texture](Texture)[16]
Material = {}

----------------------------
-- Methods
----------------------------

---@return Vec4
function Material:GetColor() end

---@return number
function Material:GetMetalness() end

---@return number
function Material:GetRoughness() end

---@return ShaderFamily
function Material:GetShaderFamily() end

---@param index number
---@return Texture
function Material:GetTexture(index) end

---@return boolean
function Material:GetTransparent() end

---@param color Vec4
function Material:SetColor(color) end

---@param r number
---@param g number
---@param b number
---@param a number
function Material:SetColor(r, g, b, a) end

---@param displacement number
---@param offset number
function Material:SetDisplacement(displacement, offset) end

---@param metallic number
function Material:SetMetalness(metallic) end

---@param roughness number
function Material:SetRoughness(roughness) end

---@param family ShaderFamily
function Material:SetShaderFamily(family) end

---@param mode boolean
function Material:SetTessellation(mode) end

---@param texture shared_ptr<[Texture](Texture\>
---@param index number
function Material:SetTexture(texture, index) end

---@param mode boolean
function Material:SetTransparent(mode) end

----------------------------
-- Functions
----------------------------

---@return Material
function CreateMaterial() end

---@param path string
---@return Material
function LoadMaterial(path) end

---@param path string
---@param flags number
---@return Material
function LoadMaterial(path, flags) end

---@param stream Stream
---@return Material
function LoadMaterial(stream) end

---@param stream Stream
---@param flags number
---@return Material
function LoadMaterial(stream, flags) end

