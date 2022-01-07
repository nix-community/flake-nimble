{
  description = ''
    meowhash wrapper for Nim
  '';
  inputs.src-meow.url = "https://github.com/disruptek/meow";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
