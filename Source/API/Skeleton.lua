---@meta
---@class Skeleton:Object
---@field root Bone
Skeleton = {}

----------------------------
-- Methods
----------------------------

---@param name string
---@return Bone
function Skeleton:FindBone(name) end

---@param name string
---@param cased boolean
---@return Bone
function Skeleton:FindBone(name, cased) end

