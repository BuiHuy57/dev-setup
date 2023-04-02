syntax on
set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set mouse=a

call plug#begin()

" Colorscheme
Plug 'dracula/vim'
Plug 'rebelot/kanagawa.nvim'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'morhetz/gruvbox'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }

" File explorer
Plug 'preservim/nerdtree'

" Tree sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" autopair
Plug 'windwp/nvim-autopairs'

call plug#end()

" ------------------------------------

" ------------------------------------
" COLORSCHEME
set termguicolors
" colorscheme dracula
colorscheme kanagawa
" colorscheme tokyonight
" colorscheme catppuccin-macchiato
" colorscheme gruvbox

lua << EOF
require('kanagawa').setup({
    compile = false,             -- enable compiling the colorscheme
    undercurl = true,            -- enable undercurls
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = true},
    statementStyle = { bold = true },
    typeStyle = {},
    transparent = false,         -- do not set background color
    dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
    terminalColors = true,       -- define vim.g.terminal_color_{0,17}
    colors = {                   -- add/modify theme and palette colors
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
    },
    overrides = function(colors) -- add/modify highlights
        return {}
    end,
    theme = "wave",              -- Load "wave" theme when 'background' option is not set
    background = {               -- map the value of 'background' option to a theme
        dark = "wave",           -- try "dragon" !
        light = "lotus"
    },
})
EOF

" ------------------------------------

" ------------------------------------
" KEY MAPPINGS
let mapleader=" "

nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <leader>fs <cmd>Telescope live_grep<CR>
nnoremap <leader>fb <cmd>Telescope buffers<CR>
nnoremap <leader>fh <cmd>Telescope help_tags<CR>

nnoremap <leader>e <cmd>NERDTreeToggle<CR>

" ------------------------------------

" ------------------------------------
" Autopair settings
lua << EOF
require("nvim-autopairs").setup {}
EOF

" ------------------------------------

" ------------------------------------
" Treesitter config
lua << EOF
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
    ensure_installed = {
        "vim",
        "lua",
        "c",
        "cpp",
        "make",
        "python",
        "bash",
        "dockerfile",
        "json",
        "jsonc",
        "verilog"
    },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    highlight = {
        -- `false` will disable the whole extension
        enable = true,

        -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
        -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
        -- the name of the parser)
        -- list of language that will be disabled
        disable = {},

        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = true,
    },
    rainbow = {
        enable = true,
        -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil, -- Do not enable for files with more than n lines, int
        colors = {
            "#feb868",
            "#cd64ce",
            "#85c7f2"
        } -- table of hex strings
    }
}
EOF
