function RequireReload(moduleName)
	for k in pairs(package.loaded) do
		if k:match("^" .. moduleName) then
			package.loaded[k] = nil
			-- print("unloaded "..k)
			return
		end
	end
	require(moduleName)
end

-- Lua modules
package.path = package.path .. ";/home/neil/.luarocks/share/lua/5.1/?.lua"
package.path = package.path .. ";/home/neil/.luarocks/share/lua/5.1/?/init.lua"

-- C modules
package.cpath = package.cpath .. ";/home/neil/.luarocks/lib/lua/5.1/?.so"
vim.g.cache_dir="/tmp/vim_cache/"
require "lazy_plugs"
RequireReload "settings"
RequireReload "general_plugin_settings"
RequireReload "runners"
RequireReload "helpers"
-- RequireReload "loader"
RequireReload "dap_settings"
RequireReload "lsp_settings"
RequireReload "snippets"
RequireReload "maps"
RequireReload("aiplugin")
vim.cmd [[
 so /home/neil/.config/nvim/lib/functions.vim
 so /home/neil/.config/nvim/lib/abbreviations.vim
]]

-- macros fix
vim.cmd [[
nnoremap @ <cmd>set lazyredraw <bar> execute "noautocmd norm! " . v:count1 . "@" . getcharstr() <bar> set nolazyredraw<cr>
xnoremap @ :<C-U>set lazyredraw <bar> execute "noautocmd '<,'>norm! " . v:count1 . "@" . getcharstr()<bar> set nolazyredraw<cr>
nnoremap Q <cmd>set lazyredraw <bar> execute "noautocmd norm! Q" <bar> set nolazyredraw<cr>
xnoremap Q :<C-U>set lazyredraw <bar> execute "noautocmd '<,'>norm! Q" <bar> set nolazyredraw<cr>
]]
