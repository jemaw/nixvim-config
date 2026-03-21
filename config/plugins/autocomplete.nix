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
        min_keyword_length = 2;
        default = [
          "lsp"
          "path"
          "snippets"
          "buffer"
        ];
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
