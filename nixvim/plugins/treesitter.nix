{ pkgs, ... }:
{
  programs.nixvim.plugins.treesitter = {
    enable = true;

    settings = {
      auto_install = true;
      highlight.enable = true;
      indent.enable = false;
      incremental_selection.enable = true;
    };
  };

  home.packages = with pkgs; [
    gcc # for template compilation
  ];
}
