return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      colors = {
        bg         = "#0f0f0f",
        dark_bg    = "#0c0c0c",
        darker_bg  = "#0a0a0a",
        lighter_bg = "#5e5959",
        bg_highlight = "#757070",

        fg         = "#eadccc",
        dark_fg    = "#e6caab",
        light_fg   = "#eadccc",
        bright_fg  = "#e6caab",
        muted      = "#5e5959",

        red        = "#e25d6c",
        yellow     = "#f4bb54",
        orange     = "#e9838f",
        green      = "#cea37f",
        cyan       = "#e8ab3b",
        blue       = "#e2be8a",
        purple     = "#f66151",
        brown      = "#edb95a",

        bright_red    = "#e25d6c",
        bright_yellow = "#f4bb54",
        bright_green  = "#cea37f",
        bright_cyan   = "#e8ab3b",
        bright_blue   = "#e2be8a",
        bright_purple = "#f66151",

        accent               = "#e2be8a",
        cursor               = "#eadccc",
        foreground           = "#eadccc",
        background           = "#0f0f0f",
        selection            = "#0f0f0f",
        selection_foreground = "#eadccc",
        selection_background = "#0f0f0f",
      },
      
    },
    
    -- set up hot reload
    config = function(_, opts)
      require("aether").setup(opts)
      vim.cmd.colorscheme("aether")
      require("aether.hotreload").setup()
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}