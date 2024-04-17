{
  plugins.lsp = {
    enable = true;
    keymaps = {
      diagnostic = {
        "<leader>d" = "open_float";
        "[d" = "goto_prev";
        "]d" = "goto_next";
      };
      lspBuf = {
        "gd" = "definition";
        "gD" = "declaration";
        "K" = "hover";
        "gi" = "implementation";
        "<C-k>" = "signature_help";
        "<Leader>cw" = "rename";
        "gr" = "references";
        "<leader>f" = "format";
      };
    };
    servers = {
      bashls.enable = true;
      zls.enable = true;
      pyright.enable = true;
      nil_ls = {
        enable = true;
        settings.formatting.command = [ "nixpkgs-fmt" ];
      };
    };
  };
}
