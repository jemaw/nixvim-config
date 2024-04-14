{
  # Import all your configuration modules here
  imports = [
    ./bufferline.nix
    ./options.nix
    ./statusline.nix
  ];
  colorschemes.kanagawa.enable = true;
  opts.termguicolors = true;
}
