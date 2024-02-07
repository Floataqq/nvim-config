local quotes = {
    "I use arch btw",
    "unzip; strip; touch; finger; mount; fsck; more; yes; unmount; sleep",
    "This config is bloat.",
    "UwU",
}

local function get()
    return quotes[math.random(1, #quotes)]
end

M = {}
M.get = get
return M
