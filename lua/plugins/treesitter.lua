return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").install({
        lua,
        c,
        cpp,
        nix,
        markdown,
        rust,
        bash,
        fish,
        python,
        yaml,
      })
    end,
  },
}
