{
  imports = [
    ./plugins.nix
    ./keymaps/keymaps.nix
  ];

  config = {
    options = {
      number = true;
      relativenumber = true;
      conceallevel = 2;
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

    globals = {
      tex_conceal = "abdgms";
      tex_superscripts = "[0-9a-zA-W.,:;+-<>/()=]";
      tex_subscripts = "[0-9aehijklmnoprstuvx,+-/().]";
      tex_conceal_frac = 1;
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
