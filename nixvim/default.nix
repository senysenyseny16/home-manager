{
  imports = [ ./settings.nix ./plugins ];

  programs.nixvim.enable = true;
  programs.nixvim.defaultEditor = true;
}
