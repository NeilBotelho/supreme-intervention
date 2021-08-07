require'nvim-treesitter.configs'.setup {
	ensure_installed = {"python", "rust", "latex", "json", "go",
											"c", "cpp", "cmake", "java", "lua", "bash",
											"rst","toml","typescript", "html", "css",
											"javascript"}, -- one of "all", "maintained" (parsers with maintainers), or a list of languages

  highlight = {
    enable = true,              -- false will disable the whole extension
  },
}

