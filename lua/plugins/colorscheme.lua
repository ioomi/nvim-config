return {
  {
    "cocoix/gelato.nvim",
    lazy = false,
    priority = 1000,
    dependencies = {
      "tinted-theming/tinted-nvim",
    },
    config = function()
      vim.cmd.colorscheme("gelato")
    end,
  },
}
