return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_instaled = { "lua", "javascript", "dart", "html", "ruby", "vue" },
      indent = { enable = true },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = { "markdown" }
      },
    })
  end
}
