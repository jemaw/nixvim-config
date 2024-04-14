{
  plugins.cmp = {
    enable = true;
    cmdline = {
      "/" = {
        mapping.__raw = "cmp.mapping.preset.cmdline()";
        sources = [{ name = "buffer"; }];
      };
      ":" = {
        mapping.__raw = "cmp.mapping.preset.cmdline()";
        sources = [
          { name = "buffer"; }
          { name = "cmdline"; }
        ];
      };
    };
    settings = {
      sources = [
        { name = "nvim_lsp"; }
        { name = "buffer"; }
        { name = "nvim_lua"; }
        { name = "nvim_lsp_signature_help"; }
        { name = "luasnip"; }
        { name = "path"; }
        { name = "cmdline"; }
        { name = "cmp-zsh"; }
      ];

      mapping = {
        "<cr>" = "cmp.mapping.confirm({ select = false })";
        "<Tab>" = "cmp.mapping.select_next_item()";
        # somehow these do not work, maybe we need something with raw
        # "<Tab>" = 
        #   ''cmp.mapping(function(fallback)
        #     local luasnip = require('luasnip')
        #     if cmp.visible() then
        #         cmp.select_next_item()
        #     elseif luasnip.expand_or_jumpable() then
        #         luasnip.expand_or_jump()
        #     elseif has_words_before() then
        #         cmp.complete()
        #     else
        #         fallback()
        #     end
        #   end, { "i", "s" })
        #   '';
        # modes = [ "i" "s" ];
        # };
        #       "<S-Tab>" = ''cmp.mapping(function(fallback)
        #           local luasnip = require('luasnip')
        # 	if cmp.visible() then
        # 		cmp.select_prev_item()
        # 	elseif luasnip.jumpable(-1) then
        # 		luasnip.jump(-1)
        # 	else
        # 		fallback()
        # 	end
        # end, { "i", "s" })'';
        "<C-u>" = "cmp.mapping.scroll_docs(-4)";
        "<C-d>" = "cmp.mapping.scroll_docs(4)";
        "<Up>" = "cmp.mapping.select_prev_item()";
        "<Down>" = "cmp.mapping.select_next_item()";

        "<C-p>" = "cmp.mapping.select_prev_item()";
        "<C-n>" = "cmp.mapping.select_next_item()";
      };

      snippet.expand = ''
        function(args)
          require('luasnip').lsp_expand(args.body)
        end
      '';

      # needs some fiddling with the colorscheme
      # window = {
      #   completion.border = "rounded";
      #   documentation.border = "rounded";
      # };
    };


    # cmp.enable = true;
    # cmp_luasnip.enable = true;
    # cmp-buffer.enable = true;
    # cmp-cmdline.enable = true;
    # cmp-path.enable = true;
    # cmp-nvim-lsp.enable = true;
    # cmp-nvim-lsp-signature-help.enable = true;

  };

}
