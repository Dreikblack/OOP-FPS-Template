---@meta
---@class Component
Component = {}

----------------------------
-- Methods
----------------------------

---@param collidedentity Entity
---@param position Vec3
---@param normal Vec3
---@param speed number
---@return void
function Component:Collide(collidedentity, position, normal, speed) end

---@param properties table
---@param binstream Stream
---@param scene Scene
---@param flags number
---@return boolean
function Component:Load(properties, binstream, scene, flags) end

function Component:Start() end

function Component:Update() end

