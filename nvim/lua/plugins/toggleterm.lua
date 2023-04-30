-- import comment plugin safely
local setup, toggleterm = pcall(require, "toggleterm")
if not setup then
  return
end

local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({ cmd = "lazygit", direction = "float", hidden = true })

function _lazygit_toggle()
  lazygit:toggle()
end

-- enable comment
toggleterm.setup({
  open_mapping = [[<leader>/]],
  direction = "float",
})

vim.api.nvim_set_keymap("n", "<leader>lg", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })
