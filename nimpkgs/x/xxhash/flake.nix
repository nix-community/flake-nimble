{
  description = ''
    xxhash wrapper for Nim
  '';
  inputs.src-xxhash.url = "https://github.com/OpenSystemsLab/xxhash.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
