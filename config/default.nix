{
  # Import all your configuration modules here
  imports = [
    ./base_plugins.nix
    ./options.nix
    ./statusline.nix
    ./treesitter.nix
    ./keymaps.nix
  ];
  colorschemes.kanagawa.enable = true;
  opts.termguicolors = true;
  clipboard.register = "unnamedplus";
}
