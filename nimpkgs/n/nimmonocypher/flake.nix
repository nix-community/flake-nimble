{
  description = ''
    monocypher wrapper for Nim
  '';
  inputs.src-nimmonocypher.url = "https://github.com/genotrance/nimmonocypher";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
