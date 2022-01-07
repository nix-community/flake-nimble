{
  description = ''
    GeoRef Argentina Government MultiSync API Client for Nim
  '';
  inputs.src-georefar.url = "https://github.com/juancarlospaco/nim-georefar";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
