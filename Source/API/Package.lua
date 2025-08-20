---@meta
---@class Package:Asset
Package = {}

----------------------------
-- Methods
----------------------------

---@param path string
---@param data Buffer
---@return boolean
function Package:AddFile(path, data) end

---@return boolean
function Package:Close() end

---@param path string
---@return boolean
function Package:DeleteFile(path) end

---@param path string
---@param string&dest const
---@return boolean
function Package:ExtractFile(path, string&dest) end

---@return number
function Package:FileSize() end

---@return number
function Package:FileTime() end

---@return number
function Package:FileType() end

---@param path string
---@return table
function Package:LoadDir(path) end

---@param path string
---@return Stream
function Package:ReadFile(path) end

function Package:Restrict() end

---@param password string
function Package:SetPassword(password) end

----------------------------
-- Functions
----------------------------

---@param path string
---@return Package
function CreatePackage(path) end

---@param path string
---@return Package
function LoadPackage(path) end

---@param path string
---@param flags number
---@return Package
function LoadPackage(path, flags) end

