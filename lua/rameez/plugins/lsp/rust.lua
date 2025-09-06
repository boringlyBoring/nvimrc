-- ~/.config/nvim/lua/plugins/rust.lua
return {
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = {
      "nvim-lspconfig",
      "mfussenegger/nvim-dap", -- Optional, for debugging
    },
    opts = function()
      local rust_tools_opts = {}
      -- Configure rust-tools.nvim options here
      -- Example:
      -- rust_tools_opts.tools = {
      --   autoSetHints = true,
      --   inlay_hints = {
      --     show_parameter_hints = true,
      --     parameter_hints_prefix = "<- ",
      --     metrics_hint_prefix = "-> ",
      --   },
      -- }
      return rust_tools_opts
    end,
    config = function(_, opts)
      require("rust-tools").setup(opts)
    end,
  },
  {
    "neovim/nvim-lspconfig",
    ft = "rust",
    opts = {
      servers = {
        rust_analyzer = {}, -- This enables rust-analyzer LSP
      },
    },
  },
}
