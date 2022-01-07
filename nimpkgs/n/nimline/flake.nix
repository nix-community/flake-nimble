{
  description = ''
    Wrapper-less C/C++ interop for Nim
  '';
  inputs.src-nimline.url = "https://github.com/fragcolor-xyz/nimline";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
