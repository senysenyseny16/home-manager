{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
      url = "github:nix-community/nixvim/nixos-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    catppuccin = {
      url = "github:catppuccin/nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      nixpkgs,
      home-manager,
      nixvim,
      catppuccin,
      ...
    }:
    let
      system = "x86_64-linux";
      username = "seny";
    in
    {
      homeConfigurations."${username}" = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs { inherit system; };

        modules = [
          ./home.nix
          nixvim.homeManagerModules.nixvim
          catppuccin.homeManagerModules.catppuccin
        ];
        extraSpecialArgs = { inherit username; };
      };
    };
}
