{ pkgs, ... }:
{
  programs.nixvim.plugins.none-ls = {
    enable = true;

    sources = {
      diagnostics = {
        yamllint.enable = true;
        codespell.enable = true;
        pylint = {
          enable = true;
          package = null;
        };
      };
      formatting = {
        yamlfmt.enable = true;
        shfmt.enable = true;
        black.enable = true;
        isort.enable = true;
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
