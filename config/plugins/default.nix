{
  imports = [ 
    ./tree.nix
  ];

  # misc
  plugins.which-key.enable = true;
  plugins.nvim-autopairs.enable = true;
  plugins.comment.enable = true;
  plugins.sleuth.enable = true;
  plugins.gitsigns.enable = true;

  # maybe in future
  plugins.bufferline.enable = false;
  plugins.nvim-ufo.enable = false;

}
