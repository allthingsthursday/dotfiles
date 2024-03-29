local status, configs = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

configs.setup({
  ensure_installed = "all",
  sync_install = false,
  ignore_install = { "" }, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = true, disable = { "yaml" } },
  -- -- enable autotagging w/ nvim-ts-autotag plugin
  -- autotag = { enable = true },
  -- auto_install = true,
})
