{
  programs.nixvim.plugins.lspkind.enable = true;
  programs.nixvim.plugins.lsp = {
    enable = true;

    servers = {
      pyright.enable = true;
      ruff.enable = true;
      hls = {
        enable = true;
        installGhc = false;
      };
      bashls.enable = true;
      nil_ls.enable = true;
      helm_ls.enable = true;
    };

    keymaps.lspBuf = {
      gD = "references";
      gd = "definition";
      gi = "implementation";
    };
  };

  programs.nixvim.userCommands = {
    Ruff = {
      desc = "ruff";
      command.__raw = ''
        function()
          vim.lsp.buf.code_action {
            context = {                                                     
              only = { 'source.fixAll.ruff' }   
            },  
            apply = true,
          }
          vim.lsp.buf.format { async = true }
        end
      '';
    };
  };
}
