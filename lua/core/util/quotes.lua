local citations = {
    "I use arch btw",
    "unzip; strip; touch; finger; mount; fsck; more; yes; unmount; sleep",
    "This config is bloat.",
    "UwU",
}

local function get()
    return citations[math.random(1, #citations)]
end

M = {}
M.get = get
return M
