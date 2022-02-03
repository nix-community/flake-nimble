{
  description = ''A library to operate serial ports using pure Nim.'';
  inputs.src-serial-v1_1_1.flake = false;
  inputs.src-serial-v1_1_1.type = "github";
  inputs.src-serial-v1_1_1.owner = "euantorano";
  inputs.src-serial-v1_1_1.repo = "serial.nim";
  inputs.src-serial-v1_1_1.ref = "refs/tags/v1.1.1";
  
  outputs = { self, nixpkgs, src-serial-v1_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-serial-v1_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-serial-v1_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}