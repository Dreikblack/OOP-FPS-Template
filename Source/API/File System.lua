---@meta
---@class File System

----------------------------
-- Functions
----------------------------

---@param url string
---@param localpath string
---@return ASyncDownloadFileInfo
function ASyncDownloadFile(url, localpath) end

---@return string
function AppDir() end

---@return string
function AppPath() end

---@param path string
---@return string
function CasedPath(path) end

---@param path string
function ChangeDir(path) end

---@param path string
---@param recursive boolean
---@return boolean
function CreateDir(path, recursive) end

---@param path string
---@return boolean
function CreateFile(path) end

---@return string
function CurrentDir() end

---@param path string
---@return boolean
function DeleteDir(path) end

---@param path string
---@return boolean
function DeleteFile(path) end

---@param src string
---@param dest string
---@return boolean
function DownloadFile(src, dest) end

---@param path string
---@return string
function ExtractDir(path) end

---@param url string
---@return string
function FetchUrl(url) end

---@param path [string](https://www.lua.org/manual/5.4/manual.html#6.4.1
function FileHidden(path) end

---@param FileSize([string](https://www.lua.org/manual/5.4/manual.html#6.4.1path https://www.lua.org/manual/5.4/manual.html#6.4.1
---@param packages boolean
function FileSize(FileSize([string](https://www.lua.org/manual/5.4/manual.html#6.4.1path, packages) end

---@param FileTime([string](https://www.lua.org/manual/5.4/manual.html#6.4.1path https://www.lua.org/manual/5.4/manual.html#6.4.1
---@param packages boolean
function FileTime(FileTime([string](https://www.lua.org/manual/5.4/manual.html#6.4.1path, packages) end

---@param FileType([string](https://www.lua.org/manual/5.4/manual.html#6.4.1path https://www.lua.org/manual/5.4/manual.html#6.4.1
---@param packages boolean
function FileType(FileType([string](https://www.lua.org/manual/5.4/manual.html#6.4.1path, packages) end

---@return string
function GetPath() end

---@param path string
---@return boolean
function HideFile(path) end

---@param path string
---@return string[]
function LoadDir(path) end

---@param path string
---@param packages boolean
---@return string[]
function LoadDir(path, packages) end

---@param path string
---@return table
function LoadTable(path) end

---@param stream Stream
---@return table
function LoadTable(stream) end

---@param path string
function OpenDir(path) end

function OpenFile() end

---@param string:Stream path:
---@return function
function OpenFile(string:Stream) end

function OpenFile() end

---@param path string
---@return Stream
function ReadFile(path) end

---@param path string
---@param flags number
---@return Stream
function ReadFile(path, flags) end

---@param RealPath(stringpath [string.md](https://www.lua.org/manual/5.4/manual.html#6.4
function RealPath(RealPath(stringpath) end

---@param src string
---@param dest string
---@return boolean
function RenameFile(src, dest) end

---@param path string
---@return boolean
function RunFile(path) end

---@param t table
---@param path string
---@return boolean
function SaveTable(t, path) end

---@param path string
---@return boolean
function ShowFile(path) end

---@param path string
---@return string
function StripAll(path) end

---@param path string
---@return string
function StripDir(path) end

---@param path string
---@return string
function StripExt(path) end

---@param path string
---@return Stream
function WriteFile(path) end

