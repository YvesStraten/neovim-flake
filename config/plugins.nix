{ pkgs, ... }: {
  plugins = {
    barbar = {
      enable = true;
      tabpages = true;
    };
    treesitter = {
      enable = true;
      ensureInstalled = "all";
      disabledLanguages = [
        "latex"
      ];
    };
    which-key.enable = true;

    lualine.enable = true;
    comment-nvim.enable = true;

    tmux-navigator.enable = true;
    indent-blankline.enable = true;

    notify.enable = true;
    nvim-colorizer.enable = true;
    neogit.enable = true;
    nvim-autopairs.enable = true;
    neo-tree = {
      enable = true;
      enableModifiedMarkers = true;
      autoCleanAfterSessionRestore = true;
      closeIfLastWindow = true;
      enableRefreshOnWrite = true;

      window.width = 30;
    };
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
