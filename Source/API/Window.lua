---@meta
---@class Window:[Object](Object)
---@field display Display
---@field position [iVec2](iVec2)
---@field size [iVec2](iVec2)
---@field style number
---@field text string
Window = {}

----------------------------
-- Methods
----------------------------

function Window:Activate() end

---@return iVec2
function Window:ClientSize() end

---@return boolean
function Window:Closed() end

function Window:FlushKeys() end

function Window:FlushMouse() end

---@return boolean
function Window:GetHidden() end

---@return Vec3
function Window:GetMouseAxis() end

---@return iVec3
function Window:GetMousePosition() end

---@return iVec2
function Window:GetPosition() end

---@return iVec2
function Window:GetSize() end

---@param key number
---@return boolean
function Window:KeyDown(key) end

---@param key number
---@return boolean
function Window:KeyHit(key) end

function Window:Maximize() end

---@return boolean
function Window:Maximized() end

function Window:Minimize() end

---@return boolean
function Window:Minimized() end

---@param button number
---@return boolean
function Window:MouseDown(button) end

---@param button number
---@return boolean
function Window:MouseHit(button) end

function Window:Restore() end

---@param cursor number
function Window:SetCursor(cursor) end

---@param hide boolean
function Window:SetHidden(hide) end

---@param width number
---@param height number
function Window:SetMinSize(width, height) end

---@param x number
---@param y number
function Window:SetMousePosition(x, y) end

---@param coords iVec2
function Window:SetMousePosition(coords) end

---@param number x:
---@param number y:
---@param number width:
---@param number height:
function Window:SetShape(number, number, number, number) end

---@param position iVec2
---@param size iVec2
function Window:SetShape(position, size) end

----------------------------
-- Functions
----------------------------

---@return Window
function ActiveWindow() end

---@param title string
---@param x number
---@param y number
---@param width number
---@param height number
---@param display Display
---@return Window
function CreateWindow(title, x, y, width, height, display) end

---@param title string
---@param x number
---@param y number
---@param width number
---@param height number
---@param display Display
---@param style number
---@return Window
function CreateWindow(title, x, y, width, height, display, style) end

---@param title string
---@param x number
---@param y number
---@param width number
---@param height number
---@param parent Window
---@return Window
function CreateWindow(title, x, y, width, height, parent) end

---@param title string
---@param x number
---@param y number
---@param width number
---@param height number
---@param parent Window
---@param style number
---@return Window
function CreateWindow(title, x, y, width, height, parent, style) end

---@param x number
---@param y number
---@param src Window
---@param dst Window
---@return iVec2
function TransformCoord(x, y, src, dst) end

---@param coord iVec2
---@param src Window
---@param dst Window
---@return iVec2
function TransformCoord(coord, src, dst) end

---@param |Description Parameter
function TransformCoord(|Description) end

---@param |--- --
function TransformCoord(|---) end

---@param |Xcomponentofthecoordinatetotransform x
function TransformCoord(|Xcomponentofthecoordinatetotransform) end

---@param |Ycomponentofthecoordinatetotransform y
function TransformCoord(|Ycomponentofthecoordinatetotransform) end

---@param |coordinatetotransform coord
function TransformCoord(|coordinatetotransform) end

---@param |sourcewindowtotransformthecoordinatefrom src
---@param nilforthedesktop or
function TransformCoord(|sourcewindowtotransformthecoordinatefrom, nilforthedesktop) end

---@param |destinationwindowtotransformthecoordinateto dst
---@param nilforthedesktop or
function TransformCoord(|destinationwindowtotransformthecoordinateto, nilforthedesktop) end

