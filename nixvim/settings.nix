{
  programs.nixvim = {

    opts = {
      tabstop = 4;
      shiftwidth = 4;
      softtabstop = 4;
      colorcolumn = "120";
      expandtab = true;
      number = true;
      wrap = false;
      nrformats = "";
      mouse = "a";
      laststatus = 3;
      cursorline = true;
    };

    files = {
      "ftplugin/nix.lua" = {
        opts = {
          shiftwidth = 2;
          tabstop = 2;
          softtabstop = 2;
        };
      };
      "ftplugin/haskell.lua" = {
        opts = {
          shiftwidth = 2;
          tabstop = 2;
          softtabstop = 2;
        };
      };
    };
  };
}
