---@meta
---@class Scene:Object
---@field entities Entity[]
---@field path string
Scene = {}

----------------------------
-- Methods
----------------------------

---@param uuid string
---@return Entity
function Scene:GetEntity(uuid) end

----------------------------
-- Functions
----------------------------

---@param world World
---@param path string
---@return Scene
function LoadScene(world, path) end

---@param world World
---@param path string
---@param flags number
---@return Scene
function LoadScene(world, path, flags) end

---@param world World
---@param path string
---@param flags number
---@return Scene
function LoadScene(world, path, flags, extra) end

---@param world World
---@param stream Stream
---@param binstream Stream
---@return Scene
function LoadScene(world, stream, binstream) end

---@param world World
---@param stream Stream
---@param binstream Stream
---@param flags number
---@return Scene
function LoadScene(world, stream, binstream, flags) end

---@param world World
---@param stream Stream
---@param binstream Stream
---@param flags number
---@return Scene
function LoadScene(world, stream, binstream, flags, extra) end

