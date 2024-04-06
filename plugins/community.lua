return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.gruvbox-baby", enabled = true },
  { import = "astrocommunity.colorscheme.catppuccin", enabled = true },
  { import = "astrocommunity.colorscheme.github-nvim-theme", enabled = true },
  { import = "astrocommunity.colorscheme.nord-nvim", enabled = true },
  { import = "astrocommunity.colorscheme.kanagawa-nvim", enabled = true },
  { import = "astrocommunity.colorscheme.everforest", enabled = true },
  { import = "astrocommunity.colorscheme.iceberg-vim", enabled = true },
  { import = "astrocommunity.colorscheme.monokai-pro-nvim", enabled = true },
  { import = "astrocommunity.note-taking.obsidian-nvim", enabled = true },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
