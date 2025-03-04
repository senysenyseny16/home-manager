{
  programs.nixvim = {
    plugins.nvim-tree.enable = true;
    plugins.nvim-tree.view.width = 60;

    keymaps = [
      {
        mode = "n";
        key = "<c-n>";
        action = "<cmd>NvimTreeToggle<CR>";
      }
    ];
  };
}
