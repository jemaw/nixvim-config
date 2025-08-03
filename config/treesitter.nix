{
  plugins.treesitter = {
    enable = true;
    folding = true;
    nixvimInjections = true;
    settings = {
      indent.enable = true;
      incremental_selection = {
        enable = true;
        keymaps = {
          init_selection = "<CR>";
          node_incremental = "<CR>";
          scope_incremental = "<S-CR>";
          node_decremental = "<BS>";
        };
      };
    };
  };

  plugins.treesitter-textobjects = {
    enable = true;
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

  plugins.rainbow-delimiters.enable = true;

  plugins.treesitter-context = {
    enable = true;
    settings = {
      max_lines = 3;
      trim_scope = "outer";
    };
  };
}
