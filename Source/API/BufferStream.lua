---@meta
---@class BufferStream:Stream
---@field data Buffer

----------------------------
-- Functions
----------------------------

---@return shared_ptr<BufferStream\>
function CreateBufferStream() end

---@param data shared_ptr<Buffer\>
---@return shared_ptr<BufferStream\>
function CreateBufferStream(data) end

---@param data shared_ptr<Buffer\>
---@param WString&path const
---@return shared_ptr<BufferStream\>
function CreateBufferStream(data, WString&path) end

