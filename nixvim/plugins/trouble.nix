{
  programs.nixvim = {
    plugins.trouble.enable = true;

    keymaps = [
      {
        mode = "n";
        key = "<leader>ts";
        action = "<cmd>Trouble symbols toggle focus=true<cr>";
      }
      {
        mode = "n";
        key = "<leader>td";
        action = "<cmd>Trouble diagnostics toggle focus=true<cr>";
      }
    ];
  };
}
