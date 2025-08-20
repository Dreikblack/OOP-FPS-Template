function isnumber(n)
    return type(n) == "number"
end

function isstring(n)
    return type(n) == "string"
end

function isboolean(n)
    return type(n) == "boolean"
end

function istable(n)
    return type(n) == "table"
end

function isfunction(n)
    return type(n) == "function"
end

function isuserdata(n)
    return type(n) == "userdata"
end
