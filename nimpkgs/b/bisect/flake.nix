{
  description = ''Bisection algorithms ported from Python'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."bisect-master".type = "github";
  inputs."bisect-master".owner = "riinr";
  inputs."bisect-master".repo = "flake-nimble";
  inputs."bisect-master".ref = "flake-pinning";
  inputs."bisect-master".dir = "nimpkgs/b/bisect/master";
  inputs."bisect-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bisect-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bisect-v0_1_1".type = "github";
  inputs."bisect-v0_1_1".owner = "riinr";
  inputs."bisect-v0_1_1".repo = "flake-nimble";
  inputs."bisect-v0_1_1".ref = "flake-pinning";
  inputs."bisect-v0_1_1".dir = "nimpkgs/b/bisect/v0_1_1";
  inputs."bisect-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bisect-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}