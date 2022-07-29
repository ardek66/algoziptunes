{
  description = "Live algorave setup";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    nix-livecode.url = "github:ardek66/nix-livecode";
  };
  
  outputs = { self, nixpkgs, flake-utils, nix-livecode }:
    flake-utils.lib.eachDefaultSystem(system: {
      devShells.default = nix-livecode.devShells.${system}.default;
    });
}
