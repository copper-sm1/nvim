--neovim
local function keybindings_neovim_handle()
    vim.api.nvim_set_keymap('n', 'za', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
end -- keybindings_neovim_handle

--nvim-tree
local function keybindings_nvim_tree_handle(bufnr)
    local api = require("nvim-tree.api")
    local function opts(desc)
        return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end -- opts
    -- BEGIN_DEFAULT_ON_ATTACH
    vim.keymap.set('n', '<C-]>',   api.tree.change_root_to_node,        opts('CD'))
    vim.keymap.set('n', '<C-e>',   api.node.open.replace_tree_buffer,   opts('Open: In Place'))
    vim.keymap.set('n', '<C-k>',   api.node.show_info_popup,            opts('Info'))
    vim.keymap.set('n', '<C-r>',   api.fs.rename_sub,                   opts('Rename: Omit Filename'))
    vim.keymap.set('n', '<C-t>',   api.node.open.tab,                   opts('Open: New Tab'))
    vim.keymap.set('n', '<C-v>',   api.node.open.vertical,              opts('Open: Vertical Split'))
    vim.keymap.set('n', '<C-x>',   api.node.open.horizontal,            opts('Open: Horizontal Split'))
    vim.keymap.set('n', '<BS>',    api.node.navigate.parent_close,      opts('Close Directory'))
    vim.keymap.set('n', '<CR>',    api.node.open.edit,                  opts('Open'))
    vim.keymap.set('n', '<Tab>',   api.node.open.preview,               opts('Open Preview'))
    vim.keymap.set('n', '>',       api.node.navigate.sibling.next,      opts('Next Sibling'))
    vim.keymap.set('n', '<',       api.node.navigate.sibling.prev,      opts('Previous Sibling'))
    vim.keymap.set('n', '.',       api.node.run.cmd,                    opts('Run Command'))
    vim.keymap.set('n', '-',       api.tree.change_root_to_parent,      opts('Up'))
    vim.keymap.set('n', 'a',       api.fs.create,                       opts('Create File Or Directory'))
    vim.keymap.set('n', 'bd',      api.marks.bulk.delete,               opts('Delete Bookmarked'))
    vim.keymap.set('n', 'bt',      api.marks.bulk.trash,                opts('Trash Bookmarked'))
    vim.keymap.set('n', 'bmv',     api.marks.bulk.move,                 opts('Move Bookmarked'))
    vim.keymap.set('n', 'B',       api.tree.toggle_no_buffer_filter,    opts('Toggle Filter: No Buffer'))
    vim.keymap.set('n', 'c',       api.fs.copy.node,                    opts('Copy'))
    vim.keymap.set('n', 'C',       api.tree.toggle_git_clean_filter,    opts('Toggle Filter: Git Clean'))
    vim.keymap.set('n', '[c',      api.node.navigate.git.prev,          opts('Prev Git'))
    vim.keymap.set('n', ']c',      api.node.navigate.git.next,          opts('Next Git'))
    vim.keymap.set('n', 'd',       api.fs.remove,                       opts('Delete'))
    vim.keymap.set('n', 'D',       api.fs.trash,                        opts('Trash'))
    vim.keymap.set('n', 'E',       api.tree.expand_all,                 opts('Expand All'))
    vim.keymap.set('n', 'e',       api.fs.rename_basename,              opts('Rename: Basename'))
    vim.keymap.set('n', ']e',      api.node.navigate.diagnostics.next,  opts('Next Diagnostic'))
    vim.keymap.set('n', '[e',      api.node.navigate.diagnostics.prev,  opts('Prev Diagnostic'))
    vim.keymap.set('n', 'F',       api.live_filter.clear,               opts('Live Filter: Clear'))
    vim.keymap.set('n', 'f',       api.live_filter.start,               opts('Live Filter: Start'))
    vim.keymap.set('n', 'g?',      api.tree.toggle_help,                opts('Help'))
    vim.keymap.set('n', 'gy',      api.fs.copy.absolute_path,           opts('Copy Absolute Path'))
    vim.keymap.set('n', 'ge',      api.fs.copy.basename,                opts('Copy Basename'))
    vim.keymap.set('n', 'H',       api.tree.toggle_hidden_filter,       opts('Toggle Filter: Dotfiles'))
    vim.keymap.set('n', 'I',       api.tree.toggle_gitignore_filter,    opts('Toggle Filter: Git Ignore'))
    vim.keymap.set('n', 'J',       api.node.navigate.sibling.last,      opts('Last Sibling'))
    vim.keymap.set('n', 'K',       api.node.navigate.sibling.first,     opts('First Sibling'))
    vim.keymap.set('n', 'L',       api.node.open.toggle_group_empty,    opts('Toggle Group Empty'))
    vim.keymap.set('n', 'M',       api.tree.toggle_no_bookmark_filter,  opts('Toggle Filter: No Bookmark'))
    vim.keymap.set('n', 'm',       api.marks.toggle,                    opts('Toggle Bookmark'))
    vim.keymap.set('n', 'o',       api.node.open.edit,                  opts('Open'))
    vim.keymap.set('n', 'O',       api.node.open.no_window_picker,      opts('Open: No Window Picker'))
    vim.keymap.set('n', 'p',       api.fs.paste,                        opts('Paste'))
    vim.keymap.set('n', 'P',       api.node.navigate.parent,            opts('Parent Directory'))
    vim.keymap.set('n', 'q',       api.tree.close,                      opts('Close'))
    vim.keymap.set('n', 'r',       api.fs.rename,                       opts('Rename'))
    vim.keymap.set('n', 'R',       api.tree.reload,                     opts('Refresh'))
    vim.keymap.set('n', 's',       api.node.run.system,                 opts('Run System'))
    vim.keymap.set('n', 'S',       api.tree.search_node,                opts('Search'))
    vim.keymap.set('n', 'u',       api.fs.rename_full,                  opts('Rename: Full Path'))
    vim.keymap.set('n', 'U',       api.tree.toggle_custom_filter,       opts('Toggle Filter: Hidden'))
    vim.keymap.set('n', 'W',       api.tree.collapse_all,               opts('Collapse'))
    vim.keymap.set('n', 'x',       api.fs.cut,                          opts('Cut'))
    vim.keymap.set('n', 'y',       api.fs.copy.filename,                opts('Copy Name'))
    vim.keymap.set('n', 'Y',       api.fs.copy.relative_path,           opts('Copy Relative Path'))
    vim.keymap.set('n', '<2-LeftMouse>',  api.node.open.edit,           opts('Open'))
    -- vim.keymap.set('n', '<2-RightMouse>', api.tree.change_root_to_node, opts('CD'))
    -- END_DEFAULT_ON_ATTACH
    -- -- remove a default
    -- vim.keymap.del('n', '<C-]>', { buffer = bufnr })

    -- -- override a default
    vim.keymap.set('n', 'cd', api.tree.change_root_to_node, opts('CD'))

    -- -- add your mappings
    -- vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help'))
end -- keybindings_nvim_tree_handle

--telescope
local function keybindings_telescope_handle()
    local builtin = require('telescope.builtin')
    local function opts(desc)
        return { desc = 'telescope: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end -- opts
    vim.keymap.set('n', '<leader>ff', builtin.find_files, opts('find_files'))
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, opts('live_grep'))
    vim.keymap.set('n', '<leader>fb', builtin.buffers, opts('buffers'))
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, opts('help_tags'))
end -- keybindings_telescope_handle

--bufferline
local function keybindings_bufferline_handle()
    local buferline = require('bufferline')
    local function opts(desc)
        return { desc = 'bufferline: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end -- opts
    vim.keymap.set('n', '<leader>1', ":BufferLineGoToBuffer 1<CR>", opts('go_to_buffer(visible)(1)'))
    -- vim.keymap.set('n', '<leader>2', buferline.go_to(2, false), opts('go_to_buffer(visible)(2)'))
    -- vim.keymap.set('n', '<leader>3', buferline.go_to(3, false), opts('go_to_buffer(visible)(3)'))
    -- vim.keymap.set('n', '<leader>4', buferline.go_to(4, false), opts('go_to_buffer(visible)(4)'))
    -- vim.keymap.set('n', '<leader>5', buferline.go_to(5, false), opts('go_to_buffer(visible)(5)'))
    -- vim.keymap.set('n', '<leader>6', buferline.go_to(6, false), opts('go_to_buffer(visible)(6)'))
    -- vim.keymap.set('n', '<leader>7', buferline.go_to(7, false), opts('go_to_buffer(visible)(7)'))
    -- vim.keymap.set('n', '<leader>8', buferline.go_to(8, false), opts('go_to_buffer(visible)(8)'))
    -- vim.keymap.set('n', '<leader>9', buferline.go_to(9, false), opts('go_to_buffer(visible)(9)'))
    -- vim.keymap.set('n', '<leader>0', buferline.go_to(-1, false), opts('go_to_buffer(visible)(-1)'))
end -- keybindings_bufferline_handle

return {
    neovim_setup = keybindings_neovim_handle,
    nvim_tree = {
        on_attach = keybindings_nvim_tree_handle
    },
    telescope_setup = keybindings_telescope_handle,
    bufferline_setup = keybindings_bufferline_handle,
}
