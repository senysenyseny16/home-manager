{
  programs.nixvim.plugins.lspkind.enable = true;
  programs.nixvim.plugins.lsp = {
    enable = true;

    servers = {
      pyright.enable = true;
      hls = {
        enable = true;
        installGhc = false;
      };
      bashls.enable = true;
      yamlls.enable = true;
      nil_ls.enable = true;
    };

    keymaps.lspBuf = {
      gD = "references";
      gd = "definition";
      gi = "implementation";
    };
  };
}
