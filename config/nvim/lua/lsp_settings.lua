
-- Initial Setup {{{
vim.cmd([[
set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list=['exact', 'substring', 'fuzzy']
set lazyredraw

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>" " Set completeopt to have a better completion experience set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c
]])
local treesitter_cache_dir=vim.g.cache_dir
local nvim_lsp = require('lspconfig')
---}}}
-- LSP severity filtering{{{
	local filterWarning = function(selectedSeverity)
		if selectedSeverity == "DISABLE" then
			vim.diagnostic.hide()
			return
		end
		if (selectedSeverity) then
			vim.diagnostic.config({
				virtual_text = { severity = selectedSeverity },
				signs = { severity = selectedSeverity },
				underline = { severity = selectedSeverity },
				severity_sort = true
			})
		else
			vim.diagnostic.config({
				virtual_text = true,
				signs = true,
			})
		end
	end
	local function pickSeverity(opts)
		local pickers = require "telescope.pickers"
		local finders = require "telescope.finders"
		local conf = require("telescope.config").values
		local actions = require "telescope.actions"
		local action_state = require "telescope.actions.state"
		local severityDict = {
			HINT = vim.diagnostic.severity.HINT,
			INFO = vim.diagnostic.severity.INFO,
			WARN = vim.diagnostic.severity.WARN,
			ERROR = vim.diagnostic.severity.ERROR,
			DISABLE = "DISABLE",
			ALL = nil
		}
		-- our picker function: colors
		opts = opts or {}
		pickers.new(opts, {
			prompt_title = "colors",
			finder = finders.new_table {
				results = {"ERROR","WARN","INFO","HINT","ALL","DISABLE"}
			},
			sorter = conf.generic_sorter(opts),
			attach_mappings = function(prompt_bufnr, map)
				actions.select_default:replace(function()
					actions.close(prompt_bufnr)
					local selection = action_state.get_selected_entry()
					filterWarning(severityDict[selection[1]])
				end)
				return true
			end,
		}):find()
	end

-- }}}
-- nvim-cmp {{{

-- local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

--}}}
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { noremap=true, silent=true, buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set({'n','i'}, '<C-s>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<leader>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', 'fw', pickSeverity, opts)
    vim.keymap.set('n', '<leader>W', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})
--}}}
-- General Server Setup {{{
-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = {"tsserver", "gopls","bashls","yamlls","texlab","neocmake","html","clangd","emmet_ls","cssls","rnix","zls"}

for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
		cache={
			directory=treesitter_cache_dir..lsp
		},
    flags = {
      debounce_text_changes = 150,
    }
  }
end
--}}}
--Pylsp{{{
require'lspconfig'.pylsp.setup{
  settings = {
    pylsp = {
      plugins = {
				black = {
					enabled=true,
				},
				ruff = {
					enabled = true,
					-- select={"F","W","E","ERA","FLY","TRY","PERF","RUF","FURB"},
					-- extendSelect = { "I" },
				},
      }
    }
  }
}
nvim_lsp["emmet_ls"].setup{
	  filetypes={"html", "typescriptreact", "javascriptreact"},
		cache={
			directory=treesitter_cache_dir.."emmet_ls"
		},
    flags = {
      debounce_text_changes = 150,
    }
}
-- }}}
 -- lua-ls Setup {{{
 require'lspconfig'.lua_ls.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}
--}}}
-- Ale {{{
vim.cmd([[
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\   'html': ['prettier'],
\}
let g:ale_linters_explicit = 1 
let g:ale_javascript_prettier_options = '--single-quote --trailing-comma all'
]])
-- }}}
-- ccls Server Setup {{{
-- nvim_lsp['ccls'].setup {
-- 		cmd={"ccls","--init",'{"cache": {"directory": "'..treesitter_cache_dir..'ccls-cache"}}'},
-- 		    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
--
-- 		flags = {
-- 			debounce_text_changes = 500,
-- 		}
--  }
--}}}


