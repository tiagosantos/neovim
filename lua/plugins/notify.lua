return {

  {
    "rcarriga/nvim-notify",
    lazy = false,
    priority = 900,
    config = function(_, opts)
      vim.notify = require("notify")
      require("notify").setup(opts)
    end,
  },
}

