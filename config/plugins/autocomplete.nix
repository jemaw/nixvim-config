{
  plugins.blink-cmp = {
    enable = true;
    settings = {
      keymap = {
        preset = "enter";
        "<Tab>" = [
          "select_next"
          "snippet_forward"
          "fallback"
        ];
        "<S-Tab>" = [
          "select_prev"
          "snippet_backward"
          "fallback"
        ];
      };
      completion = {
        list.selection.preselect = false;
        menu.border = "rounded";
        documentation = {
          auto_show = true;
          window.border = "rounded";
        };
      };
      signature.enabled = true;
      sources = {
        default = [
          "lsp"
          "path"
          "snippets"
          "buffer"
        ];
        providers = {
          lsp.min_keyword_length = 2;
          path.min_keyword_length = 2;
          snippets.min_keyword_length = 2;
          buffer.min_keyword_length = 2;
        };
      };
      cmdline = {
        sources = [
          "cmdline"
          "path"
        ];
      };
    };
  };
}
