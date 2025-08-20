---@meta
---@class Speaker
Speaker = {}

----------------------------
-- Methods
----------------------------

---@return number
function Speaker:GetPitch() end

---@return number
function Speaker:GetState() end

function Speaker:GetTime() end

---@param number :
---@return function
function Speaker:GetTime(number) end

function Speaker:GetTime() end

function Speaker:Play() end

---@param filter AudioFilter
---@param index number
function Speaker:SetFilter(filter, index) end

function Speaker:SetLooping() end

---@return function
function Speaker:SetLooping() end

function Speaker:SetLooping() end

---@param pitch number
function Speaker:SetPitch(pitch) end

---@param range number
function Speaker:SetRange(range) end

function Speaker:SetTime() end

---@return function
function Speaker:SetTime() end

function Speaker:SetTime() end

----------------------------
-- Functions
----------------------------

---@return Speaker
function CreateSpeaker() end

