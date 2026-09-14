return {
  {
    "olimorris/codecompanion.nvim",
    version = "^19.0.0",
    opts = {
      adapters = {
        acp = {
          extend = {
            codex = {
              defaults = {
                auth_method = "chat-gpt",
              },
            },
          },
        },
      },
      interactions = {
        chat = {
          adapter = "codex",
        },
        cli = {
          agent = "codex",
          agents = {
            codex = {
              cmd = "codex",
              args = {},
              description = "OpenAI Codex CLI",
              provider = "terminal",
            },
          },
        },
      },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    keys = {
      {
        "<leader>at",
        "<cmd>CodeCompanionChat Toggle<cr>",
        mode = { "n", "v" },
        desc = "Codex chat",
      },
      {
        "<leader>ac",
        "<cmd>CodeCompanionCLI<cr>",
        desc = "Codex CLI",
      },
      {
        "<leader>aa",
        "<cmd>CodeCompanionActions<cr>",
        mode = { "n", "v" },
        desc = "AI actions",
      },
    },
  },
}
