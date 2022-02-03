{
  description = ''A library to operate serial ports using pure Nim.'';
  inputs.src-serial-v1_1_5.flake = false;
  inputs.src-serial-v1_1_5.type = "github";
  inputs.src-serial-v1_1_5.owner = "euantorano";
  inputs.src-serial-v1_1_5.repo = "serial.nim";
  inputs.src-serial-v1_1_5.ref = "refs/tags/v1.1.5";
  
  outputs = { self, nixpkgs, src-serial-v1_1_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-serial-v1_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-serial-v1_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}