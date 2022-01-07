{
  description = ''
    3DES native library for Nim
  '';
  inputs.src-des.url = "https://github.com/LucaWolf/des.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
