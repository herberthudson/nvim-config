return {
  "crnvl96/lazydocker.nvim",
  event = "VeryLazy",
  opts = {}, -- automatically calls `require("lazydocker").setup()`
  keys = {
    { "<leader>k", "<cmd>LazyDocker<CR>", { desc = "LazyDocker", noremap = true, silent = true } },
  },
  dependencies = {
    "MunifTanjim/nui.nvim",
  }
}
