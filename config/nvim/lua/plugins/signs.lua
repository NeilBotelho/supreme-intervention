local gs=require("gitsigns")
local noremap=function (mode,lhs,rhs,silent)
	if silent==nil then
		silent=true
	end
	   vim.keymap.set(mode, lhs,rhs,{noremap=true, silent=silent})
end

-- noremap('n', '<leader>hs', gs.stage_hunk)
-- noremap('n', '<leader>hr', gs.reset_hunk)
-- noremap('v', '<leader>hs', function() gs.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
-- noremap('v', '<leader>hr', function() gs.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
-- noremap('n', '<leader>hS', gs.stage_buffer)
-- noremap('n', '<leader>hu', gs.undo_stage_hunk)
-- noremap('n', '<leader>hR', gs.reset_buffer)
-- noremap('n', '<leader>hp', gs.preview_hunk)
noremap('n', '<leader>hb', function() gs.blame_line{full=true} end)
noremap('n', '<leader>tb', gs.toggle_current_line_blame)
noremap('n', '<leader>hd', gs.diffthis)
noremap('n', '<leader>hD', function() gs.diffthis('~') end)
noremap('n', '<leader>td', gs.toggle_deleted)
