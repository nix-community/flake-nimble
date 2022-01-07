{
  description = ''
    A Nim wrapper for ttmath: big numbers with fixed size
  '';
  inputs.src-ttmath.url = "https://github.com/status-im/nim-ttmath";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
