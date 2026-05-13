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
}
