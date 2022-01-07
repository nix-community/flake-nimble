{
  description = ''
    PF_RING wrapper for Nim
  '';
  inputs.src-pfring.url = "https://github.com/ba0f3/pfring.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
