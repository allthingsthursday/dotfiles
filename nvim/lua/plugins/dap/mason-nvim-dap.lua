local status, mason_nvim_dap = pcall(require, "mason-nvim-dap")
if not status then
  return
end

mason_nvim_dap.setup({
  automatic_setup = true,
  handlers = {},
})

-- mason_nvim_dap.setup_handlers({})
