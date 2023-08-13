-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local browse = require("browse")

function command(name, rhs, opts)
  opts = opts or {}
  vim.api.nvim_create_user_command(name, rhs, opts)
end

command("InputSearch", function()
  browse.input_search()
end, {})

-- this will open telescope using dropdown theme with all the available options
-- in which `browse.nvim` can be used
command("Browse", function()
  browse.browse({ bookmarks = bookmarks })
end)

command("Bookmarks", function()
  browse.open_bookmarks({ bookmarks = bookmarks })
end)

command("DevdocsSearch", function()
  browse.devdocs.search()
end)

command("DevdocsFiletypeSearch", function()
  browse.devdocs.search_with_filetype()
end)

command("MdnSearch", function()
  browse.mdn.search()
end)
