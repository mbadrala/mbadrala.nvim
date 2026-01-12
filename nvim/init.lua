if vim.g.neovide then
    vim.g.mapleader = " "

    require("config.lazy")

    vim.cmd.colorscheme("habamax")

	vim.o.number = true
	vim.o.relativenumber = true
	vim.o.tabstop = 4
	vim.o.softtabstop = 4
	vim.o.shiftwidth = 4
	vim.o.expandtab = true
	vim.o.smartindent = true
	vim.o.clipboard = "unnamedplus"
    vim.o.guifont = "JetBrainsMono_Nerd_Font:h12"
    vim.o.hlsearch = true
    vim.o.incsearch = true
    vim.o.wrap = true
    vim.o.linebreak = true
    vim.o.title = true
    vim.o.titlestring = [[%{fnamemodify(getcwd(), ':t')} - nvim]]
    vim.o.foldenable = true
    vim.o.scrolloff = 6

    vim.g.loaded_perl_provider = 0
    vim.g.loaded_ruby_provider = 0

    vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
    vim.keymap.set("n", "<leader><leader>", ":noh<CR>")
    vim.keymap.set("n", "<leader>p", "<cmd>PasteImage<cr>")
    vim.keymap.set("n", "<C-d>", "<C-d>zz")
    vim.keymap.set("n", "<C-u>", "<C-u>zz")
    vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
    vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

    require("mason").setup()
    vim.lsp.enable('omnisharp')
end


