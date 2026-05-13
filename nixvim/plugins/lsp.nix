{ pkgs, ... }:
{
  programs.nixvim.plugins.lspkind.enable = true;
  programs.nixvim.plugins.lsp = {
    enable = true;

    servers = {
      pyright.enable = true;
      ruff.enable = true;
      hls = {
        enable = true;
        installGhc = true;
      };
      rust_analyzer = {
        enable = true;
        installCargo = true;
        installRustc = true;
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

    keymaps.extra = [
      {
        key = "<leader>fa";
        action.__raw = ''
          function()
            vim.lsp.buf.format { async = false }
            vim.lsp.buf.code_action {
              context = { only = { 'source.fixAll.ruff' } },
              apply = true,
            }
          end
        '';
      }
    ];
  };
  home.packages = with pkgs; [
    rustfmt
  ];
}
