---@meta
---@class Process:Object
---@field errorstream Stream
---@field path string
---@field readstream Stream
---@field writestream Stream
Process = {}

----------------------------
-- Methods
----------------------------

---@return number
function Process:Close() end

---@return number
function Process:GetStatus() end

----------------------------
-- Functions
----------------------------

---@param path [string](https://www.lua.org/manual/5.4/manual.html#6.1
---@return Process
function CreateProcess(path) end

---@param path [string](https://www.lua.org/manual/5.4/manual.html#6.1
---@param arguments [string](https://www.lua.org/manual/5.4/manual.html#6.1
---@return Process
function CreateProcess(path, arguments) end

