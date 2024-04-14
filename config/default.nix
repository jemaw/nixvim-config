{
  # Import all your configuration modules here
  imports = [
    ./base_plugins.nix
    ./options.nix
    ./statusline.nix
  ];
  colorschemes.kanagawa.enable = true;
  opts.termguicolors = true;
}
