{
  description = "A reproducible development environment for an Astro blog";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            # Node.js runtime (Astro recommends v18.17.1 or higher)
            nodejs_22
            
            # Package managers
            pnpm
            yarn
          ];

          shellHook = ''
            fish
          '';
        };
      });
}
