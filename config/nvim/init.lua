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

-- RequireReload"packer_plugs"
RequireReload "lazy_plugs"
RequireReload "settings"
RequireReload "runners"
RequireReload "helpers"
RequireReload "loader"
RequireReload "maps"


vim.cmd [[
 so /home/neil/.config/nvim/lib/functions.vim
 so /home/neil/.config/nvim/lib/abbreviations.vim
]]
