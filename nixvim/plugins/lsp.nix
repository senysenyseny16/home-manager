{
  programs.nixvim.plugins.lspkind.enable = true;
  programs.nixvim.plugins.lsp = {
    enable = true;

    servers = {
      pyright.enable = true;
      hls.enable = true;
      bashls.enable = true;
      yamlls.enable = true;
      nil-ls.enable = true;
    };

    keymaps.lspBuf = {
      gD = "references";
      gd = "definition";
      gi = "implementation";
    };
  };
}
