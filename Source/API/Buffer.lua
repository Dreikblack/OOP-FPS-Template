---@meta
---@class Buffer:Object
Buffer = {}

----------------------------
-- Methods
----------------------------

function Buffer:Clear() end

---@param srcoffset number
---@param dst Buffer
---@param dstoffset number
---@param size number
function Buffer:Copy(srcoffset, dst, dstoffset, size) end

---@return userdata
function Buffer:Data() end

---@return number
function Buffer:GetSize() end

---@param position number
---@return number
function Buffer:PeekByte(position) end

---@param position number
---@return number
function Buffer:PeekDouble(position) end

---@param position number
---@return number
function Buffer:PeekFloat(position) end

---@param position number
---@return number
function Buffer:PeekInt(position) end

---@param position number
---@return number
function Buffer:PeekShort(position) end

---@param pos number
---@return string
function Buffer:PeekString(pos) end

---@param pos number
---@param b number
function Buffer:PokeByte(pos, b) end

---@param pos number
---@param n number
function Buffer:PokeDouble(pos, n) end

---@param |Description| Parameter
function Buffer:PokeDouble(|Description|) end

function Buffer:PokeDouble() end

---@param |offsetfromthestartofthebuffer pos
---@param bytes in
function Buffer:PokeDouble(|offsetfromthestartofthebuffer, bytes) end

---@param |valuetoinsert n
function Buffer:PokeDouble(|valuetoinsert) end

---@param pos number
---@param n number
function Buffer:PokeFloat(pos, n) end

---@param |Description| Parameter
function Buffer:PokeFloat(|Description|) end

function Buffer:PokeFloat() end

---@param |offsetfromthestartofthebuffer pos
---@param bytes in
function Buffer:PokeFloat(|offsetfromthestartofthebuffer, bytes) end

---@param |valuetoinsert n
function Buffer:PokeFloat(|valuetoinsert) end

---@param pos number
---@param n number
function Buffer:PokeInt(pos, n) end

---@param |Description| Parameter
function Buffer:PokeInt(|Description|) end

function Buffer:PokeInt() end

---@param |offsetfromthestartofthebuffer pos
---@param bytes in
function Buffer:PokeInt(|offsetfromthestartofthebuffer, bytes) end

---@param |valuetoinsert n
function Buffer:PokeInt(|valuetoinsert) end

---@param pos number
---@param n number
function Buffer:PokeShort(pos, n) end

---@param |Description| Parameter
function Buffer:PokeShort(|Description|) end

function Buffer:PokeShort() end

---@param |offsetfromthestartofthebuffer pos
---@param bytes in
function Buffer:PokeShort(|offsetfromthestartofthebuffer, bytes) end

---@param |valuetoinsert n
function Buffer:PokeShort(|valuetoinsert) end

---@param pos number
---@param s string
function Buffer:PokeString(pos, s) end

---@param |Description| Parameter
function Buffer:PokeString(|Description|) end

function Buffer:PokeString() end

---@param |offsetfromthestartofthebuffer pos
---@param bytes in
function Buffer:PokeString(|offsetfromthestartofthebuffer, bytes) end

---@param |valuetoinsert s
function Buffer:PokeString(|valuetoinsert) end

---@param size number
---@return boolean
function Buffer:Resize(size) end

---@param path string
---@return boolean
function Buffer:Save(path) end

----------------------------
-- Functions
----------------------------

---@param size number
---@return Buffer
function CreateBuffer(size) end

---@param data userdata
---@param size number
---@return Buffer
function CreateStaticBuffer(data, size) end

---@param path string
---@param flags number
---@return Buffer
function LoadBuffer(path, flags) end

