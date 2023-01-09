local status_ok, terraformls = pcall(require, "lspconfig.terraformls")
if status_ok then
  return
end

terraformls.setup({})

-- require'lspconfig'.terraformls.setup{}

vim.api.nvim_create_autocmd({"BufWritePre"}, {
  pattern = {"*.tf", "*.tfvars"},
  callback = vim.lsp.buf.format(),
})
