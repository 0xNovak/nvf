{
  description = "nvf flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    nvf,
    ...
  }: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};

    _conf = nvf.lib.neovimConfiguration {
      inherit pkgs;
      modules = [
        ./plugins
        ./lsp
        ./editor.nix
        ./keymaps
      ];
    };
  in {
    packages.${system}.default = _conf.neovim;
    apps.${system}.default = {
      type = "app";
      program = "${_conf.neovim}/bin/nvim";
    };
  };
}
