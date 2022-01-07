{
  description = ''
    Small, dependency-free, fast Nim package (and CLI tool) for removing tracking fields from URLs.
  '';
  inputs.src-unalix.url = "https://github.com/AmanoTeam/Unalix-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
