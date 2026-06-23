{ pkgs, ... }:
{
  extraPackages = with pkgs; [
    nixfmt
    stylua
    shfmt
    prettierd
    ruff
  ];

  plugins.conform-nvim = {
    enable = true;
    settings = {
      formatters_by_ft = {
        nix = [ "nixfmt" ];
        python = [ "ruff_format" ];
        lua = [ "stylua" ];
        bash = [ "shfmt" ];
        sh = [ "shfmt" ];
        javascript = [ "prettierd" ];
        typescript = [ "prettierd" ];
        javascriptreact = [ "prettierd" ];
        typescriptreact = [ "prettierd" ];
        json = [ "prettierd" ];
        yaml = [ "prettierd" ];
        markdown = [ "prettierd" ];
        html = [ "prettierd" ];
        css = [ "prettierd" ];
      };
      format_on_save = {
        timeout_ms = 500;
        lsp_format = "fallback";
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>f";
      action.__raw = ''
        function()
          require('conform').format({ async = true, lsp_format = 'fallback' })
        end
      '';
      options.silent = true;
      options.desc = "Format buffer";
    }
  ];
}
