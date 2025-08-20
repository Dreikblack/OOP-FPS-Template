---@meta
---@class World:Object
---@field animationstats AnimationStats
---@field collisions Collision[]
---@field frequency number
---@field physicsstats PhysicsStats
---@field renderstats RenderStats
World = {}

----------------------------
-- Methods
----------------------------

function World:ClearCollisionResponses() end

---@return Vec3
function World:GetAmbientLight() end

---@param type1 number
---@param type2 number
---@return number
function World:GetCollisionResponse(type1, type2) end

---@param minbounds Vec3
---@param maxbounds Vec3
---@return Entity[]
function World:GetEntitiesInArea(minbounds, maxbounds) end

---@param |Description Parameter
function World:GetEntitiesInArea(|Description) end

function World:GetEntitiesInArea() end

---@param |lowerboundsofarea minbounds
function World:GetEntitiesInArea(|lowerboundsofarea) end

---@param |upperboundsofarea maxbounds
function World:GetEntitiesInArea(|upperboundsofarea) end

---@param tag string
---@return Entity[]
function World:GetTaggedEntities(tag) end

---@return number
function World:GetTime() end

---@param p0 Vec3
---@param p1 Vec3
---@return PickInfo
function World:Pick(p0, p1) end

---@param p0 Vec3
---@param p1 Vec3
---@param radius number
---@return PickInfo
function World:Pick(p0, p1, radius) end

---@param p0 Vec3
---@param p1 Vec3
---@param radius number
---@param closest boolean
---@return PickInfo
function World:Pick(p0, p1, radius, closest) end

---@param p0 Vec3
---@param p1 Vec3
---@param radius number
---@param closest boolean
---@param filter function
---@return PickInfo
function World:Pick(p0, p1, radius, closest, filter) end

---@param p0 Vec3
---@param p1 Vec3
---@param radius number
---@param closest boolean
---@param filter function
---@return PickInfo
function World:Pick(p0, p1, radius, closest, filter, extra) end

---@param record boolean
function World:RecordStats(record) end

---@param framebuffer Framebuffer
function World:Render(framebuffer) end

---@param framebuffer Framebuffer
---@param vsync boolean
function World:Render(framebuffer, vsync) end

---@param framebuffer Framebuffer
---@param vsync boolean
---@param maxframerate number
function World:Render(framebuffer, vsync, maxframerate) end

---@param r number
---@param g number
---@param b number
function World:SetAmbientLight(r, g, b) end

---@param ambientlight Vec3
function World:SetAmbientLight(ambientlight) end

---@param type1 number
---@param type2 number
---@param response number
function World:SetCollisionResponse(type1, type2, response) end

function World:SetEnvironmentMap() end

---@param gravity Vec3
function World:SetGravity(gravity) end

---@param x number
---@param y number
---@param z number
function World:SetGravity(x, y, z) end

---@param intensity number
function World:SetIblIntensity(intensity) end

function World:Update() end

---@param frequency number
function World:Update(frequency) end

---@param frequency number
---@param threads number
function World:Update(frequency, threads) end

---@param frequency number
---@param threads number
---@param iterations number
function World:Update(frequency, threads, iterations) end

---@param frequency number
---@param threads number
---@param iterations number
---@param substeps number
function World:Update(frequency, threads, iterations, substeps) end

----------------------------
-- Functions
----------------------------

---@return World
function CreateWorld() end

