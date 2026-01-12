return {
    {
        'nvim-telescope/telescope.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
            { 
                'nvim-telescope/telescope-fzf-native.nvim', 
                build = vim.fn.has('win32') == 1 and 
                    'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' or 
                    'make' 
            },
        },
        config = function()
            local builtin = require('telescope.builtin')

            vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
            vim.keymap.set('n', '<leader>pd', builtin.fd, {})
            vim.keymap.set('n', '<C-p>', builtin.git_files, {})
            vim.keymap.set('n', '<leader>ps', function()
                builtin.grep_string({ search = vim.fn.input("Grep > ") });
            end)
            vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
            vim.keymap.set('n', '<leader>pl', builtin.live_grep, {})

            vim.keymap.set('n', '<leader>pgs', builtin.git_status, {})
            vim.keymap.set('n', '<leader>pgc', builtin.git_commits, {})
            vim.keymap.set('n', '<leader>gr', builtin.lsp_references, {})
            vim.keymap.set('n', '<leader>gf', builtin.lsp_document_symbols, {})
        end,
    },
    {
        "mason-org/mason.nvim",
        opts = {}
    },
    {
        'nvim-treesitter/nvim-treesitter',
        version = false, -- Use the latest 'main' branch
        build = ':TSUpdate',
        event = { "BufReadPost", "BufNewFile" },
        opts = {
            ensure_installed = { 
                "c", "lua", "vim", "vimdoc", "query", 
                "c_sharp", "go", "typescript", "astro", "wgsl" 
            },
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            indent = { enable = true },
        }
    }
}
