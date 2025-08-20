---@meta
---@class Server:Object
Server = {}

----------------------------
-- Methods
----------------------------

---@param number id:
---@param Buffer data:
---@param number channel:
---@param number flags:
function Server:Broadcast(number, Buffer, number, number) end

---@param number id:
---@param string data:
---@param number channel:
---@param number flags:
function Server:Broadcast(number, string, number, number) end

---@param number id:
---@param wstring data:
---@param number channel:
---@param number flags:
function Server:Broadcast(number, wstring, number, number) end

function Server:Disconnect() end

---@return function
function Server:Disconnect() end

function Server:Disconnect() end

function Server:Send() end

---@return function
function Server:Send() end

function Server:Send() end

function Server:Update() end

---@return function
function Server:Update() end

function Server:Update() end

