{
  description = ''Unroll for-loops at compile-time.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."unrolled-master".type = "github";
  inputs."unrolled-master".owner = "riinr";
  inputs."unrolled-master".repo = "flake-nimble";
  inputs."unrolled-master".ref = "flake-pinning";
  inputs."unrolled-master".dir = "nimpkgs/u/unrolled/master";
  inputs."unrolled-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unrolled-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."unrolled-v0_1-alpha".type = "github";
  inputs."unrolled-v0_1-alpha".owner = "riinr";
  inputs."unrolled-v0_1-alpha".repo = "flake-nimble";
  inputs."unrolled-v0_1-alpha".ref = "flake-pinning";
  inputs."unrolled-v0_1-alpha".dir = "nimpkgs/u/unrolled/v0_1-alpha";
  inputs."unrolled-v0_1-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unrolled-v0_1-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}