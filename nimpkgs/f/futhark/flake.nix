{
  description = ''
    Zero-wrapping C imports in Nim
  '';
  inputs.src-futhark.url = "https://github.com/PMunch/futhark";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
