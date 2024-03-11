require("telescope").load_extension("git_worktree")

vim.keymap.set("n","<leader>wt",require('telescope').extensions.git_worktree.git_worktrees)
-- <Enter> - switches to that worktree
-- <c-d> - deletes that worktree
-- <c-f> - toggles forcing of the next deletion

vim.keymap.set("n","<leader>wn",require('telescope').extensions.git_worktree.create_git_worktree)
