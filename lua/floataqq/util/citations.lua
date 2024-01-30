local citations = {
'', ''}

local function get()
    return citations[math.random(1, #citations)]
end

M = {}
M.get = get
return M

