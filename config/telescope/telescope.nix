{
  plugins.telescope = {
    enable = true;
    keymaps = {
      "<leader>ff" = {
        action = "find_files";
        desc = "Telescope find files";
      };
      "<leader>fg" = {
        action = "live_grep";
        desc = "Live grep files";
      };
    };
  };
}
