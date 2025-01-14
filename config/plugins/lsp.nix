{

  plugins.lsp = {
    enable = true;
    inlayHints = true;
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
        "<F2>" = "rename";
        "gr" = "references";
        "<leader>f" = "format";
      };
    };
    servers = {
      bashls.enable = true;
      zls.enable = true;
      pyright.enable = true;
      hls.enable = true;
      nil_ls = {
        enable = true;
        settings.formatting.command = [ "nixfmt" ];
      };
    };
  };

  plugins.lspkind.enable = true;

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
    -- toggle_diagnostics
    vim.g.diagnostics_visible = true
    function _G.toggle_diagnostics()
    	if vim.g.diagnostics_visible then
    		vim.g.diagnostics_visible = false
    		vim.diagnostic.disable()
    	else
    		vim.g.diagnostics_visible = true
    		vim.diagnostic.enable()
    	end
    end
    vim.keymap.set("n", "<Leader>l", ":call v:lua.toggle_diagnostics()<CR>", {silent = true, noremap=true})
  '';
}
