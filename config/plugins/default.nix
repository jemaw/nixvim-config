{
  imports = [ 
    ./tree.nix
    ./autocomplete.nix
  ];

  # misc
  plugins.which-key.enable = true;
  plugins.nvim-autopairs.enable = true;
  plugins.comment.enable = true;
  plugins.sleuth.enable = true;
  plugins.gitsigns.enable = true;
  plugins.todo-comments.enable = true;
  plugins.neoscroll.enable = true;

  # ui
  plugins.noice.enable = true;


  # snippets
  plugins.luasnip.enable = true;
  plugins.friendly-snippets.enable = true;

  # languages
  plugins.nix.enable = true;

  # maybe in future
  plugins.bufferline.enable = false;
  plugins.nvim-ufo.enable = false;

}
