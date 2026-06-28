{
  imports = [
    ./tree.nix
    ./autocomplete.nix
    ./lsp.nix
    ./conform.nix
  ];

  # misc
  plugins.which-key.enable = true;
  plugins.nvim-autopairs.enable = true;
  plugins.sleuth.enable = true;
  plugins.gitsigns.enable = true;
  plugins.todo-comments.enable = true;

  # ui
  plugins.noice.enable = true;
  plugins.web-devicons.enable = true;

  plugins.snacks = {
    enable = true;
    settings = {
      bigfile.enabled = true;
      scroll.enabled = true;
      explorer.enabled = true;
      indent.enabled = false;
      words.enabled = true;
      picker = {
        enabled = true;
        ui_select = true;
        win.input.border = "single";
        win.list.border = "single";
        win.preview.border = "single";
        win.input.keys."<esc>".__raw = ''{ "close", mode = { "n", "i" } }'';
        sources = {
          files.hidden = true;
          files.ignored = false;
          files.exclude = [
            ".git"
            "node_modules"
            "target"
            "__pycache__"
            "dist"
            "build"
            "result"
            ".direnv"
            ".vscode"
            ".idea"
          ];
          git_files.untracked = false;
        };
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>o";
      action.__raw = "function() Snacks.picker.files() end";
      options.silent = true;
      options.desc = "Find files";
    }
    {
      mode = "n";
      key = "<leader>p";
      action.__raw = "function() Snacks.picker.buffers() end";
      options.silent = true;
      options.desc = "Buffers";
    }
    {
      mode = "n";
      key = "<leader>h";
      action.__raw = "function() Snacks.picker.help() end";
      options.silent = true;
      options.desc = "Help tags";
    }
    {
      mode = "n";
      key = "<leader>g";
      action.__raw = "function() Snacks.picker.git_files() end";
      options.silent = true;
      options.desc = "Git files";
    }
    {
      mode = "n";
      key = "<leader>/";
      action.__raw = "function() Snacks.picker.grep() end";
      options.silent = true;
      options.desc = "Live grep";
    }
    {
      mode = "n";
      key = "<leader>C";
      action.__raw = "function() Snacks.picker.colorschemes() end";
      options.silent = true;
      options.desc = "Colorschemes";
    }
  ];

  # snippets
  plugins.friendly-snippets.enable = true;

  # languages
  plugins.nix.enable = true;

  plugins.toggleterm = {
    enable = true;
    settings = {
      direction = "float";
      float_opts = {
        border = "single";
        height = 30;
        width = 130;
      };
      open_mapping = "[[<c-space>]]";
    };
  };
}
