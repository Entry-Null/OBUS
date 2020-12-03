loadstring = load
local Generate = {Dead = false, Types = {"Function",
    "Boolean", "Loop"}, Functions = {}, LuaFunctions = {"https://pastebin.com/WRvBE8123", "https://pastebin.com/S[QWExvBE88G", "error", "rawget", "rawset", "require", "rawequal", "type", "tonumber", "tostring", "table.remove", "table.insert", "table.sort", "table.concat", "ipairs", "pcall", "print", "assert", "setfenv", "setmetatable", "string.rep", "string.reverse", "string.upper", "string.sub", "string.dump", "string.find", "string.format", "string.gsub", "string.gmatch", "string.len", "string.lower", "string.char", "string.byte", "string.match", "debug.traceback", "getfenv", "getmetatable", "load", "loadstring", "pcall", "coroutine.wrap", "coroutine.resume", "coroutine.running", "coroutine.yield", "coroutine.status", "coroutine.create", "math.exp", "math.rad", "math.random", "math.randomseed", "math.tan", "math.tanh", "math.pow", "math.abs", "math.acos", "math.asin", "math.atan", "math.atan2", "math.sin", "math.sinh", "math.sqrt", "math.deg", "math.fmod", "math.floor", "math.frexp", "math.log", "math.ldexp", "math.cos", "math.ceil", "math.cosh", "math.max", "math.min", "math.modf"}, Memes = {"loadstring = print", "Jews are vampires", "Take a stand join the clan WHITE POWER", "Imagine being black", "BLM Is terroist group", "https://pastebin.com/WRvBE88G", "々ㇱぢ々ぐギぢぎ々ギㇱ々", "々ㇱぢ々ぐギぢぎ々ギㇱ々", "々ㇱぢ々ぐㇱ々", "https://pastebin.com/WRE82G", "https://pastebin.com/SRiBX28s"}}
table.insert(Generate.Memes, "Number " .. 1 + #Generate.Memes .. " math.rawget(ぢ々ぐギぢぎ々ギ)")
function string.mixcase(sef)
    seed()
    return sef:gsub(".", function(c)
        return string[({"lower", "upper"})[math.random(2)]](c) or c or ""
    end)
end
function Generate.Name(len, func)
    print("Name")
    seed()
    len = tonumber(len or 7) or 7
    len = len + math.random(-1, 1)
    if len < 1 then
        len = 1
    end
    local n
    repeat
        seed()
        print(n)
        n = tostring(("x"):rep(len):gsub(".", function(...)
            return string[({"lower", "upper"})[math.random(2)]](string.char(math.random(65, 90)))
        end))
    until not (n == "in" or n == "for" or n == "do" or n == "then")
    if func and not Generate.Dead then
        table.insert(Generate.Functions, n)
    end
    table.insert(Generate.Memes, n)
    return n
end
function Generate.String(len)
    seed()
    print("Name")
    if math.random(4) > 1 then
        return '"' .. string[({"lower", "upper", "mixcase"})[math.random(3)]](Generate.Memes[math.random(#Generate.Memes)]) .. '"'
    end
    len = tonumber(len or 7 + math.random(-1, 1)) or 7 + math.random(-1, 1)
    if len < 1 then
        len = 1
        return '"' .. string[({"lower", "upper"})[math.random(2)]](string.char(math.random(65, 90))) .. '"'
    end
    if len == 1 then
        return '"' .. string[({"lower", "upper"})[math.random(2)]](string.char(math.random(65, 90))) .. '"'
    end
    return '"' .. tostring(("x"):rep(len):gsub(".", function(...)
        seed()
        return string[({"lower", "upper"})[math.random(2)]](string.char(math.random(65, 90)))
    end)) .. '"'
end
function Generate.Bool(bool, num)
    print("Bool")
    seed()
    local str = ""
    num = tonumber(num or 2)
    if bool == nil then
        bool = ({true, false})[math.random(2)]
    end
    for k = 1, num do
        seed()
        if k > 1 then
            str = str .. " " .. (function()
                seed()
                return tostring(1 == math.random(2) and "and" or "or")
            end)() .. " "
        end
        str = str .. Generate.Boolean(bool)
    end
    return str
end
function Generate.Syntax(data, bran, nils)
    print("Syntax:", bran)
    seed()
    bran = tonumber(bran or 0) or 0
    assert(type(data) == "table", "Table expected.")
    assert(type(data[1]) == "string", "Function name invalid.    " .. type(data[1]) .. ".    " .. tostring(data[1] == nil) .. ".    " .. tostring((function()
        if type(data[1]) == "table" then
            for k, v in pairs(data[1]) do
                print(k, v)
            end
        else
            print(data[1])
        end
        return ""
    end)()))
    local s = data[1] .. "("
    table.remove(data, 1)
    local args = {unpack(data)}
    local comma = false
    while #args > 0 do
        seed()
        local arg = args[1]
        if arg then
            if type(arg) == "table" then
                arg = arg[math.random(#arg)]
            end
            if arg:sub(1, 1) == "_" and math.random(2) == 2 then
                arg = arg:sub(2)
            end
        end
        if arg == "snum" then
            s = s .. tostring(comma and ", " or "")
            s = s .. tostring(math.random(-10, 3))
            comma = true
        elseif arg == "num" then
            s = s .. tostring(comma and ", " or "")
            s = s .. (function()
                seed()
                local n = 0
                if math.random(2) == 2 then
                    n = n + math.random(-9 ^ 9, 9 ^ 9)
                else
                    n = n + math.random()
                end
                if math.random(2) == 2 then
                    n = -math.random() + n
                elseif math.random(2) == 2 then
                    n = math.random() + n
                end
                return tostring(n)
            end)()
            comma = true
        elseif arg == "-num" then
            s = s .. tostring(comma and ", " or "")
            s = s .. (function()
                seed()
                local n = 0
                if math.random(2) == 2 then
                    n = n + math.random(-9 ^ 9, 9 ^ 9)
                else
                    n = n + math.random()
                end
                if math.random(2) == 2 then
                    n = -math.random() + n
                elseif math.random(2) == 2 then
                    n = math.random() + n
                end
                return "-" .. tostring(math.abs(n))
            end)()
            comma = true
        elseif arg == "+num" then
            s = s .. tostring(comma and ", " or "")
            s = s .. (function()
                seed()
                local n = 0
                if math.random(2) == 2 then
                    n = n + math.random(-9 ^ 9, 9 ^ 9)
                else
                    n = n + math.random()
                end
                if math.random(2) == 2 then
                    n = -math.random() + n
                elseif math.random(2) == 2 then
                    n = math.random() + n
                end
                return tostring(math.abs(n))
            end)()
            comma = true
        elseif arg == "string" then
            s = s .. tostring(comma and ", " or "")
            s = s .. '"' .. Generate.Name(math.random(2, 40)) .. '"'
            comma = true
        elseif arg == "function" then
            s = s .. tostring(comma and ", " or "")
            s = s .. Generate.LuaFunctions[math.random(#Generate.LuaFunctions)]
            comma = true
        elseif arg == "upvalue" then
            s = s .. tostring(comma and ", " or "")
            s = s .. Generate.Upvalue(1 + bran, true, nils)
            comma = true
        elseif arg == "cnum" then
            s = s .. tostring(comma and ", " or "")
            s = s .. string.byte(string[({"lower", "upper"})[math.random(2)]](string.char(math.random(65, 90))))
            comma = true
        elseif arg == "char" then
            s = s .. tostring(comma and ", " or "") .. "\"" .. string[({"lower", "upper"})[math.random(2)]](string.char(math.random(65, 90))) .. "\""
        elseif arg == "regstring" then
            s = s .. tostring(comma and ", " or "") .. '"' .. string.rep(".", math.random(6)) .. '"'
        elseif arg == "table" then
            s = s .. tostring(comma and ", " or "") .. Generate.Table(1 + bran, true, nils)
            comma = true
        end
        table.remove(args, 1)
    end
    return s .. ")"
end
local ln = nil
function Generate.Number()
    local n = 0
    repeat
        seed()
        if math.random(2) == 2 then
            n = n + math.random(-9 ^ 9, 9 ^ 9)
        elseif math.random(2) == 2 then
            n = n + math.random(-1250, 1250)
        else
            n = n + math.random()
        end
        if math.random(2) == 2 then
            n = -math.random() + n
        elseif math.random(2) == 2 then
            n = math.random() + n
        end
    until n ~= ln
    ln = n
    return tostring(n)
end
function Generate.Upvalue(branch, rec, nils)
    local bran = tonumber(branch or 0)
    print("Upvalue:", bran)
    seed()
    if bran > options.MaxBranch and rec then
        return ({Generate.Bool(), '"' .. Generate.Name(math.random(4, 20), branch == 0) .. '"', Generate.Number(), Generate.Table(bran + 1, true), Generate.LuaFunctions[math.random(#Generate.LuaFunctions)], "not nil", '"Function(waffenprotect(IllIlIIIIl))"'})[math.random(9)] or '"Function(waffenprotect(IlIIlIlIIIIl))"'
    elseif bran > options.MaxBranch then
        return ""
    end
    local s = ""
    local r = math.random(5)
    if not rec then
        if math.random(2) == 2 then
            s = "local "
        end
        s = s .. Generate.Name(math.random(4, 9)) .. " = "
    end
    if 1 == r then
        local n = 0
        if math.random(2) == 2 then
            n = n + math.random(-9 ^ 9, 9 ^ 9)
        else
            n = n + math.random()
        end
        if math.random(2) == 2 then
            n = -math.random() + n
        elseif math.random(2) == 2 then
            n = math.random() + n
        end
        s = s .. tostring(n)
    elseif 2 == r then
        if math.random(3) == 3 then
            s = s .. "#"
        end
        s = s .. Generate.String(math.random(2, 32))
    elseif 3 == r then
        local t = {{"string.sub", "string", "num", "_num"}, {"math.random", "-num", "+num"}, {"string.gsub", "string", {"regstring", "string"}, "string"}, {"string.rep", "string", "snum"}, {"math.abs", "num"}, {"string.len", "string"}, {"string.lower", "string"}, {"string.upper", "string"}, {"string.find", "string", "regstring"}, {"string.byte", "char"}, {"string.reverse", "string"}, {"tonumber", "num"}, {"tostring", {"string", "num", "upvalue"}}, {"math.deg", "num"}, {"math.sqrt", "+num"}, {"math.rad", "num"}, {"string.char", "_cnum", "_cnum", "_cnum", "_cnum", "_cnum", "_cnum", "_cnum", "_cnum", "_cnum", "_cnum", "_cnum", "_cnum", "_cnum", "_cnum", "_cnum", "_cnum", "_cnum", "_cnum", "_cnum", "_cnum", "_cnum", "_cnum", "_cnum", "_cnum", "_cnum", "_cnum", "_cnum", "_cnum", "_cnum", "_cnum", "_cnum", "_cnum", "_cnum", "_cnum", "_cnum", "_cnum", "_cnum", "_cnum", "_cnum"}, {"pairs", "table"}, {"rawget", "table", "upvalue"}, {"rawequal", "upvalue", "upvalue"}, {"rawset", "table", "upvalue", "upvalue"}}
        local st, su, res
        repeat
            seed()
            st = Generate.Syntax(t[math.random(#t)], 1 + bran, nils)
            su, res = pcall(load("return " .. st))
            if not su and res then
                print(res)
                --error("error in function gen")
                res = nil
            end
        until not nils or res ~= nil
        s = s .. st
    elseif 4 == r then
        s = s .. Generate.LuaFunctions[math.random(#Generate.LuaFunctions)]
    elseif 5 == r then
        if math.random(3) == 2 then
            s = s .. "#"
        end
        s = s .. Generate.Table(1 + bran, true, nils)
    end
    if ({pcall(load("return nil == (" .. s .. ")"))})[2] == true then
        return s .. " or " .. Generate.String()
    end
    return s
end
function Generate.Table(bran, rec, nils)
    bran = tonumber(bran or 0) or 0
    print("Table:", bran)
    seed()
    if bran > options.MaxBranch and rec then
        return "{}"
    elseif bran > options.MaxBranch then
        return ""
    end
    local s = ""
    if not rec then
        if math.random(2) == 2 then
            s = "local "
        end
        s = s .. Generate.Name(math.random(4, 9)) .. " = "
    end
    s = s .. "{"
    local comma = false
    for k = math.random(-1, 1), options.Complex do
        seed()
        if math.random(options.MaxBranch) >= bran then
            local r = math.random(4)
            local upv
            repeat
                seed()
                upv = Generate.Upvalue(1 + bran, true, true)
            until not (upv == "or" or upv == "in" or upv == "for" or upv == "do") and true == pcall(load(" return {[" .. upv .. "] = true}"))
            if r == 1 then
                s = s .. tostring(comma and ",\n" or "") .. "[" .. upv .. "]" .. " = " .. upv
            elseif r == 2 then
                s = s .. tostring(comma and ",\n" or "") .. Generate.Name(math.random(3, 20)) .. " = " .. upv
            elseif r == 3 then
                s = s .. tostring(comma and ",\n" or "") .. upv
            elseif r == 4 then
                s = s .. tostring(comma and ",\n" or "") .. Generate.Name(math.random(3, 20))
            end
            comma = true
        end
    end
    return s .. "}"
end
function Generate.Boolean(bool, one)
    print("Boolean")
    local res = nil
    seed()
    bool = bool or false
    local s = ""
    local types = {"num", "func", "str", "bool"}
    if one or true then
        table.remove(types, #types)
    end
    local sel = types[math.random(1, #types)]
    if math.random(0, #types) == 0 then
        if math.random(2) == 2 then
            s = "(" .. Generate.Bool(bool, 1) .. ") == "
        else
            s = "not (" .. Generate.Bool(bool, 1) .. ") ~= "
        end
    end
    s = s .. "("
    if sel == "num" then
        if math.random(2) == 2 then
            local n = math.random()
            local c = math.random(1, 3)
            if c == 1 then
                s = s .. "-" .. math.abs(n) .. " <"
                if math.random(2) == 2 then
                    s = s .. "="
                end
                if math.random(2) == 2 then
                    s = s .. " " .. math.abs(math.random())
                else
                    s = s .. " " .. math.random(1000)
                end
            end
            if c == 2 then
                s = s .. math.abs(n) .. " >"
                if math.random(2) == 2 then
                    s = s .. "="
                end
                if math.random(2) == 2 then
                    s = s .. " -" .. math.abs(math.random())
                else
                    s = s .. " " .. math.random(-1000, -1)
                end
            end
            if c == 3 then
                if bool then
                    s = s .. math.abs(n) .. " ~= -" .. math.abs(n)
                else
                    s = s .. n .. " == " .. n
                end
            end
        else
            local n = math.random(-1250, 1250)
            local c = math.random(3)
            if c == 1 then
                s = s .. "-" .. math.abs(n) .. " <"
                if math.random(2) == 2 then
                    s = s .. "="
                end
                if math.random(2) == 2 then
                    s = s .. " " .. math.abs(math.random())
                else
                    s = s .. " " .. math.random(1250)
                end
            end
            if c == 2 then
                s = s .. math.abs(n) .. " >"
                if math.random(2) == 2 then
                    s = s .. "="
                end
                if math.random(2) == 2 then
                    s = s .. " -" .. math.abs(math.random())
                else
                    s = s .. " " .. math.random(-1250, -1)
                end
            end
            if c == 3 then
                if bool then
                    s = s .. n .. " ~= not " .. n
                else
                    s = s .. n .. " == " .. n
                end
            end
        end
    elseif sel == "func" then
        if #Generate.Functions <= 0 or math.random(2) == 2 then
            s = s .. Generate.LuaFunctions[math.random(#Generate.LuaFunctions)]
            if bool then
                if math.random(2) == 2 then
                    s = s .. " ~= nil"
                else
                    s = s .. " ~= " .. Generate.LuaFunctions[math.random(#Generate.LuaFunctions)]
                end
            else
                if math.random(2) then
                    s = s .. " == nil"
                else
                    s = s .. " == " .. Generate.LuaFunctions[math.random(#Generate.LuaFunctions)]
                end
            end
        elseif bool then
            local fun = Generate.Functions[math.random(#Generate.Functions)]
            if math.random(2) then
                s = s .. "nil ~= " .. fun
            else
                s = s .. fun .. " ~= nil"
            end
        else
            local fun = Generate.Functions[math.random(#Generate.Functions)]
            if math.random(2) then
                s = s .. "nil == " .. fun
            else
                s = s .. fun .. " == nil"
            end
        end
    elseif sel == "str" then
        local st = Generate.Name(math.random(3, 20), false)
        if math.random(2) == 2 then
            if math.random(2) == 2 then
                if bool then
                    s = s .. "nil ~= \"" .. st .. "\""
                else
                    s = s .. "nil == \"" .. st .. "\""
                end
            else
                if bool then
                    s = s .. "\"" .. st .. "\" ~= nil"
                else
                    s = s .. "\"" .. st .. "\" == nil"
                end
            end
        elseif bool then
            s = s .. "\"" .. Generate.Name(math.random(3, 20), false) .. "\" ~= \"" .. st .. "\""
        else
            s = s .. "\"" .. st .. "\" == \"" .. st .. "\""
        end
    elseif sel == "bool" and not one then
        if math.random(2) == 2 then
            s = s .. Generate.Bool(bool, 1)
        else
            s = s .. "not not (" .. Generate.Bool(bool, 1) .. ")"
        end
    else
        s = s .. "not (" .. tostring(not bool) .. ")"
    end
    s = s .. ")"
    if math.random(0, #types) == 0 then
        if math.random(2) == 2 then
            s = s .. " == " .. Generate.Bool(bool, 1)
        else
            s = s .. " ~= not " .. Generate.Bool(bool, 1)
        end
    end
    local so, res = pcall(load("return (" .. s .. ") == " .. tostring(bool)))
    while not res do
        if bool == true and math.random(2) == 2 then
            s = s .. " or true"
        elseif bool == true then
            s = "true or " .. s
        elseif math.random(2) == 2 and bool == false then
            s = s .. " and false"
        elseif bool == false then
            s = "false and " .. s
        end
        so, res = pcall(load("return (" .. s .. ") == " .. tostring(bool)))
    end
    return tostring(s or tostring(bool or "false")) or "false"
end
function Generate.Loop(bran)
    print("Loop:", bran)
    seed()
    if bran > options.MaxBranch then
        return ""
    end
    local num = math.random(3)
    if num == 1 then
        return "while " .. Generate.Bool(false) .. " do\n" .. Generate.Code(1 + bran) .. "\nend"
    elseif num == 2 then
        return "for " .. Generate.Name() .. " = " .. tostring(math.abs(Generate.Number())) .. ", " .. tostring("-" .. math.abs(Generate.Number())) .. (function()
            if math.random(3) == 3 then
                return ", " .. tostring(math.abs(Generate.Number() * math.random(100)))
            end
            return ""
        end)() .. " do\n" .. Generate.Code(1 + bran) .. "\nend"
    elseif num == 3 then
        return "repeat\n" .. Generate.Code(1 + bran) .. "\nuntil " .. Generate.Bool(true)
    end
end
function Generate.Chain(no_define, bran)
    print("Chain:", bran)
    seed()
    bran = tonumber(bran or 0) or 0
    local s = ""
    if not no_define and math.random(2) == 2 then
        s = "local "
    end
    local n = math.random(6)
    for k = 1, n do
        seed()
        s = s .. Generate.Name(math.random(6, 14), false)
        if k < n then
            s = s .. ", "
        end
    end
    if no_define then
        return s
    end
    s = s .. " = "
    local sset = 0
    for kk = 1, n do
        seed()
        if math.random(3) > 1 then
            if sset > 0 then
                local x = Generate.Upvalue(1 + bran, true)
                s = s .. ", " .. tostring(x or "nil")
            else
                local x = Generate.Upvalue(1 + bran, true)
                s = s .. tostring(x or "nil")
            end
            sset = 1 + sset
        end
    end
    if sset < 1 then
        s = s .. "nil"
    end
    return s
end
function Generate.Function(bran, rec)
    print("Function:", bran)
    seed()
    bran = tonumber(bran or 0) or 0
    if bran > options.MaxBranch then
        return ""
    end
    local ran = math.random(4)
    if ran == 1 or rec then
        rec = true
       -- return "(function()\n" .. Generate.Code(1 + bran) .. "\nreturn " .. Generate.Upvalue(bran + 1, true) .. "\nend)(" .. Generate.Chain(true) .. ")"
       return "" -- More problems than security
    end
    if ran == 2 then
        return "local function " .. Generate.Name(math.random(6, 14), bran == 0) .. "(" .. Generate.Chain(true) .. ")\n" .. Generate.Code(1 + bran) .. "\nend"
    end
    if ran == 3 then
        return Generate.Name(math.random(6, 14), bran == 0) .. " = function(" .. Generate.Chain(true) .. ")\n" .. Generate.Code(1 + bran) .. "\nend"
    end
    if ran == 4 then
        return "function " .. Generate.Name(math.random(6, 14), bran == 0) .. "(" .. Generate.Chain(true) .. ")\n" .. Generate.Code(1 + bran) .. "\nend"
    end
end
function Generate.RawCode(bran)
    print("Code:", bran)
    seed()
    if math.random() > 0.5 then
        seed()
    end
    bran = tonumber(bran or 0) or 0
    if bran > options.MaxBranch then
        return ""
    end
    local s = ""
    local r = math.random(5)
    if 1 == r then
        s = s .. Generate.Function(1 + bran)
    elseif 2 == r then
        s = s .. Generate.Chain(false, 1 + bran)
    elseif 3 == r then
        s = s .. "if " .. Generate.Bool(false, math.random(1, 4)) .. " then\n" .. Generate.Loop(1 + bran) .. "\nend"
    elseif 4 == r then
        s = s .. Generate.Table(1 + bran)
    elseif 5 == r then
        s = s .. Generate.Upvalue(1 + bran, false)
    end
    return s, r
end
function Generate.Code(bran)
    local oofed, source
    source, r = Generate.RawCode(bran)
    oofed, why = pcall(loadstring(source))
    if not oofed then
        local s = "--[[\n    " .. r .. ":" .. why .. "\n]]\n\n" .. source
        local out = ecall(io.open, options.Output, "w")
        if out then
            out:write(s):close()
        else
            print(s)
        end
        error("error in generating code " .. r)
    else
        return source
    end
end
return Generate
