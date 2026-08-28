-- ~/.config/yazi/init.lua
local home = os.getenv("HOME")
local config_dir = home .. "/.config/yazi"

package.path = package.path .. ";" .. config_dir .. "/lua/?.lua" .. ";" .. config_dir .. "/lua/?/init.lua"

local folders = { "helpers", "plugins" }

for _, folder in ipairs(folders) do
    local dir_path = config_dir .. "/lua/" .. folder
    local files = io.popen('ls "' .. dir_path .. '" 2>/dev/null')

    if files then
        for file in files:lines() do
            if not file:match("^_") and file:match("%.lua$") then
                local ok, err = pcall(dofile, dir_path .. "/" .. file)

                if not ok then
                    print("Failed to load " .. folder .. "/" .. file .. ": " .. tostring(err))
                end
            end
        end
        files:close()
    end
end

