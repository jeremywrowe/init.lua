vim.keymap.set('n', '<leader>tf', function () vim.cmd('TestFile') end)
vim.keymap.set('n', '<leader>tl', function () vim.cmd('TestLast') end)

if os.getenv('TMUX') then
    vim.g['test#strategy'] = 'vtr'
else
    vim.g['test#strategy'] = 'neovim'
end
