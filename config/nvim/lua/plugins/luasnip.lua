local ls = require "luasnip"
local types = require "luasnip.util.types"


-- Initial config {{{
ls.config.set_config{
	-- keep last snippet
	-- allows to go back to last snippet and edit
	history = true,

	-- when to call updates.
	-- for dynamic snippet updates as you type
	updateevents = "TextChanged,TextChangedI",
	-- Autosnippets
	enable_autosnippets = true,
	ext_opts= {
		[types.choiceNode] = {
			active = {
				virt_text = { { "<--", "Error" } },
			},
		},
	},
}
--}}}
-- luasnip Maps{{{
--jump next
vim.keymap.set({"i","s"}, "<c-k>", function()
	if ls.expand_or_jumpable() then
		ls.expand_or_jump()
	else
		print("no expandable")
	end
end, {silent = true})

-- jump previos
vim.keymap.set({"i","s"}, "<c-j>", function()
	if ls.jumpable() then
		ls.jump(-1)
	end
end, {silent = true})

-- selecting within a list of options
-- Useful for choice nodes
vim.keymap.set("i", "<c-l>", function()
	if ls.choice_active() then
		ls.change_choice(-1)
	end
end)

--}}}
--Snippet Shortcuts{{{
local pps=ls.parser.parse_snippet

-- This is a snippet creator
-- -- s(<trigger>, <nodes>)
local s = ls.s

-- Format Nodes. Sort of like f-strings
-- fmt(<fmt_string>, {..nodes})
local fmt=require("luasnip.extras.fmt").fmt

--Insert Node
-- Takes a position(eg $1) and optionally some default text
-- i(<position>, [default_text])
local i =ls.insert_node

--Repeat a node
--rep(<position>)
local rep= require("luasnip.extras").rep

--text node
local t=ls.text_node
--}}}
--Template snippets {{{
local cpp_templates={
	pps("cpp","#include<iostream>$1\nusing namespace std;\n\nint main(){\n$0\n}\n"),
	pps("comp","#include<bits/stdc++.h>$1\nusing namespace std;\n\nint main(){\n$0\n}\n")
}
local c_templates={
	pps("c","#include<stdio.h>\n#include<stdlib.h>$1\n\nint main(){\n$0\n}\n")
}
local html_templates={
	pps("html","<!DOCTYPE HTML>\n<html>\n	<head><title>$1 </title></head>\n	<body>\n\n$0\n	</body>\n</html>\n\n")
}
local latex_templates={
	-- section
	pps("sec","\\section{$1}$0"),
	-- subsection
	pps("ss","\\subsection{$1}$0"),
	--Latex College assignement template
	s("tex",
		{t({"% Preamble {{{","\\documentclass[12pt]{article}","\\usepackage[margin=1in]{geometry}","\\usepackage{graphicx}","\\usepackage{float}","\\usepackage{array}","\\usepackage[labelformat=empty]{caption}","\\usepackage{amsmath}","\\usepackage{listings}","\\usepackage{hyperref}","\\hypersetup{","    colorlinks=true,"," citecolor=black,","   linkcolor=blue,","    filecolor=magenta,      ","    urlcolor=cyan,","    pdfpagemode=FullScreen,","    }","\\lstset{","basicstyle=\\small\\ttfamily,","columns=flexible,","breaklines=true","}","","\\newcommand{\\outputfig}[1]{","	\\begin{figure}[H]","		\\centering","		\\fbox{\\includegraphics[width=\\textwidth]{imgs/#1.png}}","		\\caption*{Figure  #1}","	\\end{figure}","}","","% }}}","\\title{"}), i(1),
		t({"}","\\author{"}),i(2,"Neil Botelho, 181105010"),
		t({"}","\\date{"}), i(3,"\\today"),
		t({"}","","\\begin{document}","{\\bfseries\\maketitle}","\\section{"}), i(4),
		t({"}",""}), i(0),
		t({"","\\end{document}",})
		}
	),
	--Latex table template
	pps("table","\\begin{center}\n\\begin{tabular}{ | m{5em} | m{1cm}| m{1cm} | } \n  \\hline\n  cell1 & cell2 & cell3 \\\\ \n  \\hline\n  cell1 & cell5 & cell6 \\\\ \n  \\hline\n  cell7 & cell8 & cell9 \\\\ \n  \\hline\n\\end{tabular}\n\\end{center}\n"),
}

--}}}


ls.snippets = {
	all= {
		pps("expand","This is the expanded form"),
	},
	lua={
		pps("lf","local $1 = function()\n$0\nend"),
		pps("gf","$1=function($2)\n$0\nend"),
		pps("mf","$1.$2=function($3)\n$0\nend"),
		s("req",fmt("local {} = require('{}')", {i(1),rep(1)})),
	},

	cpp=cpp_templates,
	c=c_templates,
	html=html_templates,
	tex=latex_templates,
}



