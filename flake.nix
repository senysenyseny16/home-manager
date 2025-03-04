{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
      url = "github:nix-community/nixvim";
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
