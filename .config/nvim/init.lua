local config_files = { 'options', 'plugins' }

for i = 1, #config_files, 1 do
    local status_ok, err = pcall(require, config_files[i])

    if not status_ok then
        print('Error in ' .. config_files[i] .. '.lua')
        print(err)
    end
end
