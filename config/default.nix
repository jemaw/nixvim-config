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
  colorscheme = lib.mkDefault "alabaster";
  extraPlugins = with pkgs.vimPlugins; [
    kanagawa-nvim
    catppuccin-nvim
    kanso-nvim
    zenbones-nvim
    lush-nvim
    modus-themes-nvim
    (pkgs.vimUtils.buildVimPlugin {
      name = "github-monochrome-nvim";
      src = pkgs.fetchFromGitHub {
        owner = "idr4n";
        repo = "github-monochrome.nvim";
        rev = "e77321ecd5a68f020d9c543592e222d7786169bf";
        sha256 = "1bhhkg455wgl384488l271w3kq24dhxl7f25rs1npcdcgzqrxs6v";
      };
    })
    (pkgs.vimUtils.buildVimPlugin {
      name = "alabaster-nvim";
      src = pkgs.fetchFromGitHub {
        owner = "p00f";
        repo = "alabaster.nvim";
        rev = "b902c73fabefc13583bfc0c18b28950ea8f6244f";
        sha256 = "1dr309ddrr9d3m1dyjs565cfsxdgwaz51n0s19d9xkv5jybyg7s6";
      };
    })
  ];
  opts.termguicolors = true;
  clipboard.register = "unnamedplus";
}
