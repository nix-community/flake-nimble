{
  description = ''A simple bitarray library for nim.'';
  inputs.src-nimbitarray-master.flake = false;
  inputs.src-nimbitarray-master.type = "github";
  inputs.src-nimbitarray-master.owner = "YesDrX";
  inputs.src-nimbitarray-master.repo = "bitarray";
  inputs.src-nimbitarray-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimbitarray-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimbitarray-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimbitarray-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}