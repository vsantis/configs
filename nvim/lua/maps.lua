vim.g.mapLeader = ' '

function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extended("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

--save and quit actions
map("n", "<Leader>w", ":w")
map("n", "<Leader>q", ":q")
map("n", "<Leader>Q", ":q!")
map("n", "<Leader>wq", ":wq")

--resize split pane
map("n", "<Leader>>", "5<C-w>>", {silent = true})
map("n", "<Leader><", "5<C-w><", {silent = true})

--nerdtree
map("!", "<Leader>tt", ":NERDTreeToggle<cr>", {silent = true})

--fzf
map("!", "<Leader>ff", ":Files<cr>", {silent = true})
map("!", "<Leader>fg", ":Rg<cr>", {silent = true})
map("!", "<Leader>ob", ":Buffers<cr>", {silent = true})

--tmux navigation
map("n", "<Leader><C-h>", ":TmuxNavigateLeft<cr>", {silent = true})
map("n", "<Leader><C-j>", ":TmuxNavigateDown<cr>", {silent = true})
map("n", "<Leader><C-k>", ":TmuxNavigateUp<cr>", {silent = true})
map("n", "<Leader><C-l>", ":TmuxNavigateRight<cr>", {silent = true})

--vim tab navigation
map("n", "<Leader><C-p>", ":tabp<cr>", {silent = true})
map("n", "<Leader><C-n>", ":tabn<cr>", {silent = true})

--vim plug
map("n", "<Leader>pi", ":PlugInstall<cr>")
map("n", "<Leader>pc", ":PlugCelan<cr>")
