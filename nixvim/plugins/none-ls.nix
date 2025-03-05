{ pkgs, ... }:
{
  programs.nixvim.plugins.none-ls = {
    enable = true;

    sources = {
      diagnostics = {
        codespell.enable = true;
      };
      formatting = {
        shfmt.enable = true;
        nixfmt = {
          enable = true;
          package = pkgs.nixfmt-rfc-style;
        };
      };
    };
  };

  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>fa";
      action = "<cmd>lua vim.lsp.buf.format({async = true})<CR>";
    }
  ];
}
