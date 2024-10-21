{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    zig.url = "github:mitchellh/zig-overlay";
  };

  outputs = { self, zig, nixpkgs, ... }@inputs:
  {
    nixosConfigurations.default = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs;};
      modules = [
        ./hosts/default/configuration.nix
        inputs.home-manager.nixosModules.default
        {nixpkgs.overlays = [zig.overlays.default];}
      ];
    };
  };
}
