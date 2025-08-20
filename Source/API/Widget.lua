---@meta
---@class Widget:Object
---@field items WidgetItem[]
---@field kids Widget[]
---@field parent Widget
---@field position iVec2
---@field size iVec2
---@field text string
Widget = {}

----------------------------
-- Methods
----------------------------

---@param text string
---@return number
function Widget:AddItem(text) end

---@param text string
---@param selected boolean
---@return number
function Widget:AddItem(text, selected) end

---@param text string
---@param icon Icon
---@return Widget
function Widget:AddNode(text, icon) end

function Widget:ClearItems() end

---@return iVec2
function Widget:ClientSize() end

---@return void
function Widget:Disable() end

function Widget:Enable() end

---@return boolean
function Widget:GetHidden() end

---@return Interface
function Widget:GetInterface() end

---@param item number
---@return string
function Widget:GetItemText(item) end

---@return Widget
function Widget:GetParent() end

---@param global boolean
---@return iVec2
function Widget:GetPosition(global) end

---@return number
function Widget:GetSelectedItem() end

---@return Widget
function Widget:GetSelectedNode() end

---@param GetSize( iVec2
function Widget:GetSize(GetSize() end

---@return number
function Widget:GetState() end

---@return string
function Widget:GetText() end

---@return number
function Widget:GetValue() end

---@param x number
---@param y number
---@param width number
---@param height number
function Widget:Paint(x, y, width, height) end

function Widget:Paint() end

---@param index number
function Widget:RemoveItem(index) end

---@param index number
function Widget:SelectItem(index) end

---@param node Widfet
---@param selected boolean
function Widget:SelectNode(node, selected) end

---@param r number
---@param g number
---@param b number
---@param a number
---@param index number
function Widget:SetColor(r, g, b, a, index) end

---@param color Vec4
---@param index number
function Widget:SetColor(color, index) end

---@param mode boolean
function Widget:SetFontBold(mode) end

---@param scale number
function Widget:SetFontScale(scale) end

---@param hide boolean
function Widget:SetHidden(hide) end

---@param icon Icon
---@param alignment number
---@param scale number
function Widget:SetIcon(icon, alignment, scale) end

---@param index number
---@param state number
function Widget:SetItemState(index, state) end

---@param index number
---@param state boolean
function Widget:SetItemState(index, state) end

---@param index number
---@param text string
function Widget:SetItemText(index, text) end

---@param left number
---@param right number
---@param top number
---@param bottom number
function Widget:SetLayout(left, right, top, bottom) end

---@param parent Widget
function Widget:SetParent(parent) end

---@param parent Widget
---@param position number
function Widget:SetParent(parent, position) end

---@param pixmap Pixmap
---@param alignment number
function Widget:SetPixmap(pixmap, alignment) end

---@param progress number
function Widget:SetProgress(progress) end

---@param x number
---@param y number
---@param increments number
function Widget:SetRange(x, y, increments) end

---@param x number
---@param y number
---@param width number
---@param height number
function Widget:SetShape(x, y, width, height) end

---@param position iVec2
---@param size iVec2
function Widget:SetShape(position, size) end

---@param state number
function Widget:SetState(state) end

---@param state boolean
function Widget:SetState(state) end

---@param text string
function Widget:SetText(text) end

---@param texture cTexture
---@param alignment number
function Widget:SetTexture(texture, alignment) end

---@param value number
function Widget:SetValue(value) end

----------------------------
-- Functions
----------------------------

---@param text string
---@param x number
---@param y number
---@param width number
---@param height number
---@param parent Widget
---@return Widget
function CreateButton(text, x, y, width, height, parent) end

---@param text string
---@param x number
---@param y number
---@param width number
---@param height number
---@param parent Widget
---@param style number
---@return Widget
function CreateButton(text, x, y, width, height, parent, style) end

---@param x number
---@param y number
---@param width number
---@param height number
---@param parent Widget
---@return Widget
function CreateComboBox(x, y, width, height, parent) end

---@param text string
---@param x number
---@param y number
---@param width number
---@param height number
---@param parent Widget
---@return Widget
function CreateLabel(text, x, y, width, height, parent) end

---@param text string
---@param x number
---@param y number
---@param width number
---@param height number
---@param parent Widget
---@param style number
---@return Widget
function CreateLabel(text, x, y, width, height, parent, style) end

---@param x number
---@param y number
---@param width number
---@param height number
---@param parent Widget
---@return Widget
function CreateListBox(x, y, width, height, parent) end

---@param text string
---@param parent Widget
---@return Widget
function CreateMenu(text, parent) end

---@param x number
---@param y number
---@param width number
---@param height number
---@param parent Widget
---@return Widget
function CreatePanel(x, y, width, height, parent) end

---@param x number
---@param y number
---@param width number
---@param height number
---@param parent Widget
---@param style number
---@return Widget
function CreatePanel(x, y, width, height, parent, style) end

---@param intx const
---@param inty const
---@param intwidth const
---@param intheight const
---@param parent Widget
---@return Widget
function CreateProgressBar(intx, inty, intwidth, intheight, parent) end

---@param x number
---@param y number
---@param width number
---@param height number
---@param parent Widget
---@return Widget
function CreateSlider(x, y, width, height, parent) end

---@param x number
---@param y number
---@param width number
---@param height number
---@param parent Widget
---@param style number
---@return Widget
function CreateSlider(x, y, width, height, parent, style) end

---@param x number
---@param y number
---@param width number
---@param height number
---@param parent Widget
---@return Widget
function CreateTabber(x, y, width, height, parent) end

---@param x number
---@param y number
---@param width number
---@param height number
---@param parent Widget
---@return Widget
function CreateTextArea(x, y, width, height, parent) end

---@param x number
---@param y number
---@param width number
---@param height number
---@param parent Widget
---@param style number
---@return Widget
function CreateTextArea(x, y, width, height, parent, style) end

---@param x number
---@param y number
---@param width number
---@param height number
---@param parent Widget
---@return Widget
function CreateTextField(x, y, width, height, parent) end

---@param x number
---@param y number
---@param width number
---@param height number
---@param parent Widget
---@param style number
---@return Widget
function CreateTextField(x, y, width, height, parent, style) end

---@param x number
---@param y number
---@param width number
---@param height number
---@param parent Widget
---@return Widget
function CreateTreeView(x, y, width, height, parent) end

---@param x number
---@param y number
---@param width number
---@param height number
---@param parent Widget
---@param style number
---@return Widget
function CreateTreeView(x, y, width, height, parent, style) end

