{
  description = ''
    A simple finite-state machine for @nim-lang
  '';
  inputs.src-fsm.url = "https://github.com/ba0f3/fsm.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
