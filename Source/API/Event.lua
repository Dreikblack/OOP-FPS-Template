---@meta
---@class Event
---@field data number
---@field extra Object
---@field id number
---@field position iVec2
---@field size iVec2
---@field source Object
---@field text string

----------------------------
-- Functions
----------------------------

---@return boolean
function EmitEvent() end

---@param id number
---@param source Object
---@param data number
---@return boolean
function EmitEvent(id, source, data) end

---@param id number
---@param source Object
---@param data number
---@param x number
---@param y number
---@param width number
---@param height number
---@return boolean
function EmitEvent(id, source, data, x, y, width, height) end

---@param id number
---@param source Object
---@param data number
---@param x number
---@param y number
---@param width number
---@param height number
---@param extra Object
---@return boolean
function EmitEvent(id, source, data, x, y, width, height, extra) end

---@param id number
---@param source Object
---@param data number
---@param x number
---@param y number
---@param width number
---@param height number
---@param extra Object
---@param text string
---@return boolean
function EmitEvent(id, source, data, x, y, width, height, extra, text) end

function FlushEvents() end

---@param id number
---@param source Widget
---@param callback function
---@param extra Object
function ListenEvent(id, source, callback, extra) end

---@return boolean
function PeekEvent() end

---@return Event
function WaitEvent() end

