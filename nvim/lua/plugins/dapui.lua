return {
  "rcarriga/nvim-dap-ui",
  lazy = true,
  dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
  opts = 
  {
    layouts = {
      {
        elements = {
          { id = "scopes", size = 0.25 },
          { id = "breakpoints", size = 0.25 },
          { id = "stacks", size = 0.25 },
          { id = "watches", size = 0.25 },
        },
        size = 40,
        position = "left",
      },
      {
        elements = {
          { id = "easy-dotnet_cpu", size = 0.5 },
          { id = "easy-dotnet_mem", size = 0.5 },
        },
        size = 35,
        position = "right",
      },
    }
  },
}
