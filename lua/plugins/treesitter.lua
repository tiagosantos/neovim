return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    event = "VeryLazy",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        auto_install = true,
        indent = { enable = true },
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = { "markdown" }
        },
      })
    end
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = "VeryLazy",
    dependencies = { "nvim-treesitter/nvim-treesitter", lazy = true },
  },
}
