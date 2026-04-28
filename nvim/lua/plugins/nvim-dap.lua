return {
  "mfussenegger/nvim-dap",
  lazy = true,
  config = function()
    -- You can add dap setup/config here if needed
  end,
  keys = {
    {
      "<leader>db",
      function() require("dap").toggle_breakpoint() end,
      desc = "Toggle Breakpoint",
    },
    {
      "<leader>dc",
      function() require("dap").continue() end,
      desc = "Continue",
    },
    {
      "<leader>dC",
      function() require("dap").run_to_cursor() end,
      desc = "Run to Cursor",
    },
    {
      "<leader>dT",
      function() require("dap").terminate() end,
      desc = "Terminate",
    },
  },
}
