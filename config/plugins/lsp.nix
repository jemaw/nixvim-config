{

  plugins.lsp = {
    enable = true;
    inlayHints = true;
    keymaps = {
      diagnostic = {
        "<leader>d" = "open_float";
      };
      lspBuf = {
        "gd" = "definition";
        "gD" = "declaration";
        "gi" = "implementation";
        "<C-k>" = "signature_help";
        "<Leader>cw" = "rename";
        "<F2>" = "rename";
        "grr" = "references";
      };
    };
    servers = {
      bashls.enable = true;
      zls.enable = true;
      pyright.enable = true;
      hls = {
        enable = true;
        installGhc = true;
      };
      nil_ls.enable = true;
      lua_ls = {
        enable = true;
        settings = {
          Lua = {
            runtime.version = "LuaJIT";
            diagnostics.globals = [ "vim" ];
            workspace.checkThirdParty = false;
            telemetry.enable = false;
          };
        };
      };
      taplo.enable = true;
      html.enable = true;
      cssls.enable = true;
      jsonls.enable = true;
      dockerls.enable = true;
      terraformls.enable = true;
      marksman.enable = true;
      yamlls.enable = true;
    };
  };

  plugins.rustaceanvim = {
    enable = true;
    # TODO: something like should be supplied to rust analyzer to unblock
    # "rust-analyzer.server.extraEnv" = {
    #   "CARGO_TARGET_DIR" = "target/rust-analyzer";
    # };
    # "rust-analyzer.check.extraArgs" = [
    #   "--target-dir=target/rust-analyzer"
    # ];
  };

  extraConfigLua = ''
    vim.keymap.set("n", "<Leader>l", function()
      vim.diagnostic.enable(not vim.diagnostic.is_enabled())
    end, { silent = true, noremap = true })
    vim.keymap.set("n", "[d", function() vim.diagnostic.jump({ count = -1, float = true }) end, { silent = true })
    vim.keymap.set("n", "]d", function() vim.diagnostic.jump({ count = 1, float = true }) end, { silent = true })
  '';
}
