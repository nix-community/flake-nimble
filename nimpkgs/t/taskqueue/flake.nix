{
  description = ''High precision and high performance task scheduler '';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."taskqueue-master".type = "github";
  inputs."taskqueue-master".owner = "riinr";
  inputs."taskqueue-master".repo = "flake-nimble";
  inputs."taskqueue-master".ref = "flake-pinning";
  inputs."taskqueue-master".dir = "nimpkgs/t/taskqueue/master";
  inputs."taskqueue-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."taskqueue-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."taskqueue-0_1_0".type = "github";
  inputs."taskqueue-0_1_0".owner = "riinr";
  inputs."taskqueue-0_1_0".repo = "flake-nimble";
  inputs."taskqueue-0_1_0".ref = "flake-pinning";
  inputs."taskqueue-0_1_0".dir = "nimpkgs/t/taskqueue/0_1_0";
  inputs."taskqueue-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."taskqueue-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."taskqueue-0_1_1".type = "github";
  inputs."taskqueue-0_1_1".owner = "riinr";
  inputs."taskqueue-0_1_1".repo = "flake-nimble";
  inputs."taskqueue-0_1_1".ref = "flake-pinning";
  inputs."taskqueue-0_1_1".dir = "nimpkgs/t/taskqueue/0_1_1";
  inputs."taskqueue-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."taskqueue-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}