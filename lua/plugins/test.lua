return {
  {
    "nvim-neotest/neotest",
    dependencies = { "haydenmeade/neotest-jest" },
    opts = function(_, opts)
      table.insert(
        opts.adapters,
        require("neotest-jest")({
          jestCommand = "npm test --",
          jestConfigFile = "custom.jest.config.js",
          env = { CI = true },
          cmd = function()
            return vim.fn.getcwd()
          end,
        })
      )
    end,
  }
}
