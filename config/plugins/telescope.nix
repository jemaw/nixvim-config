{
  plugins.telescope = {
    enable = true;

    keymaps = {
      "<leader>o" = "find_files";
      "<leader>p" = "buffers";
      "<leader>h" = "help_tags";
      "<leader>g" = "git_files";
      "<leader>/" = "live_grep";
    };

    settings = {
      pickers = {
        git_files = {
          show_untracked = false;
        };
        find_files = {
          hidden = true;
        };
      };
      defaults = {
        mappings = {
          i = {
            "<esc>" = {
              __raw = "require('telescope.actions').close";
            };
            "<c-j>" = {
              __raw = "require('telescope.actions').move_selection_next";
            };
            "<c-k>" = {
              __raw = "require('telescope.actions').move_selection_previous";
            };
          };
        };
      };
    };
  };
}
