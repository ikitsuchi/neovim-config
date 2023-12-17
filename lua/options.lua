local options = {
  -- tab
  tabstop = 2, -- number of spaces that <Tab> in file uses
  softtabstop = 2, -- number of spaces that <Tab> uses while editing
  shiftwidth = 2, -- number of spaces to use for (auto)indent step
  expandtab = true, -- use spaces when <Tab> is inserted

  -- UI
  number = true, -- print the line number in front of each line
  relativenumber = true, -- show relative line number in front of each line
  cursorline = true, -- highlight the screen line of the cursor
  splitbelow = true, -- new window from split is below the current one
  splitright = true, -- new window is put right of the current one

  -- searching
  incsearch = true, -- highlight match while typing search pattern
  hlsearch = true, -- highlight matches with last search pattern
  ignorecase = true, -- ignore case in search patterns
  smartcase = true, -- no ignore case when pattern has uppercase

  -- others
  completeopt = {'menu', 'menuone', 'noselect', 'preview'}, -- options for Insert mode completion
  clipboard = 'unnamedplus', -- use system clipboard
  fileencodings = 'utf-8, gb2312, gbk, gb18030, japan' -- complex Asian character encodings...
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.opt.formatoptions:append('m') -- Also break at a multibyte character above 255.  This is useful for	Asian text where every character is a word on its own.
