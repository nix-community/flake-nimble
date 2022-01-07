{
  description = ''
    Unsplash API Client for Nim
  '';
  inputs.src-unsplash.url = "https://github.com/juancarlospaco/nim-unsplash";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
