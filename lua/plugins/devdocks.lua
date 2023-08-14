return {
  "luckasRanarison/nvim-devdocs",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "nvim-treesitter/nvim-treesitter",
    "ellisonleao/glow.nvim",
  },
  lazy = false,
  keys = {
    { "<leader>dd", "<cmd>DevdocsOpenFloat<CR>", { noremap = true, silent = true } },
  },
  opts = {
    -- previewer_cmd = "glow",
  },
}
