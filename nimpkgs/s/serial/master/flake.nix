{
  description = ''A library to operate serial ports using pure Nim.'';
  inputs.src-serial-master.flake = false;
  inputs.src-serial-master.type = "github";
  inputs.src-serial-master.owner = "euantorano";
  inputs.src-serial-master.repo = "serial.nim";
  inputs.src-serial-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-serial-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-serial-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-serial-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}