{
  description = ''Sampling profiler that finds hot paths in your code.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."hottie-master".type = "github";
  inputs."hottie-master".owner = "riinr";
  inputs."hottie-master".repo = "flake-nimble";
  inputs."hottie-master".ref = "flake-pinning";
  inputs."hottie-master".dir = "nimpkgs/h/hottie/master";
  inputs."hottie-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hottie-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}