{
  description = ''fast interval overlaps'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."lapper-master".type = "github";
  inputs."lapper-master".owner = "riinr";
  inputs."lapper-master".repo = "flake-nimble";
  inputs."lapper-master".ref = "flake-pinning";
  inputs."lapper-master".dir = "nimpkgs/l/lapper/master";
  inputs."lapper-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lapper-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."lapper-v0_1_7".type = "github";
  inputs."lapper-v0_1_7".owner = "riinr";
  inputs."lapper-v0_1_7".repo = "flake-nimble";
  inputs."lapper-v0_1_7".ref = "flake-pinning";
  inputs."lapper-v0_1_7".dir = "nimpkgs/l/lapper/v0_1_7";
  inputs."lapper-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lapper-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}