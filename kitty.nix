{
  programs.kitty = {
    enable = true;
    font = {
      size = 13;
      name = "JetBrainsMono NF Medium";
    };
    shellIntegration = {
      enableZshIntegration = true;
      mode = "no-cursor";
    };
    settings = {
      cursor_shape = "block";
      cursor_blink_interval = 0;
      copy_on_select = "clipboard";
      enable_audio_bell = false;
    };
  };
}
