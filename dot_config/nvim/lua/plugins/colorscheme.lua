-- lua/plugins/colorscheme.lua
return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
    opts = {
      flavour = "mocha",
      integrations = {
        cmp = true,
        gitsigns = true,
        neotree = true,
        telescope = true,
        treesitter = true,
        native_lsp = {
          enabled = true,
        },
      },
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
