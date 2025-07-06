{
  description = "An Subin's Resume - Typst Document";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            typst
            # Font is already included in the fonts/ directory
          ];

          shellHook = ''
            echo "Resume development environment"
            echo "Available commands:"
            echo "  typst compile src/ko.typ --font-path fonts    # Compile Korean resume"
            echo "  typst compile src/en.typ --font-path fonts    # Compile English resume"
            echo "  typst watch src/ko.typ --font-path fonts      # Watch Korean resume"
            echo "  typst watch src/en.typ --font-path fonts      # Watch English resume"
            echo ""
            echo "Build commands:"
            echo "  nix build .#korean    # Build Korean resume"
            echo "  nix build .#english   # Build English resume"
            echo "  nix build .#all       # Build both resumes"
          '';
        };

        packages = {
          default = self.packages.${system}.all;
          
          korean = pkgs.stdenv.mkDerivation {
            pname = "resume-ko";
            version = "1.0.0";
            src = ./.;

            buildInputs = with pkgs; [ typst ];

            buildPhase = ''
              typst compile src/ko.typ --font-path fonts --root . resume-ko.pdf
            '';

            installPhase = ''
              mkdir -p $out
              cp resume-ko.pdf $out/
            '';
          };

          english = pkgs.stdenv.mkDerivation {
            pname = "resume-en";
            version = "1.0.0";
            src = ./.;

            buildInputs = with pkgs; [ typst ];

            buildPhase = ''
              typst compile src/en.typ --font-path fonts --root . resume-en.pdf
            '';

            installPhase = ''
              mkdir -p $out
              cp resume-en.pdf $out/
            '';
          };

          all = pkgs.stdenv.mkDerivation {
            pname = "resume-all";
            version = "1.0.0";
            src = ./.;

            buildInputs = with pkgs; [ typst ];

            buildPhase = ''
              typst compile src/ko.typ --font-path fonts --root . resume-ko.pdf
              typst compile src/en.typ --font-path fonts --root . resume-en.pdf
            '';

            installPhase = ''
              mkdir -p $out
              cp resume-ko.pdf resume-en.pdf $out/
            '';
          };
        };
      });
}