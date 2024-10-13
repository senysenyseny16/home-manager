{ pkgs, ... }:

{
  home.packages = [
    pkgs.fzf
    pkgs.any-nix-shell
  ];
  programs.zsh = {
    enable = true;
    syntaxHighlighting.enable = true;
    sessionVariables.ZSH_DISABLE_COMPFIX = true;

    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
        "git-lfs"
        "fzf"
        "tmux"
        "ssh-agent"
        "virtualenv"
        "docker"
        "z"
      ];
      theme = "agnoster";
    };

    initExtra = ''
      any-nix-shell zsh --info-right | source /dev/stdin
    '';
  };
}
