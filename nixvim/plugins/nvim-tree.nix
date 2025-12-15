{
  programs.nixvim = {
    plugins.nvim-tree.enable = true;
    plugins.nvim-tree.settings.view.width = 60;

    keymaps = [
      {
        mode = "n";
        key = "<c-n>";
        action = "<cmd>NvimTreeToggle<CR>";
      }
    ];
  };
}
