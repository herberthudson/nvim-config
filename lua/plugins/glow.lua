return {
  "ellisonleao/glow.nvim",
  config = true,
  event = "BufReadPost",
  cmd = "Glow",
  opts = function()
    require("glow").setup({
      style = "dark",
      border = "rounded",
    })
  end,
}
