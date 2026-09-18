return {
  {
    "nvim-mini/mini.ai",
    version = false,
    opts = {},
  },
  {
    "nvim-mini/mini.surround",
    version = false,
    opts = {},
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {
      modes = {
        char = {
          enabled = false,
        },
      },
    },
    keys = {
      {
        "s",
        mode = { "n", "x", "o" },
        function()
          require("flash").jump()
        end,
        desc = "Flash",
      },
    },
  },
}
