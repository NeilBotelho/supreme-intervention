-- Initial Setup {{{
vim.cmd([[
set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list=['exact', 'substring', 'fuzzy']
set lazyredraw

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c
]])
local treesitter_cache_dir=vim.g.cache_dir
local nvim_lsp = require('lspconfig')
---}}}
-- nvim-cmp {{{

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

--}}}
-- General lsp maps {{{
-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local lsp_maps = function(_, buffnr)
  local function buf_set_keymap(...) vim.keymap.set(...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(buffnr, ...) end

  --Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true ,buffer=0}

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', vim.lsp.buf.declaration, opts)
  buf_set_keymap('n', 'gd', vim.lsp.buf.definition, opts)
  buf_set_keymap('n', 'gt', vim.lsp.buf.type_definition, opts)
  buf_set_keymap('n', 'K', vim.lsp.buf.hover, opts)
  buf_set_keymap('n', 'gi', vim.lsp.buf.implementation, opts)
  buf_set_keymap('i', '<C-s>', vim.lsp.buf.signature_help, opts)
  buf_set_keymap('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
  buf_set_keymap('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
  buf_set_keymap('n', '<space>D', vim.lsp.buf.type_definition, opts)
  buf_set_keymap('n', '<space>rn', vim.lsp.buf.rename, opts)
  buf_set_keymap('n', '<space>ca', vim.lsp.buf.code_action, opts)
  buf_set_keymap('n', 'gr', vim.lsp.buf.references, opts)
 	buf_set_keymap('n', '<space>e', vim.lsp.diagnostic.show_line_diagnostics, opts)
 	buf_set_keymap('n', '<space>dj', vim.lsp.diagnostic.goto_next, opts)
 	buf_set_keymap('n', '<space>dk', vim.lsp.diagnostic.goto_prev, opts);
  buf_set_keymap("n", "<space>f", vim.lsp.buf.formatting, opts)
  buf_set_keymap('n', '<space>wl', function()print(vim.inspect(vim.lsp.buf.list_workspace_folders()))end, opts)
end

--}}}
-- General Server Setup {{{
-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = {"jedi_language_server", "rust_analyzer" ,"tsserver", "gopls","bashls","yamlls","texlab","cmake","html","clangd"}

for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
		on_attach=lsp_maps,--require'completion'.on_attach,
    capabilities = capabilities,
		cache={
			directory=treesitter_cache_dir..lsp
		},
    flags = {
      debounce_text_changes = 150,
    }
  }
end
-- }}}
 -- Sumneko lua Server Setup {{{
local system_name
if vim.fn.has("mac") == 1 then
  system_name = "macOS"
elseif vim.fn.has("unix") == 1 then
  system_name = "Linux"
elseif vim.fn.has('win32') == 1 then
  system_name = "Windows"
else
  print("Unsupported system for sumneko")
end

-- set the path to the sumneko installation; if you previously installed via the now deprecated :LspInstall, use
local sumneko_root_path ='/home/neil/.config/sumneko/lua-language-server'
local sumneko_binary = sumneko_root_path.."/bin/"..system_name.."/lua-language-server"

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

require'lspconfig'.sumneko_lua.setup {
	on_attach=lsp_maps,--require'completion'.on_attach,
	capabilities = capabilities,
  cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua" ,"--logpath="..treesitter_cache_dir.."lua-lang-server/log"};
	cache={
		directory=treesitter_cache_dir..'lua-lang-server'
	},
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = runtime_path,
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
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
-- 		on_attach=general_attach,
-- 		flags = {
-- 			debounce_text_changes = 500,
-- 		}
--  }
--}}}
