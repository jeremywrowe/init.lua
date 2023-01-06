vim.keymap.set('n', '<leader>tf', function () vim.cmd('TestFile') end)
vim.keymap.set('n', '<leader>tl', function () vim.cmd('TestLast') end)
vim.keymap.set('n', '<leader>ra', function () vim.cmd('VtrAttachToPane') end)
vim.keymap.set('n', '<leader>rf', function () vim.cmd('VtrFocusRunner') end)

if os.getenv('TMUX') then
    vim.g['test#strategy'] = 'vtr'
else
    vim.g['test#strategy'] = 'neovim'
end

vim.g['VtrPercentage'] = 35
vim.g['VtrOrientation'] = "h"
vim.g['VtrClearBeforeSend'] = 0
