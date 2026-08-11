# Neovim Cheatsheet

Leader key: `<Space>`

## File explorer (neo-tree)

| Key | Action |
|---|---|
| `<leader>e` | Toggle file explorer |

## LSP

| Key | Mode | Action |
|---|---|---|
| `K` | n | Hover docs |
| `gD` | n | Go to declaration |
| `gd` | n | Go to definition (Telescope picker) |
| `gi` | n | Go to implementation (Telescope picker) |
| `gr` | n | List references (Telescope picker) |
| `<C-k>` | n, i | Signature help |
| `<leader>rn` | n | Rename symbol |
| `<leader>ca` | n, v | Code action |
| `<leader>D` | n | Type definition |
| `<leader>fl` | n | Format buffer (async) |
| `<leader>wa` | n | Add workspace folder |
| `<leader>wr` | n | Remove workspace folder |
| `<leader>wl` | n | List workspace folders |

## Diagnostics

| Key | Action |
|---|---|
| `[d` | Previous diagnostic |
| `]d` | Next diagnostic |
| `<leader>q` | Send diagnostics to location list |
| `<leader>ad` | List all diagnostics (Telescope picker) |

## Completion (nvim-cmp, insert mode)

| Key | Action |
|---|---|
| `<C-Space>` | Trigger completion |
| `<C-e>` | Abort completion |
| `<C-b>` / `<C-f>` | Scroll docs |
| `<CR>` | Confirm selection |
| `Tab` / `<C-j>` | Expand/jump snippet (LuaSnip) |

## Fuzzy finding (Telescope)

No dedicated keymaps are bound yet — invoke pickers directly via command:

| Command | Action |
|---|---|
| `:Telescope find_files` | Search files by name |
| `:Telescope live_grep` | Search text across the project |
| `:Telescope buffers` | Switch between open buffers |
| `:Telescope help_tags` | Search help docs |
| `:Telescope oldfiles` | Recently opened files |

## Common Vim operations

### Searching in a file

| Key | Action |
|---|---|
| `/pattern` | Search forward |
| `?pattern` | Search backward |
| `n` / `N` | Repeat search (same / opposite direction) |
| `*` / `#` | Search word under cursor (forward / backward) |
| `:noh` | Clear search highlight |

### Find & replace

| Command | Action |
|---|---|
| `:%s/old/new/g` | Replace all occurrences in file |
| `:%s/old/new/gc` | Replace all, with confirmation |
| `:s/old/new/g` | Replace all occurrences on current line |

### Buffers, windows, tabs

| Key/Command | Action |
|---|---|
| `:bn` / `:bp` | Next / previous buffer |
| `:bd` | Close buffer |
| `<C-w>s` / `<C-w>v` | Split window horizontally / vertically |
| `<C-w>hjkl` | Move between splits |
| `<C-w>q` | Close split |

### Navigation

| Key | Action |
|---|---|
| `gg` / `G` | Top / bottom of file |
| `{` / `}` | Previous / next paragraph |
| `%` | Jump to matching bracket |
| `Ctrl-o` / `Ctrl-i` | Jump back / forward in jump list |
