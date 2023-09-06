{ ... }: {
  globals.mapleader = " ";
  maps = {
    normal = {
      "<tab>" = {
        silent = true;
        action = ":BufferNext<CR>";
      };
      "<S-tab>" = {
        silent = true;
        action = ":BufferPrevious<CR>";
      };
      "<leader>ll" = {
        silent = true;
        action = ":VimtexCompile<CR>";
        desc = "Compile latex document";
      };
      "<leader>x" = {
        silent = true;
        action = ":BufferClose<CR>";
        desc = "Close Buffer";
      };
      "<leader>go" = {
        silent = true;
        action = ":Neogit<CR>";
        desc = "Open Neogit";
      };

      "<C-n>" = {
        silent = true;
        remap = true;
        action = ":CHADopen<CR>";
      };

      "<leader>sp" = {
        silent = true;
        action = ":split<CR>";
        desc = "Split horizontally";
      };

      "<leader>vp" = {
        silent = true;
        action = ":vsplit<CR>";
        desc = "Split vertically";
      };

      "<leader>lr" = {
        silent = true;
        action = ":Lspsaga rename<CR>";
        desc = "Rename definition";
      };

      "<leader>lp" = {
        silent = true;
        action = ":Lspsaga preview_definition<CR>";
        desc = "Previews definition";
      };
      "<leader>lf" = {
        silent = true;
        action = ":Format<CR>";
        desc = "Formats buffer";
      };
    };
  };
}
