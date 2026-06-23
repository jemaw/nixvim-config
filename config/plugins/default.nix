{
  imports = [
    ./tree.nix
    ./autocomplete.nix
    ./telescope.nix
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
      indent.enabled = true;
      words.enabled = true;
    };
  };

  # snippets
  plugins.friendly-snippets.enable = true;

  # languages
  plugins.nix.enable = true;

  # maybe in future
  plugins.bufferline.enable = false;
  plugins.nvim-ufo.enable = false;

  plugins.toggleterm = {
    enable = true;
    settings = {
      direction = "float";
      float_opts = {
        border = "curved";
        height = 30;
        width = 130;
      };
      open_mapping = "[[<c-space>]]";
    };
  };
}
