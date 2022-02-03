{
  description = ''Algebraic structures and related operations for Nim'';
  inputs.src-emmy-master.flake = false;
  inputs.src-emmy-master.type = "github";
  inputs.src-emmy-master.owner = "andreaferretti";
  inputs.src-emmy-master.repo = "emmy";
  inputs.src-emmy-master.ref = "refs/heads/master";
  
  
  inputs."bigints".url = "path:../../../b/bigints";
  inputs."bigints".type = "github";
  inputs."bigints".owner = "riinr";
  inputs."bigints".repo = "flake-nimble";
  inputs."bigints".ref = "flake-pinning";
  inputs."bigints".dir = "nimpkgs/b/bigints";

  
  inputs."stint".url = "path:../../../s/stint";
  inputs."stint".type = "github";
  inputs."stint".owner = "riinr";
  inputs."stint".repo = "flake-nimble";
  inputs."stint".ref = "flake-pinning";
  inputs."stint".dir = "nimpkgs/s/stint";

  outputs = { self, nixpkgs, src-emmy-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-emmy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-emmy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}