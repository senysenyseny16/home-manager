{ pkgs, ... }:

{
  home.packages = [
    pkgs.fzf
  ];
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
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
  };
}
