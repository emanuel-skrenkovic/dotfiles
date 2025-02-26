local vim = vim
local Plug = vim.fn['plug#']

vim.cmd('syntax enable')
vim.cmd('filetype plugin indent on')

vim.o.cursorline = true

vim.opt.smartindent = true 
vim.opt.wildmenu = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4 
vim.opt.showmatch = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.o.wrap = false

vim.call('plug#begin')

Plug('tek256/simple-dark')

Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.8' })

Plug('nvim-treesitter/nvim-treesitter')
Plug('neovim/nvim-lspconfig')
Plug('rust-lang/rust.vim')
Plug('neoclide/coc.nvim', { ['branch'] = 'release'})
Plug('dense-analysis/ale')
Plug('Raimondi/delimitMate')

Plug('sainnhe/gruvbox-material')
Plug('p00f/alabaster.nvim')
Plug('jameswalls/naysayer.nvim')
Plug('ellisonleao/gruvbox.nvim')
Plug('mcauley-penney/ice-cave.nvim')
Plug('jesseleite/nvim-noirbuddy')
Plug('zekzekus/menguless')
Plug('jaredgorski/fogbell.vim')
Plug('zenbones-theme/zenbones.nvim')
Plug('rktjmp/lush.nvim')
Plug('yorickpeterse/vim-paper')
Plug('andreasvc/vim-256noir')
Plug('LuRsT/austere.vim')
Plug('nikolvs/vim-sunbather')
Plug('Islam231bi/Tsoding-color-theme-Nvim')

vim.call('plug#end')

-- vim.cmd 'source ~/.config/nvim/mycolourscheme.vim'
-- vim.cmd 'source ~/.config/nvim/untitledcolourscheme.vim'
-- vim.cmd 'colorscheme zenbones' 

-- vim.cmd 'colorscheme gruvbox-material'
-- vim.cmd 'colorscheme simple-dark'
-- vim.cmd 'colorscheme naysayer'
-- vim.cmd 'colorscheme simple-dark'
vim.cmd 'colorscheme sunbather'
-- hi Normal guifg=#d0c0a0 ctermbg=NONE guibg=#000111 gui=NONE
vim.api.nvim_set_hl(0, "Normal", { bg = "#19191c" })

vim.opt.scrolloff = 10

vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>fs', ':w<CR>')
vim.keymap.set('n', '<c-l>', 'zz')

vim.keymap.set('n', '<leader>wv', ':vs<CR>')
vim.keymap.set('n', '<leader>ws', ':sp<CR>')

vim.keymap.set('n', '<leader>wl', ':wincmd l<CR>')
vim.keymap.set('n', '<leader>wh', ':wincmd h<CR>')

vim.keymap.set('n', '<leader>wj', ':wincmd j<CR>')
vim.keymap.set('n', '<leader>wk', ':wincmd k<CR>')

-- Swap opened windows in direction.
vim.keymap.set('n', '<leader>wH', ':wincmd H<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>wL', ':wincmd L<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>wK', ':wincmd K<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>wJ', ':wincmd J<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>b[', ':bp<CR>')
vim.keymap.set('n', '<leader>b]', ':bn<CR>')

vim.keymap.set('n', '<leader>wd', ':bd<CR>')

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- TODO: THIS ONLY WORKS FOR RUST. DELETE WHEN SMARTER.
vim.keymap.set('n', '<leader>pc', ':make check')


vim.keymap.set('n', '<leader>cd', '<Plug>(coc-definition)')
vim.keymap.set('n', '<leader>cD', '<Plug>(coc-references)')
vim.keymap.set('n', '<leader>ct', '<Plug>(coc-type-definition)')

vim.keymap.set('i', '<cr>', [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], {silent = true, noremap = true, expr = true, replace_keycodes = false})

vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
  pattern = "*.rs",
  command = "set filetype=rust"
})
vim.opt.completeopt = {'menu', 'menuone', 'preview', 'noselect', 'noinsert'}

local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

-- configure treesitter
treesitter.setup({
  -- enable syntax highlighting
  highlight = {
    enable = true,
  },
  -- enable indentation
  indent = { enable = true },
  -- ensure these language parsers are installed
  ensure_installed = {
    "json",
    "javascript",
    "typescript",
    "yaml",
    "html",
    "css",
    "markdown",
    "markdown_inline",
    "bash",
    "lua",
    "vim",
    "c",
    "rust"
  },
  -- auto install above language parsers
  auto_install = true,
})

local lspconfig = require'lspconfig'

lspconfig.rust_analyzer.setup({
    settings = {
        ["rust-analyzer"] = {
			inlayHints = {
				typeHints = false,
				parameterHints = false,
				chainingHints = false
			}
        }
    }
})

