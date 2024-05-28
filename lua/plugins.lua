return {
  { "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  { 'wakatime/vim-wakatime', 
    lazy = false 
  },
  { 'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate' 
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    }
  }
}
