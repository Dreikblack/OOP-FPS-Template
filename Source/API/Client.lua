---@meta
---@class Client:Object
Client = {}

----------------------------
-- Methods
----------------------------

function Client:Send() end

---@return function
function Client:Send() end

function Client:Send() end

---@param user-definedmessageID number:
---@return id
function Client:Send(user-definedmessageID) end

---@param types:stringorbinarydatatosend various
---@param nilifthemessageonlyconsistsoftheID or
---@return data
function Client:Send(types:stringorbinarydatatosend, nilifthemessageonlyconsistsoftheID) end

---@param optionalchanneltosendin optional:
---@param orderedmessages for
---@return channel
function Client:Send(optionalchanneltosendin, orderedmessages) end

---@param optionalmessageflags optional:
---@param beMESSAGE_DEFAULToranycombinationofMESSAGE_SEQUENCED can
---@param MESSAGE_BUFFERED. and
---@return flags
function Client:Send(optionalmessageflags, beMESSAGE_DEFAULToranycombinationofMESSAGE_SEQUENCED, MESSAGE_BUFFERED.) end

function Client:Update() end

function Client:Update() end

---@param timeout int
---@return Message
function Client:Update(timeout) end

function Client:Update() end

function Client:Update() end

----------------------------
-- Functions
----------------------------

---@param string host:
---@param number:Client port:
function CreateClient(string, number:Client) end

---@param IPaddresstoconnectto `host`:
function CreateClient(IPaddresstoconnectto) end

---@param portnumbertouse optional
---@param is8888 default
---@return `port`:
function CreateClient(portnumbertouse, is8888) end

