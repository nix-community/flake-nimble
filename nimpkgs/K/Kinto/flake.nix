{
  description = ''
    Kinto Client for Nim
  '';
  inputs.src-Kinto.url = "https://github.com/OpenSystemsLab/kinto.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
