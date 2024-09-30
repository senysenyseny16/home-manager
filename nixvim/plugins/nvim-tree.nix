{
  programs.nixvim = {
    plugins.nvim-tree.enable = true;

    keymaps = [
      {
        mode = "n";
        key = "<c-n>";
        action = "<cmd>NvimTreeToggle<CR>";
      }
    ];
  };
}
