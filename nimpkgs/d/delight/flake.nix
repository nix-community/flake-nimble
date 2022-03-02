{
  description = ''Engine-agnostic library for computing 2D raycasted lights'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."delight-master".type = "github";
  inputs."delight-master".owner = "riinr";
  inputs."delight-master".repo = "flake-nimble";
  inputs."delight-master".ref = "flake-pinning";
  inputs."delight-master".dir = "nimpkgs/d/delight/master";
  inputs."delight-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."delight-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."delight-0_1_0".type = "github";
  inputs."delight-0_1_0".owner = "riinr";
  inputs."delight-0_1_0".repo = "flake-nimble";
  inputs."delight-0_1_0".ref = "flake-pinning";
  inputs."delight-0_1_0".dir = "nimpkgs/d/delight/0_1_0";
  inputs."delight-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."delight-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}