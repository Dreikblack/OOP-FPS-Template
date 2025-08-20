---@meta
---@class Asset:Object
---@field path string
---@field packagepath string
---@field properties table
Asset = {}

----------------------------
-- Methods
----------------------------

---@return Asset
function Asset:GetPackage() end

function Asset:Reload() end

---@param flags number
function Asset:Reload(flags) end

---@param path string
---@return boolean
function Asset:Save(path) end

---@param path string
---@param flags number
---@return boolean
function Asset:Save(path, flags) end

