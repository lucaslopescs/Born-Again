return {
  {
    "bjarneo/aether.nvim",
    branch = "v2",
    name = "aether",
    priority = 1000,
    opts = {
      transparent = false,
      colors = {
        bg = "#0e0c0c",
        bg_dark = "#080606",
        bg_highlight = "#1a1618",
        fg = "#d4d0cc",
        fg_dark = "#b0aba6",
        comment = "#4a4646",
        red = "#c42b2b",
        orange = "#a85a3a",
        yellow = "#8a7d6b",
        green = "#6b7266",
        cyan = "#787575",
        blue = "#5a5858",
        purple = "#913333",
        magenta = "#b84c4c",
      }
    },
    config = function(_, opts)
      require("aether").setup(opts)
      vim.cmd.colorscheme("aether")
      -- Enable hot reload
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
