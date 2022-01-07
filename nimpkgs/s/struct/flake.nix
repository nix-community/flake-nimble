{
  description = ''
    Python-like 'struct' for Nim
  '';
  inputs.src-struct.url = "https://github.com/OpenSystemsLab/struct.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
