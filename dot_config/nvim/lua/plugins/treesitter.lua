-- lua/plugins/treesitter.lua
local parsers = {
  "lua",
  "vim",
  "vimdoc",
  "markdown",
  "markdown_inline",
  "python",
  "javascript",
  "typescript",
  "rust",
  "go",
}

return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").install(parsers)

      local filetypes = {
        "lua",
        "vim",
        "help",
        "markdown",
        "python",
        "javascript",
        "typescript",
        "rust",
        "go",
      }

      vim.api.nvim_create_autocmd("FileType", {
        pattern = filetypes,
        callback = function()
          vim.treesitter.start()
          vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end,
      })
    end,
  },
}
