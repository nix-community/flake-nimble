{
  description = ''
    itch.io API Client for Nim
  '';
  inputs.src-itchio.url = "https://github.com/juancarlospaco/nim-itchio";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
