{
  pkgs,
  username,
  ...
}:

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
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  catppuccin.flavor = "frappe";
  catppuccin.enable = true;

  programs.home-manager.enable = true;
}
