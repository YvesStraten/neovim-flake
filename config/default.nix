{
  imports = [
    ./plugins.nix
    ./keymaps/keymaps.nix
    ./telescope/telescope.nix
    ./lsp/lsp.nix
    ./lsp/null-ls.nix
    ./lsp/nvim-cmp.nix
  ];

  config = {
    options = {
      number = true;
      relativenumber = true;
      clipboard = {
        register = "unnamedplus";
        providers = {
          wl-copy.enable = true;
          xclip.enable = true;
        };
      };
      tabstop = 2;
      shiftwidth = 2;
    };

    extraConfigLuaPre = ''
      local has_words_before = function()
              unpack = unpack or table.unpack
              local line, col = unpack(vim.api.nvim_win_get_cursor(0))
              return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
            end
        local luasnip = require("luasnip")
    '';
  };
}
