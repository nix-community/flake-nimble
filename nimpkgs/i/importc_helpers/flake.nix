{
  description = ''
    Helpers for supporting and simplifying import of symbols from C into Nim
  '';
  inputs.src-importc_helpers.url = "https://github.com/fredrikhr/nim-importc-helpers.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
