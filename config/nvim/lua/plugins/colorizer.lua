-- Use the `default_options` as the second parameter, which uses
-- `foreground` for every mode. This is the inverse of the previous
-- setup configuration.
require 'colorizer'.setup {
  '*'; -- Highlight all files, but customize some others.
  '!vim'; -- Exclude vim from highlighting.
  -- Exclusion Only makes sense if '*' is specified!
  css = { rgb_fn = true; }; -- Enable parsing rgb(...) functions in css.
  html = { names = false; mode = 'background'} -- Disable parsing "names" like Blue or Gray
}

