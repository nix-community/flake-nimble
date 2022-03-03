{
  description = ''nim tasks apply to git hooks'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."stage-master".type = "github";
  inputs."stage-master".owner = "riinr";
  inputs."stage-master".repo = "flake-nimble";
  inputs."stage-master".ref = "flake-pinning";
  inputs."stage-master".dir = "nimpkgs/s/stage/master";
  inputs."stage-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stage-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."stage-v0_3_5".type = "github";
  inputs."stage-v0_3_5".owner = "riinr";
  inputs."stage-v0_3_5".repo = "flake-nimble";
  inputs."stage-v0_3_5".ref = "flake-pinning";
  inputs."stage-v0_3_5".dir = "nimpkgs/s/stage/v0_3_5";
  inputs."stage-v0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stage-v0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."stage-v0_3_6".type = "github";
  inputs."stage-v0_3_6".owner = "riinr";
  inputs."stage-v0_3_6".repo = "flake-nimble";
  inputs."stage-v0_3_6".ref = "flake-pinning";
  inputs."stage-v0_3_6".dir = "nimpkgs/s/stage/v0_3_6";
  inputs."stage-v0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stage-v0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}