return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

    {
        "christoomey/vim-tmux-navigator",
        lazy = false, -- disable lazy loading, loads on startup
        cmd = {
            "TmuxNavigateLeft",
            "TmuxNavigateDown",
            "TmuxNavigateUp",
            "TmuxNavigateRight",
            "TmuxNavigatePrevious",
        },
        keys = {
            {
                "<c-h>",
                "<cmd><C-U>TmuxNavigateLeft<cr>",
                desc="Tmux Navigate Left"
            },
            {
                "<c-j>",
                "<cmd><C-U>TmuxNavigateDown<cr>",
                desc="Tmux Navigate Down"
            },
            {
                "<c-k>",
                "<cmd><C-U>TmuxNavigateUp<cr>",
                desc="Tmux Navigate Up"
            },
            {
                "<c-l>",
                "<cmd><C-U>TmuxNavigateRight<cr>",
                desc="Tmux Navigate Right"
            },

        },
    },
}
