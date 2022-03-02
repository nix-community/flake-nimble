{
  description = ''A simple bitarray library for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimbitarray-master.flake = false;
  inputs.src-nimbitarray-master.type = "github";
  inputs.src-nimbitarray-master.owner = "YesDrX";
  inputs.src-nimbitarray-master.repo = "bitarray";
  inputs.src-nimbitarray-master.ref = "refs/heads/master";
  inputs.src-nimbitarray-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimbitarray-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimbitarray-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimbitarray-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}