{ pkgs, username, ... }:

{
  imports = [
    ./shell
    ./kitty.nix
    ./nixvim
  ];

  home.username = username;
  home.homeDirectory = "/home/${username}";

  home.stateVersion = "24.11";

  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    fastfetch
    tig
    gdu
    duf
    psmisc
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.home-manager.enable = true;
  programs.direnv.enable = true;
  programs.delta.enable = true;
  programs.delta.enableGitIntegration = true;

  catppuccin.flavor = "frappe";
  catppuccin.enable = true;
}
