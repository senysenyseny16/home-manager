{
  imports = [
    ./lsp.nix
    ./cmp.nix
    ./none-ls.nix

    ./nvim-tree.nix
    ./telescope.nix
    ./treesitter.nix
    ./trouble.nix

    ./colorscheme.nix
  ];

  programs.nixvim.plugins = {
    nvim-autopairs.enable = true;
    gitsigns.enable = true;

    bufferline.enable = true;
    lualine.enable = true;
    startify.enable = true;
    web-devicons.enable = true;

    markdown-preview.enable = true;
    fidget.enable = true;
  };
}
