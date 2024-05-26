--Snippet Shortcuts
local ls = require "luasnip"
local pps = ls.parser.parse_snippet
-- This is a snippet creator
-- -- s(<trigger>, <nodes>)
local s = ls.snippet
local sn = ls.snippet_node

-- Format Nodes. Sort of like f-strings
-- fmt(<fmt_string>, {..nodes})
local fmt = require("luasnip.extras.fmt").fmt

--Insert Node
-- Takes a position(eg $1) and optionally some default text
-- i(<position>, [default_text])
local i = ls.insert_node

--Repeat a node
--rep(<position>)
local rep = require("luasnip.extras").rep

--text node
local t = ls.text_node




local cpp_templates = {
	pps("cpp", "#include<iostream>$1\nusing namespace std;\n\nint main(){\n$0\n}\n"),
	pps("comp", "#include<bits/stdc++.h>$1\nusing namespace std;\n\nint main(){\n$0\n}\n")
}
local c_templates = {
	pps("c", "#include<stdio.h>\n#include<stdlib.h>$1\n\nint main(){\n$0\n}\n")
}

local html_templates = {
	pps("html", "<!DOCTYPE HTML>\n<html>\n	<head><title>$1 </title></head>\n	<body>\n\n$0\n	</body>\n</html>\n\n")
}

local lua_templates = {
	pps("lf", "local $1 = function()\n$0\nend"),
	pps("gf", "$1=function($2)\n$0\nend"),
	pps("mf", "$1.$2=function($3)\n$0\nend"),
	s("req", fmt("local {} = require('{}')", { i(1), rep(1) })),
}

local tag_templates = {
	s("tag", fmt("<{} >\n{}\n</{}>{}", { i(1, "tagName"), i(2), rep(1), i(0) })),
	s("stag", fmt("<{}/>\n{}", { i(1), i(0) }))
}

local css_templates = {
	s("bgc", fmt("background-color:{};", { i(0) })),
}
local zig_templates={
	s("print", fmt("std.debug.print(\"{}\",.{{{}}});",{i(0),i(1)})),
	s("cImport", fmt('@cImport({{\n@cInclude("{}");\n}});',{i(1)}))

}

ls.add_snippets("cpp", cpp_templates)
ls.add_snippets("c", c_templates)
ls.add_snippets("html", html_templates)
ls.add_snippets("c", c_templates)
ls.add_snippets("javascript", tag_templates)
ls.add_snippets("lua", lua_templates)
ls.add_snippets("css", css_templates)
ls.add_snippets("zig",zig_templates)
ls.add_snippets("lua", {
	s("trig", {
		i(1), t " ", sn(2, {
		t " ", i(1), t " ", i(2)
	})
	})
})

    

