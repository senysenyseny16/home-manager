{ config, pkgs, lib, ... }:

{
  imports = [ ./shell ./kitty.nix ./nixvim ];

  home.username = "seny";
  home.homeDirectory = "/home/seny";

  home.stateVersion = "24.05";

  home.packages = [
    pkgs.tig
    pkgs.git-cliff
    pkgs.btop
    (pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.home-manager.enable = true;
}
