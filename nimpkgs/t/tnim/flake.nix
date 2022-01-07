{
  description = ''
    tnim is a Nim REPL - an interactive sandbox for testing Nim code
  '';
  inputs.src-tnim.url = "https://github.com/jlp765/tnim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
