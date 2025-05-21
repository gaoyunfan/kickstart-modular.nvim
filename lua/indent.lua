vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'c', 'cpp', 'h', 'hpp' },
  callback = function()
    vim.bo.expandtab = true -- Use spaces, not tabs
    vim.bo.tabstop = 2 -- A tab is 2 spaces wide
    vim.bo.shiftwidth = 2 -- Indent amount for >> and <<
    vim.bo.softtabstop = 2 -- How many spaces <Tab> inserts
    vim.bo.autoindent = true -- Use indent from current line
    vim.bo.smartindent = true -- Smart C-style indentation
  end,
})
