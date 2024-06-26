{ ... }:
{
  imports = [
    ./options.nix
    ./statusline.nix
    ./treesitter.nix
    ./keymaps.nix
    ./plugins
  ];
  colorschemes.catppuccin.enable = true;
  opts.termguicolors = true;
  clipboard.register = "unnamedplus";
}
