---@meta
---@class Steamworks
Steamworks = {}

----------------------------
-- Methods
----------------------------

---@param name string
---@param add number
---@return boolean
function Steamworks:AddStat(name, add) end

---@param appid number
---@return boolean
function Steamworks:AppInstalled(appid) end

---@param appid number
---@return boolean
function Steamworks:AppSubscribed(appid) end

---@param lobby number
---@param data string
---@param channel number
---@param sendtype number
---@return boolean
function Steamworks:BroadcastPacket(lobby, data, channel, sendtype) end

---@param lobby number
---@param data Buffer
---@param channel number
---@param sendtype number
---@return boolean
function Steamworks:BroadcastPacket(lobby, data, channel, sendtype) end

---@param lobby number
---@param data userdata
---@param size number
---@param channel number
---@param sendtype number
---@return boolean
function Steamworks:BroadcastPacket(lobby, data, size, channel, sendtype) end

---@param type number
---@param capacity number
---@return number
function Steamworks:CreateLobby(type, capacity) end

---@param appid number
---@return boolean
function Steamworks:DlcInstalled(appid) end

---@return number
function Steamworks:GetAppId() end

---@return number
function Steamworks:GetBuildId() end

---@param name string
---@return number
function Steamworks:GetLeaderboard(name) end

---@param uint64id const
---@param LeaderboardDataRequestrequest const
---@param intstart const
---@param intcount const
---@return userdata
function Steamworks:GetLeaderboardEntries(uint64id, LeaderboardDataRequestrequest, intstart, intcount) end

---@param properties table
---@return userdata
function Steamworks:GetLobbies(properties) end

---@param lobby number
---@return number
function Steamworks:GetLobbyCapacity(lobby) end

---@param lobby number
---@return userdata
function Steamworks:GetLobbyMembers(lobby) end

---@param lobby number
---@return number
function Steamworks:GetLobbyOwner(lobby) end

---@param lobby number
---@param key string
---@return string
function Steamworks:GetLobbyProperty(lobby, key) end

---@param channel number
---@return userdata
function Steamworks:GetPacket(channel) end

---@param name string
---@return number
function Steamworks:GetStat(name) end

---@param userid number
---@return Pixmap
function Steamworks:GetUserAvatar(userid) end

---@return number
function Steamworks:GetUserId() end

---@param userid number
---@return string
function Steamworks:GetUserName(userid) end

---@return boolean
function Steamworks:Initialize() end

---@param lobby number
function Steamworks:InviteFriends(lobby) end

---@param lobbyid number
---@return boolean
function Steamworks:JoinLobby(lobbyid) end

---@param lobbyid number
function Steamworks:LeaveLobby(lobbyid) end

---@param record boolean
function Steamworks:RecordVoice(record) end

---@param userid number
---@param data string
---@param channel number
---@param sendtype number
---@return boolean
function Steamworks:SendPacket(userid, data, channel, sendtype) end

---@param userid number
---@param data Buffer
---@param channel number
---@param sendtype number
---@return boolean
function Steamworks:SendPacket(userid, data, channel, sendtype) end

---@param userid number
---@param data userdata
---@param size number
---@param channel number
---@param sendtype number
---@return boolean
function Steamworks:SendPacket(userid, data, size, channel, sendtype) end

---@param leaderboard number
---@param score number
---@return boolean
function Steamworks:SetLeaderboardScore(leaderboard, score) end

---@param lobby number
---@param capacity number
---@return boolean
function Steamworks:SetLobbyCapacity(lobby, capacity) end

---@param key string
---@param value string
---@return boolean
function Steamworks:SetLobbyProperty(key, value) end

---@param key string
---@param value number
---@return boolean
function Steamworks:SetStat(key, value) end

function Steamworks:Shutdown() end

---@param name string
---@return boolean
function Steamworks:UnlockAchievement(name) end

function Steamworks:Update() end

