M = {}

M.toggle = function()
    local lineNum = vim.api.nvim_win_get_cursor(0)
    local row, col = unpack(lineNum)
    print('row', row, 'col', col)

    local line = vim.api.nvim_get_current_line()
    local test = "* [ ] bla bla [X]"
    local repl = {}
    repl[' '] = '[X]'
    repl['X'] = '[ ]'
    local result = string.gsub(line, '%[([ X])%]', repl, 1)
    vim.api.nvim_buf_set_lines(0, row-1, row, true, {result})
    print(result)
end

-- M.toggle()
M.setup = function ()
    vim.keymap.set('n', 'dmo', function () require'checkmate'.toggle() end)
end

return M
