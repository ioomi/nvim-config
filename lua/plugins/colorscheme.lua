return {
  {
    "cocoix/gelato.nvim",
    dir = "/home/fzh/code/repos/gelato.nvim",
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
