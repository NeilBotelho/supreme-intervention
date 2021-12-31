local getMapSet=function (mode)
	local mapDict=vim.api.nvim_get_keymap(mode)
	local existentDict={}
	for _,mapDesc in pairs(mapDict) do
		existentDict[mapDesc["lhs"]]=true	
	end
	return existentDict
end


local deduplicator={}
local noremap=function (mode,lhs,rhs)
	if(deduplicator[lhs.."MODE"..mode] == true)
		then
		print("WARNING duplicate map: "..lhs,rhs)
	else
		deduplicator[lhs.."MODE"..mode]=true
	end
	vim.api.nvim_set_keymap(mode,lhs,rhs,{noremap=true})
end

vim.g.mapleader=" "


-- General
function General()
	noremap("n","tn",":set invnumber<CR>")
	noremap("n","tb",":SignatureToggleSigns<CR>")
	noremap("n","tr",":RelativizeToggle<CR>")
	noremap("n","So",":w<CR>:source $MYVIMRC<CR>")
	noremap("n","Sp",":w<CR>:source $MYVIMRC<CR>:PlugInstall<CR>")
	noremap("n","Sm",":setlocal foldmethod=marker<CR>")
	noremap("n","Pi","So:PlugInstall<CR>")
	noremap("n","<leader>c",":Telescope colorscheme<CR>")
	noremap("n","<Esc>","<Esc><Esc>")
	noremap("n","<leader>ev",":edit $MYVIMRC<CR>")
	noremap("n","<leader>w",":w<CR>")
	noremap("n","<leader>Q",":q!<CR>")
	noremap("n","<leader>q",":q<CR>")
	noremap("n","<leader>H",":noh<CR>")
	noremap("n","<leader>R",":%s/")
	noremap("n","Q","<Nop> ") --Disable Ex mode
end
function InsertMode()
	noremap("i","jj","<Esc>")
	noremap("i","<C-h>","<Esc>hi")
	noremap("i","<C-j>","<Esc>ji")
	noremap("i","<C-l>","<Esc>la")
end

function VisualMode()
	noremap("v","J",":m '>+1<CR>gv=gv")
	noremap("v","K",":m '<-2<CR>gv=gv")

end

function Searching()
	noremap("n","n","nzzzv")
	noremap("n","N","Nzzzv")
end

function TabNavigation()
	noremap("n","<C-k>","<C-PageUp>")
	noremap("n","<C-j>","<C-PageDown>")
	noremap("n","<C-Tab>",":tabn<CR>")
	noremap("n","<leader>wt","<C-w>T")
end


function VimFugitive()
	noremap("n","<leader>gs",":G<CR><C-w>o")
	noremap("n","<leader>gf",":diffget //2<CR>")
	noremap("n","<leader>gc",":G commit<CR>")
	noremap("n","<leader>gj",":diffget //3<CR>")

end

function Telescope()
	noremap("n","<leader>o",":Telescope find_files<CR>")
	noremap("n","<leader>O",":Telescope git_files<CR>")
	noremap("n","<leader>b",":Telescope buffers<CR>")
	noremap("n","<leader>t",":Telescope treesitter<CR>")
	noremap("n","<leader>s",":Telescope live_grep<CR>")
	noremap("n","<leader>f",":Telescope grep_string<CR>")
end
function Hop()
	noremap("n",",j",":HopWord<CR>")
	noremap("n",",l",":HopLine<CR>")
end
function Mundo()
	noremap("n","tz",":MundoToggle<CR>")
end

function AnyJump()
	noremap("v","<leader>u",":AnyJumpVisual<CR>")
	-- Anyjump with word under cursor
	noremap("n","<leader>u",":AnyJump<CR>")
	-- open last closed search window again
	noremap("n","<leader>al",":AnyJumpLastResults<CR>")
end

function Window()
	noremap("n","<leader>v","<C-w>v")
	noremap("n","<leader>wo","<C-w>o<CR>")
	noremap("n","<leader>h",":wincmd h<CR>")
	noremap("n","<leader>j",":wincmd j<CR>")
	noremap("n","<leader>k",":wincmd k<CR>")
	noremap("n","<leader>l",":wincmd l<CR>")
	noremap("n","<leader>w=",":resize +5<CR>")
	noremap("n","<leader>w-",":resize -5<CR>")
	noremap("n","<leader>w<",":vertical:resize -5<CR>")
	noremap("n","<leader>w>",":vertical:resize +5<CR>")
end

function Buffers()
	noremap("n","bn",":bn<CR>")
	noremap("n","bp",":bp<CR>")
	noremap("n",",s",":split new<CR>:setlocal buftype=nofile<CR>:file scratch<CR>")
	noremap("n",",S",":vsplit new<CR>:setlocal buftype=nofile<CR>:file scratch<CR>") --scratch buffer
end
function TerimnalToggle()
	noremap("n",",t",":call TerminalToggle()<cr>")
	noremap("t",",t","<C-\\><C-n>:call TerminalToggle()<cr>")
end

function PresentationMode()
	noremap("n","<leader>P",":call PresentMode()<CR>")
end

function Completion()
	noremap("i","<C-f>","<C-x><C-f>")
end

function Maximizer()
	noremap("n","<leader>m",":MaximizerToggle<CR>")
end

function Resizers()
	noremap("n",",<","15<C-w><")
	noremap("n",",>","15<C-w>>")
	noremap("n",",-","5<C-w>-")
	noremap("n",",=","5<C-w>+")
end



-- -- function ()
-- -- end

-- -- function ()
-- -- end

-- -- function ()
-- -- end

local mappers={General,InsertMode,VisualMode,Searching,TabNavigation,VimFugitive,Telescope,Mundo,AnyJump,Window,TerimnalToggle,PresentationMode,Completion,Hop,Buffers,Maximizer,Resizers}
 for _,fn in pairs(mappers) do
 	fn()
 end

