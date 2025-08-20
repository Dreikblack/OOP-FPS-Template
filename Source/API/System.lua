---@meta
---@class System

----------------------------
-- Functions
----------------------------

---@param command string
---@param stream Stream
---@return number
function Command(command, stream) end

---@param |Description Parameter
function Command(|Description) end

function Command() end

---@param |commandtoexecute command
function Command(|commandtoexecute) end

---@param |optionalstreamforcapturingprintedoutput stream
function Command(|optionalstreamforcapturingprintedoutput) end

---@param message string
---@return int
function Confirm(message) end

---@param message string
---@param title string
---@return int
function Confirm(message, title) end

---@param message string
---@param title string
---@param serious boolean
---@return int
function Confirm(message, title, serious) end

---@param precise boolean
---@return number
function GetMemoryUsage(precise) end

---@return number
function Millisecs() end

---@param message string
function Notify(message) end

---@param message string
---@param title string
function Notify(message, title) end

---@param message string
---@param title string
---@param serious boolean
function Notify(message, title, serious) end

---@param value string
---@param linereturn boolean
function Print(value, linereturn) end

---@param value number
---@param linereturn boolean
function Print(value, linereturn) end

---@param value boolean
---@param linereturn boolean
function Print(value, linereturn) end

---@param message string
---@return number
function Proceed(message) end

---@param message string
---@param title string
---@return number
function Proceed(message, title) end

---@param message string
---@param title string
---@param serious boolean
---@return number
function Proceed(message, title, serious) end

---@return string
function RequestDir() end

---@param title string
---@return string
function RequestDir(title) end

---@param title string
---@param dir string
---@return string
function RequestDir(title, dir) end

---@return string
function RequestFile() end

---@param title string
---@return string
function RequestFile(title) end

---@param title string
---@param file string
---@return string
function RequestFile(title, file) end

---@param title string
---@param file string
---@param filetypes string
---@return string
function RequestFile(title, file, filetypes) end

---@param title string
---@param file string
---@param filetypes string
---@param defaulttype number
---@return string
function RequestFile(title, file, filetypes, defaulttype) end

---@param title string
---@param file string
---@param filetypes string
---@param defaulttype number
---@param save boolean
---@return string
function RequestFile(title, file, filetypes, defaulttype, save) end

---@param message string
function RuntimeError(message) end

---@param time number
function Sleep(time) end

---@param |Description Parameter
function Sleep(|Description) end

function Sleep() end

---@param |thenumberofmillisecondstopause. time
function Sleep(|thenumberofmillisecondstopause.) end

