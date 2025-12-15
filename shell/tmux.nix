{
  programs.tmux = {
    enable = true;
    extraConfig = ''
      setw -g mouse on
    '';
  };
}
