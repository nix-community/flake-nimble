{
  description = ''Simple ECS implementation for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."tecs-master".type = "github";
  inputs."tecs-master".owner = "riinr";
  inputs."tecs-master".repo = "flake-nimble";
  inputs."tecs-master".ref = "flake-pinning";
  inputs."tecs-master".dir = "nimpkgs/t/tecs/master";
  inputs."tecs-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tecs-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."tecs-v0_1".type = "github";
  inputs."tecs-v0_1".owner = "riinr";
  inputs."tecs-v0_1".repo = "flake-nimble";
  inputs."tecs-v0_1".ref = "flake-pinning";
  inputs."tecs-v0_1".dir = "nimpkgs/t/tecs/v0_1";
  inputs."tecs-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tecs-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}