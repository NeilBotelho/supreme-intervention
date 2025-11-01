return {
	{
		'nvim-orgmode/orgmode',
		event = 'VeryLazy',
		config = function()
			-- Setup orgmode
			local org_capture_templates = {
				i = {
					description = "Issue",
					template = "* Issue %?",
					target = "~/.local/share/orgfiles/issues.org",
				}
			}
			require('orgmode').setup({
				org_agenda_files = '~/.local/share/orgfiles/**/*',
				org_default_notes_file = '~/.local/share/orgfiles/refile.org',
				org_todo_keywords = { 'TODO', 'WAITING', '|', 'DONE', 'DELEGATED' },
				org_capture_templates = org_capture_templates
			})
		end,
	}
}
