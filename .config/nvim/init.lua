local debug = true

local config_files = { 'packer-bootstrap', 'plugins', 'disable-builtins', 'keybinds', 'options' }

for i = 1, #config_files, 1 do
    local status_ok, err = pcall(require, config_files[i])

    if not status_ok then
        print('Error in ' .. config_files[i] .. '.lua')
        if debug then print(err) end
    end
end
