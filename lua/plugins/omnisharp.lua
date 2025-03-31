
-- lua/plugins/omnisharp.lua

vim.g.OmniSharp_selector_ui = 'fzf'
vim.g.OmniSharp_selector_findusages = 'fzf'
vim.g.OmniSharp_highlight_groups = {
  Comment = 'NonText',
  XmlDocCommentName = 'Identifier',
  XmlDocCommentText = 'NonText',
}

vim.g.OmniSharp_popup_options = {
  winblend = 30,
  winhl = 'Normal:Normal,FloatBorder:Special',
  border = 'rounded',
}

local function cs_map(mode, lhs, rhs)
  vim.api.nvim_create_autocmd("FileType", {
    pattern = "cs",
    callback = function()
      vim.keymap.set(mode, lhs, rhs, { buffer = true, silent = true })
    end,
  })
end

vim.api.nvim_create_augroup("omnisharp_commands", { clear = true })

vim.api.nvim_create_autocmd("CursorHold", {
  group = "omnisharp_commands",
  pattern = "*.cs",
  command = "OmniSharpTypeLookup",
})

cs_map("n", "gd", "<Plug>(omnisharp_go_to_definition)")
cs_map("n", "<Leader>osfu", "<Plug>(omnisharp_find_usages)")
cs_map("n", "<Leader>osfi", "<Plug>(omnisharp_find_implementations)")
cs_map("n", "<Leader>ospd", "<Plug>(omnisharp_preview_definition)")
cs_map("n", "<Leader>ospi", "<Plug>(omnisharp_preview_implementations)")
cs_map("n", "<Leader>ost", "<Plug>(omnisharp_type_lookup)")
cs_map("n", "<Leader>osd", "<Plug>(omnisharp_documentation)")
cs_map("n", "<Leader>osfs", "<Plug>(omnisharp_find_symbol)")
cs_map("n", "<Leader>osfx", "<Plug>(omnisharp_fix_usings)")
cs_map("n", "[[", "<Plug>(omnisharp_navigate_up)")
cs_map("n", "]]", "<Plug>(omnisharp_navigate_down)")
cs_map("n", "<Leader>osgcc", "<Plug>(omnisharp_global_code_check)")
cs_map("n", "<Leader>osr", "<Plug>(omnisharp_rename_to)")
