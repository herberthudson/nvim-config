return {
  "m4xshen/hardtime.nvim",
  event = "VeryLazy",
  enabled = false,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
  },
  opts = {},
  config = function()
    vim.opt.showmode = false
  end,
}
