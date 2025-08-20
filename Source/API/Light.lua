---@meta
---@class Light:Entity
Light = {}

----------------------------
-- Methods
----------------------------

---@return Vec2
function Light:GetConeAngles() end

---@return number
function Light:GetFalloff() end

---@return Vec2
function Light:GetRange() end

---@return number
function Light:GetShadowMapSize() end

---@param outerconeangle number
---@param innerconeangle number
---@return void
function Light:SetConeAngles(outerconeangle, innerconeangle) end

---@param falloff number
function Light:SetFalloff(falloff) end

---@param nearrange number
---@param farrange` number
function Light:SetRange(nearrange, farrange`) end

---@param farrange` number
function Light:SetRange(farrange`) end

---@param size number
function Light:SetShadowmapSize(size) end

----------------------------
-- Functions
----------------------------

---@param world World
---@return Light
function CreateBoxLight(world) end

---@param world World
---@return Light
function CreateDirectionalLight(world) end

---@param world World
---@param floatrange const
---@return PointLight
function CreatePointLight(world, floatrange) end

---@return SpotLight
function CreateSpotLight() end

