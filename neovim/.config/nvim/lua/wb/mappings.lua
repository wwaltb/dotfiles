-- navigating with telescope
local telescope_builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", telescope_builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", telescope_builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", telescope_builtin.buffers, {})
vim.keymap.set("n", "<leader>fs", telescope_builtin.lsp_document_symbols, {})
vim.keymap.set("n", "<leader>fh", telescope_builtin.help_tags, {})
vim.keymap.set("n", "<leader>fr", telescope_builtin.oldfiles, {})
vim.keymap.set("n", "<leader>fw", telescope_builtin.grep_string, {})
vim.keymap.set("n", "<leader>gf", telescope_builtin.git_files, {})

-- navigating the 'project' directory
vim.keymap.set("n", "<leader>pv", "<cmd>Telescope file_browser<cr>")
vim.keymap.set("n", "<leader>ps", "<cmd>Neotree reveal right<cr>")
vim.keymap.set("n", "<C-s>", "<cmd>Neotree reveal right toggle<cr>")

-- navigating with the harpoon man
local harpoon = require("harpoon")

vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader>ht", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
vim.keymap.set("n", "<leader>hd", function() harpoon:list():prev() end)
vim.keymap.set("n", "<leader>hf", function() harpoon:list():next() end)
vim.keymap.set("n", "<leader>h1", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<leader>h2", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<leader>h3", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<leader>h4", function() harpoon:list():select(4) end)
vim.keymap.set("n", "<leader>h5", function() harpoon:list():select(5) end)
vim.keymap.set("n", "<leader>h6", function() harpoon:list():select(6) end)
vim.keymap.set("n", "<leader>h7", function() harpoon:list():select(7) end)
vim.keymap.set("n", "<leader>h8", function() harpoon:list():select(8) end)
vim.keymap.set("n", "<leader>h9", function() harpoon:list():select(9) end)

-- lsp
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

-- zen mode
local zen_mode = require("zen-mode")
vim.keymap.set("n", "<leader>zm", zen_mode.toggle, {})

-- pandoc
local run_pandoc = require("run-pandoc")
vim.keymap.set("n", "<leader>cp", run_pandoc.compile, {})
