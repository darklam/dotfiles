# Prerequisites

External tools this config depends on, and why.

| Tool | Needed for | Install |
|---|---|---|
| Neovim >= 0.12 | `vim.lsp.config`/`vim.lsp.enable` API, nvim-treesitter `main` branch | `brew install neovim` |
| `git` | lazy.nvim plugin cloning | usually preinstalled |
| A C compiler (`cc`/`gcc`) | compiling treesitter parsers | usually preinstalled |
| `tree-sitter` CLI | compiling treesitter parsers (nvim-treesitter `main` branch requires the standalone CLI, **not** the npm package) | `brew install tree-sitter-cli` |
| `curl`, `tar` | used by the tree-sitter CLI when building parsers | usually preinstalled |
| `ripgrep` (`rg`) | Telescope `live_grep` / `grep_string` pickers | `brew install ripgrep` |
| Node.js + `npm` | Mason installs of `pyright` and `ts_ls` | `brew install node` |
| Go | Mason install of `gopls` | `brew install go` |
| A [Nerd Font](https://www.nerdfonts.com/) | file/git icons in neo-tree and Telescope (via nvim-web-devicons) | install a Nerd Font and set it as your terminal font |

After these are in place, just open `nvim` — lazy.nvim bootstraps itself and installs all plugins/parsers on first launch, and Mason installs the configured LSP servers automatically.
