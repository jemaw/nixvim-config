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
        hash = "sha256-2+ie8X+ssWuDzkW4QztsROA5eDiCIkQIGvTxUsibEK4=";
      };
    })
    (pkgs.vimUtils.buildVimPlugin {
      name = "alabaster-nvim";
      src = pkgs.fetchFromGitHub {
        owner = "p00f";
        repo = "alabaster.nvim";
        rev = "b902c73fabefc13583bfc0c18b28950ea8f6244f";
        hash = "sha256-Rp/nl5dlz55aChrYUL7ir3XtWDFFS99CHS3l3FoCI7c=";
      };
    })
  ];
  extraPackages = with pkgs; [ fd ripgrep ];
  opts.termguicolors = true;
  clipboard.register = "unnamedplus";
}
