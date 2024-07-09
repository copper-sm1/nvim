return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup ({
      on_attach = require("config.keybindings").nvim_tree.on_attach,
    })
  end,
}
