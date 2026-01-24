{
  plugins.treesitter = {
    enable = true;
    highlight.enable = true;
    indent.enable = true;
    folding.enable = true;
    nixvimInjections = true;
  };

  plugins.treesitter-textobjects = {
    enable = true;
    settings = {
      select = {
        enable = true;
        lookahead = true;
        keymaps = {
          "af" = "@function.outer";
          "if" = "@function.inner";
          "ac" = "@class.outer";
          "ic" = "@class.inner";
          "aa" = "@parameter.outer";
          "ia" = "@parameter.inner";
          "al" = "@loop.outer";
          "il" = "@loop.inner";
          "ai" = "@conditional.outer";
          "ii" = "@conditional.inner";
        };
      };
    };
  };

  plugins.rainbow-delimiters.enable = true;

  plugins.treesitter-context = {
    enable = true;
    settings = {
      max_lines = 3;
      trim_scope = "outer";
    };
  };
}
