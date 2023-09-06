{
  plugins = {
    luasnip = {
      enable = true;
      fromVscode = [{ }];
    };
    lspkind = {
      enable = true;
      cmp.enable = true;
    };
    cmp-nvim-lsp.enable = true;
    cmp-nvim-lsp-document-symbol.enable = true;
    cmp-nvim-lsp-signature-help.enable = true;
    cmp-path.enable = true;
    cmp_luasnip.enable = true;
    cmp-nvim-lua.enable = true;

    nvim-cmp = {
      enable = true;
      snippet.expand = "luasnip";

      sources = [
        { name = "nvim_lsp"; }
        { name = "nvim_lsp_document_symbol"; }
        { name = "nvim_lsp_signature_help"; }
        { name = "luasnip"; }
        { name = "buffer"; }
        { name = "path"; }
      ];

      window = {
        completion = {
          winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:PmenuSel";
        };
      };
      formatting = {
        fields = [ "abbr" "kind" "menu" ];
      };

      mapping = {
        "<Tab>" = {
          modes = [ "i" "s" ];
          action = ''
            function(fallback)
              if cmp.visible() then
                cmp.select_next_item()
              -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable()
              -- they way you will only jump inside the snippet region
              elseif luasnip.expand_or_locally_jumpable() then
                luasnip.expand_or_jump()
              elseif has_words_before() then
                cmp.complete()
              else
                fallback()
              end
            end
          '';
        };
        "<S-Tab>" = {
          modes = [ "i" "s" ];
          action = ''
            function(fallback)
              if cmp.visible() then
                cmp.select_prev_item()
              elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
              else
                fallback()
              end
            end
          '';
        };
        "<CR>" = "cmp.mapping.confirm({ select = true })";
        "<C-Space>" = "cmp.mapping.complete()";
        "<C-e>" = "cmp.mapping.abort()";
        "<Up>" = "cmp.mapping.select_prev_item()";
        "<Down>" = "cmp.mapping.select_next_item()";
        "<C-p>" = "cmp.mapping.select_prev_item()";
        "<C-n>" = "cmp.mapping.select_next_item()";
        "<C-u>" = "cmp.mapping.scroll_docs(-4)";
        "<C-d>" = "cmp.mapping.scroll_docs(4)";
      };
    };
  };
}
