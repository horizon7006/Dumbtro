----------------------------------------------------------
----------- MOD CODE -------------------------------------
---

if not Dumbtro then
    Dumbtro = {}
end

local global = {}


local mod_path = "" .. SMODS.current_mod.path
Dumbtro.path = mod_path

if next(SMODS.find_mod("Talisman")) then
    Dumbtro.hastalisman = true
    print("Talisman found! Working on compatibility...")
else
    Dumbtro.hastalisman = false
    print("Talisman not found. The mod will do things as usual.")
end

function tNum(number) -- for talisman compat
    local _numnum = number
    if Dumbtro.hastalisman == true then _numnum = to_big(number) end
    return _numnum
end

local files = NFS.getDirectoryItems(mod_path .. "items")
for _, file in ipairs(files) do
    print("[DUMB] Loading lua file " .. file)
    local f, err = SMODS.load_file("items/" .. file)
    if err then
        error(err)
    end
    f()
end

local files = NFS.getDirectoryItems(mod_path .. "libs")
for _, file in ipairs(files) do
    print("[DUMB] Loading lua file " .. file)
    local f, err = SMODS.load_file("libs/" .. file)
    if err then
        error(err)
    end
    f()
end

-- Joker pool
SMODS.ObjectType({
    key = "dumb_joker_pool",
    default = "j_colon3",
    cards = {},
    inject = function(self)
        SMODS.ObjectType.inject(self)
    end,
})
