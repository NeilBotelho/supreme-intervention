local opts={
	  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_tab         = true,
  hijack_cursor       = false,
  update_cwd          = false,
		actions ={
		open_file = {
			resize_window = false,
		}
	},

  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    width = 30,
    side = 'left',
    -- auto_resize = false,
    number = false,
    relativenumber = false,
    signcolumn = "yes"
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  }

}
return {
	{
		'kyazdani42/nvim-tree.lua',
		opts=opts,
		keys={"<leader>T"}
	}
}
