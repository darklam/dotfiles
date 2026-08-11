-- lua/plugins/mason.lua
return {
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    build = ":MasonUpdate",
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    },
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      ensure_installed = {
        "lua_ls",
        "pyright",
        "ts_ls",       -- was tsserver, renamed a while back
        "rust_analyzer",
      },
      -- automatic_installation = true,
    },
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities() -- if using nvim-cmp

      -- applies to every server; per-server vim.lsp.config() calls below merge on top
      vim.lsp.config("*", {
        capabilities = capabilities,
      })

      -- server-specific overrides go here, e.g.
      vim.lsp.config("lua_ls", {
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
          },
        },
      })

      -- automatic_enable defaults to true, so installed servers are
      -- vim.lsp.enable()'d automatically
      require("mason-lspconfig").setup()
    end,
  },
}
