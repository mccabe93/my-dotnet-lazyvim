return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        panel = {
          enabled = false, -- Disables the massive side panel splits
        },
        suggestion = {
          enabled = true,
          auto_trigger = true, -- Triggers ghost text automatically as you type
          debounce = 75,       -- Low delay (ms) for lightning-fast responsiveness
          keymap = {
            accept = "<Tab>",       -- Accepts the suggestion, just like in VS
            accept_word = "<M-w>",  -- Alt + w: Accepts only the next word
            accept_line = "<M-l>",  -- Alt + l: Accepts only the next line
            next = "<M-]>",         -- Alt + ]: Cycles to next suggestion
            prev = "<M-[>",         -- Alt + [: Cycles to previous suggestion
            dismiss = "<C-]>",      -- Ctrl + ]: Dismisses the ghost text
          },
        },
        filetypes = {
          cs = true,       -- Explicitly ensure C# files are enabled
          razor = true,    -- Enable for Blazor/Razor if you use them
          ["*"] = false,   -- (Optional) Disable everywhere else if you only want it for C#
        },
        copilot_node_command = "node", -- The NES backend requires node to be available in your PATH
      })
    end,
  },
}
