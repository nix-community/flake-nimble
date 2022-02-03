{
  description = ''A library to operate serial ports using pure Nim.'';
  inputs.src-serial-v1_1_3.flake = false;
  inputs.src-serial-v1_1_3.type = "github";
  inputs.src-serial-v1_1_3.owner = "euantorano";
  inputs.src-serial-v1_1_3.repo = "serial.nim";
  inputs.src-serial-v1_1_3.ref = "refs/tags/v1.1.3";
  
  outputs = { self, nixpkgs, src-serial-v1_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-serial-v1_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-serial-v1_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}