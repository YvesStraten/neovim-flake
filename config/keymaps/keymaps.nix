{ ... }: {
  globals.mapleader = " ";
  keymaps = [
    {
      mode = "v";
      key = "J";
      action = ":m '>+1<CR>gv=gv";
    }

    {
      mode = "v";
      key = "K";
      action = ":m '<-2<CR>gv=gv";
    }

    {
      key = "<C-d>";
      action = "<C-d>zz";
    }

    {
      key = "<C-d>";
      action = "<C-u>zz";
    }

    {
      key = "<esc>";
      action = ":nohlsearch<CR>";
    }

    {
      key = "<tab>";
      action = ":BufferNext<CR>";
    }

    {
      key = "<S-tab>";
      action = ":BufferPrevious<CR>";
    }

    {
      key = "<leader>ll";
      action = ":VimtexCompile<CR>";
      options.desc = "Compile latex document";
    }

    {
      key = "<leader>x";
      action = ":BufferClose<CR>";
      options.desc = "Close Buffer";
    }

    {
      key = "<leader>go";
      action = ":Neogit<CR>";
      options.desc = "Open Neogit";
    }

    {
      key = "<C-n>";
      action = ":Neotree toggle<CR>";
    }

    {
      key = "<leader>sp";
      action = ":split<CR>";
      options.desc = "Split horizontally";
    }

    {
      key = "<leader>vp";
      action = ":vsplit<CR>";
      options.desc = "Split vertically";
    }

    {
      key = "<leader>lr";
      action = ":Lspsaga rename<CR>";
      options.desc = "Rename definition";
    }

    {
      key = "<leader>lp";
      action = ":Lspsaga preview_definition<CR>";
      options.desc = "Previews definition";
    }

    {
      key = "<leader>lf";
      action = ":Format<CR>";
      options.desc = "Formats buffer";
    }

    {
      key = "<leader>g";
      action = ":Git";
    }
  ];
}
