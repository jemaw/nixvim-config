{ lib, pkgs, ... }:
{
  imports = [
    ./options.nix
    ./statusline.nix
    ./treesitter.nix
    ./keymaps.nix
    ./plugins
  ];

  # active colorscheme — switch with :colorscheme
  colorscheme = lib.mkDefault "zenbones";
  extraPlugins = with pkgs.vimPlugins; [
    kanagawa-nvim
    catppuccin-nvim
    oxocarbon-nvim
    kanso-nvim
    zenbones-nvim
    lush-nvim
  ];
  opts.termguicolors = true;
  clipboard.register = "unnamedplus";
}
