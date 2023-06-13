M = {}

M.toggle = function()
    -- Toggle checkbox. [ ] <--> [X] and vice versa.
    local cursorPosition = vim.api.nvim_win_get_cursor(0)
    local row, _ = unpack(cursorPosition)
    local currentLine = vim.api.nvim_get_current_line()

    local checkBoxMap = { [' '] = '[X]',['X'] = '[ ]' }
    local toggledLine = string.gsub(currentLine, '%[([ X])%]', checkBoxMap, 1)

    vim.api.nvim_buf_set_lines(0, row - 1, row, true, { toggledLine })
end

M.insert = function()
    -- Insert new line starting with
    -- * [ ]
    vim.cmd[[:normal o* [ ]  ]]
    vim.cmd.startinsert()
end


M.setup = function()
    local mate = require 'checkmate'
    vim.keymap.set('n', 'mo', function() mate.insert() end)
    vim.keymap.set('n', 'mx', function() mate.toggle() end)
end

return M
