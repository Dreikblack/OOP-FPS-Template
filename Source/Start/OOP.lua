local Interfaces = {}

-- methods: { methodName = function() ... end, ... }
function CreateInterface(name, methods)
    local interface = {
        name = name,
        methods = methods or {}
    }
    Interfaces[name] = interface
    return interface
end

function GetComponentByInterface(entity, interfaceName)
    if not entity or not interfaceName then
        return nil
    end
    for n = 1, #entity.components do
        if type(entity.components[n]["HasInterface"]) == "function" and entity.components[n]:HasInterface(interfaceName) then
            return entity.components[n]
        end
    end
    return nil
end

local function ImplementsInterface(obj, interfaceName)
    local interface = Interfaces[interfaceName]
    if not interface then
        -- error("Interface "..interfaceName.." not found")
        return false
    end
    for methodName, defaultFunc in pairs(interface.methods) do
        if type(obj[methodName]) ~= "function" then
            -- if no function, then use default function
            obj[methodName] = defaultFunc
        end
    end
    return true
end

function CreateClass(name, baseClass)
    local class = {}
    class.__name = name
    class.super = baseClass
    class.__interfaces = {}

    --to get vars and functions from parent class
    local function CopyFromParent(parent)
        if not parent then
            return
        end
        CopyFromParent(parent.super)
        for k, v in pairs(parent) do
            if k ~= "super" and k ~= "__name" and k ~= "__interfaces" then
                if class[k] == nil then
                    class[k] = v
                end
            end
        end
    end

    CopyFromParent(baseClass)

    function class:New(o)
        o = o or {}
        for k, v in pairs(class) do
            if type(v) == "function" or type(v) ~= "table" then
                o[k] = v
            end
        end
        o.__class = class
        o.__name = class.__name
        return o
    end

    function class:AddInterface(interfaceName)
        table.insert(class.__interfaces, interfaceName)
        ImplementsInterface(class, interfaceName)
    end

    function class:HasInterface(interfaceName)
        for _, name in ipairs(class.__interfaces) do
            if name == interfaceName then
                return true
            end
        end
        return false
    end

    return class
end

function GetComponentByBaseClass(entity, baseClass)
    if not entity or not baseClass then
        return nil
    end
    for n = 1, #entity.components do
        local mt = getmetatable(#entity.components[n])
        while mt do
            if mt == baseClass then
                return #entity.components[n]
            end
            mt = getmetatable(mt)
        end
    end
    return nil
end

function GetComponentByBaseClassName(entity, baseClassName)
    if not entity or not baseClassName then
        return nil
    end
    for n = 1, #entity.components do
        local mt = getmetatable(#entity.components[n])
        while mt do
            if mt.__name and mt.__name == baseClassName then
                return #entity.components[n]
            end
            mt = getmetatable(mt)
        end
    end
    return nil
end

local dir = LoadDir("/Source/Interfaces/")
for n = 1, #dir do
    require("Interfaces/" .. StripExt(dir[n]))
end