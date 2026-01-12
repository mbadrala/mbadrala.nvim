if vim.g.neovide then
    vim.g.neovide_cursor_animation_length = 0.05
    vim.g.neovide_cursor_trail_size = 0.7
    vim.g.neovide_padding_top = 0
    vim.g.neovide_padding_left = 0
    vim.g.mapleader = " "
    vim.o.guifont = "Berkeley_Mono:h11"
    vim.api.nvim_set_current_dir("C:/Users/Munkhbadral")

	vim.o.number = true
	vim.o.relativenumber = true
	vim.o.tabstop = 4
	vim.o.softtabstop = 4
	vim.o.shiftwidth = 4
	vim.o.expandtab = true
	vim.o.smartindent = true
	vim.o.clipboard = "unnamedplus"
    vim.o.hlsearch = true
    vim.o.incsearch = true
    vim.o.wrap = true
    vim.o.linebreak = true
    vim.o.title = true
    vim.o.titlestring = [[%{fnamemodify(getcwd(), ':t')} - nvim]]
    vim.o.foldenable = true
    vim.o.scrolloff = 6

    require("config.lazy")

    vim.cmd.colorscheme("b01")

    vim.g.loaded_perl_provider = 0
    vim.g.loaded_ruby_provider = 0

    vim.keymap.set("n", "<leader>pv", "<cmd>Oil<CR>")
    vim.keymap.set("n", "<leader><leader>", ":noh<CR>")
    vim.keymap.set("n", "<C-d>", "<C-d>zz")
    vim.keymap.set("n", "<C-u>", "<C-u>zz")
    vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
    vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

    require("mason").setup()
    vim.lsp.enable('omnisharp')
end


