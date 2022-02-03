{
  description = ''A simple bitarray library for nim.'';
  inputs.src-nimbitarray-0_2_1.flake = false;
  inputs.src-nimbitarray-0_2_1.type = "github";
  inputs.src-nimbitarray-0_2_1.owner = "YesDrX";
  inputs.src-nimbitarray-0_2_1.repo = "bitarray";
  inputs.src-nimbitarray-0_2_1.ref = "refs/tags/0.2.1";
  
  outputs = { self, nixpkgs, src-nimbitarray-0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimbitarray-0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimbitarray-0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}