{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        tsserver.enable = true;
        tailwindcss.enable = true;
        clangd.enable = true;
        lua-ls.enable = true;
        rnix-lsp.enable = true;
        texlab.enable = true;
      };
    };
    lspkind = {
      enable = true;
      cmp.enable = true;
    };
    lsp-format.enable = true;
    lsp-lines.enable = true;
    lspsaga.enable = true;
    null-ls = {
      enable = true;
      sources = {
        formatting = {
          alejandra.enable = true;
          stylua.enable = true;
          prettier.enable = true;
        };
      };
    };
  };
}
