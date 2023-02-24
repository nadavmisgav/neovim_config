local api = vim.api

local settings = {
	-- Allow new buffer to be opened without saving current
	hidden = true,
	--  Automatically reread the file if a change was detected outside of vim
	autoread = true,
	-- don't show mode indicator line
	showmode = false,
	-- Enable swap file and location of file
	swapfile = true,
	dir = "/tmp",
	-- Highlight search results
	hlsearch = false,
	incsearch = true,
	-- Case sensitive search unless uppercase is present
	ignorecase = true,
	smartcase = true,
	-- Keep context around cursor
	scrolloff = 3,
	sidescrolloff = 5,
	-- Enable mouse scroll
	mouse = "ar",
	-- Line Numbers
	number = true,
	relativenumber = true,
	-- Don't automatically collapse markdown and latex
	conceallevel = 0,
	-- Tab settings
	expandtab = true,
	tabstop = 4,
	softtabstop = 4,
	shiftwidth = 4,
	smarttab = true,
	autoindent = true,
	smartindent = true,
	shiftround = true,
	-- Line wrapping
	wrap = false,
	-- Split windows to the right
	splitright = true,
	-- make statusline cover the entire bottom
	laststatus = 3,
	-- creates a backup file
	backup = false,
	-- more space in the neovim command line for displaying messages
	cmdheight = 2,
	-- the encoding written to a file
	fileencoding = "utf-8",
	-- pop up menu height
	pumheight = 10,
	-- always show tabs
	showtabline = 4,
	-- force all horizontal splits to go below current window
	splitbelow = true,
	-- time to wait for a mapped sequence to complete (in milliseconds)
	timeoutlen = 500,
	-- enable persistent undo
	undofile = true,
	-- faster completion (4000ms default)
	updatetime = 300,
	-- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
	writebackup = false,
	-- set number column width to 2 {default 4}
	numberwidth = 4,
}


vim.opt.shortmess:append("c") -- don't show redundant messages from ins-completion-menu
vim.opt.shortmess:append("I") -- don't show the default intro message
vim.opt.whichwrap:append("<,>,[,],h,l")

for k, v in pairs(settings) do
	vim.opt[k] = v
end


-- nerdcommenter
-- NERDCommenter
-- add 1 space after comment delimiter
api.nvim_set_var("NERDSpaceDelims", 1)
