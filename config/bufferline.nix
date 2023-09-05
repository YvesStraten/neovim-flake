{
  maps.normal = 
  {

  leader = " ";
  };


  plugins.barbar = {
    enable = true;
  };
  plugins.neo-tree.enable = true;
  plugins.telescope = {
  enable = true;
  keymaps = {
  "<leader>ff" = {
  action = "find_files";
  desc = "Telescope find files";
  };
  };
  };
  
  plugins.treesitter.enable = true;
  plugins.which-key.enable = true;
  
  plugins.lualine.enable = true;
  colorschemes.catppuccin.enable = true;

  plugins.luasnip.enable = true;
  plugins.tmux-navigator.enable = true;

  plugins.nvim-cmp.enable = true;
  plugins.nvim-cmp.autoEnableSources = true;

  plugins.nvim-cmp.sources = [
   {name = "buffer"; }
   {name = "path"; }
  ];

  plugins.neogit.enable = true;
  plugins.nvim-autopairs.enable = true;
  plugins.chadtree.enable = true;
  plugins.lspsaga.enable = true;
  plugins.undotree.enable = true;
  plugins.vimtex.enable = true;
  plugins.lsp.enable = true;

}
