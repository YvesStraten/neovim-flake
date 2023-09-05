{
  maps = {
  normal."<leader>go" = {
      silent = true;
      action = "<cmd>Neogit<CR>";
    };

    normal."C-n" = {
      silent = true;
      remap = true;
      action = "<cmd>CHADopen<CR>";
    };
  };
  

  plugins = {
    barbar = {
      enable = true;
    };

    neo-tree.enable = true;
    telescope = {
      enable = true;
      keymaps = {
        "<leader>ff" = {
          action = "find_files";
          desc = "Telescope find files";
        };
      };
    };

    treesitter.enable = true;
    which-key.enable = true;

    lualine.enable = true;

    luasnip.enable = true;
    tmux-navigator.enable = true;

    nvim-cmp.enable = true;
    nvim-cmp.autoEnableSources = true;

    nvim-cmp.sources = [
      {name = "buffer";}
      {name = "path";}
    ];

    neogit.enable = true;
    nvim-autopairs.enable = true;
    chadtree.enable = true;
    lspsaga.enable = true;
    undotree.enable = true;
    vimtex.enable = true;
    lsp.enable = true;
  };

  colorschemes.catppuccin.enable = true;
}
