{
  programs.git = {
    enable = true;
    lfs.enable = true;
    delta.enable = true;

    settings.user.name = "Arseny";
    settings.user.email = "arseny@protonmail.com";

    settings.core.askpass = "";
    settings.push.autoSetupRemote = true;
    settings.credential.helper = "store";
  };
}
