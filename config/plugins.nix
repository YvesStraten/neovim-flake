{pkgs, ...}:{
  plugins = {
    barbar = {
      enable = true;
      tabpages = true;
    };

    treesitter.enable = true;
    which-key.enable = true;

    lualine.enable = true;

    luasnip = {
      enable = true;
      fromVscode = [{}];
    };
    cmp-nvim-lsp.enable = true;
    cmp-path.enable = true;
    cmp_luasnip.enable = true;
    cmp-nvim-lua.enable = true;

    tmux-navigator.enable = true;

    nvim-cmp = {
      enable = true;
      snippet.expand = "luasnip";

      sources = [
        {name = "nvim-lsp";}
        {name = "luasnip";}
        {name = "buffer";}
        {name = "path";}
      ];

			window = {
			completion = {
			winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None";
			};
			};
			formatting = {
			fields = ["kind" "abbr" "menu"];
			};

      mapping = {
        "<CR>" = "cmp.mapping.confirm({ select = true })";
        "<Tab>" = {
          modes = ["i" "s"];
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
          modes = ["i" "s"];
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

    neogit.enable = true;
    nvim-autopairs.enable = true;
    chadtree.enable = true;
    undotree.enable = true;
    vimtex.enable = true;
    rainbow-delimiters.enable = true;
  };

  colorschemes.catppuccin.enable = true;
  extraPlugins = with pkgs.vimPlugins; [
   friendly-snippets
   vim-dadbod
   vim-dadbod-ui
   vim-dadbod-completion
  ];
}
