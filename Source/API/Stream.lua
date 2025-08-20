---@meta
---@class Stream
Stream = {}

----------------------------
-- Methods
----------------------------

---@param bytes number
---@return boolean
function Stream:Align(bytes) end

function Stream:Close() end

---@return boolean
function Stream:Eof() end

function Stream:Flush() end

---@return Package
function Stream:GetPackage() end

---@return number
function Stream:GetPosition() end

---@return number
function Stream:GetSize() end

---@param data Buffer
---@param offset number
---@param size number
---@return number
function Stream:Read(data, offset, size) end

---@param data userdata
---@param offset number
---@param size number
---@return number
function Stream:Read(data, offset, size) end

---@return number
function Stream:ReadByte() end

---@return number
function Stream:ReadDouble() end

---@return number
function Stream:ReadFloat() end

---@return number
function Stream:ReadInt() end

---@return string
function Stream:ReadLine() end

---@return string
function Stream:ReadString() end

---@param maxlength number
---@return string
function Stream:ReadString(maxlength) end

---@param pos number
function Stream:Seek(pos) end

---@param data Buffer
---@param offset number
---@param size number
---@return number
function Stream:Write(data, offset, size) end

---@param data userdata
---@param offset number
---@param size number
---@return number
function Stream:Write(data, offset, size) end

---@param b number
function Stream:WriteByte(b) end

---@param f number
function Stream:WriteDouble(f) end

---@param f number
function Stream:WriteFloat(f) end

---@param f number
function Stream:WriteInt(f) end

---@param s string
function Stream:WriteLine(s) end

---@param i number
function Stream:WriteShort(i) end

---@param s string
function Stream:WriteString(s) end

---@param s string
---@param terminate boolean
function Stream:WriteString(s, terminate) end

