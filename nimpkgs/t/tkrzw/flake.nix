{
  description = ''Wrappers over the Tkrzw Database Manager C++ library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
    inputs."tkrzw-v0_1_0".type = "github";
  inputs."tkrzw-v0_1_0".owner = "riinr";
  inputs."tkrzw-v0_1_0".repo = "flake-nimble";
  inputs."tkrzw-v0_1_0".ref = "flake-pinning";
  inputs."tkrzw-v0_1_0".dir = "nimpkgs/t/tkrzw/v0_1_0";
  inputs."tkrzw-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tkrzw-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."tkrzw-v0_1_1".type = "github";
  inputs."tkrzw-v0_1_1".owner = "riinr";
  inputs."tkrzw-v0_1_1".repo = "flake-nimble";
  inputs."tkrzw-v0_1_1".ref = "flake-pinning";
  inputs."tkrzw-v0_1_1".dir = "nimpkgs/t/tkrzw/v0_1_1";
  inputs."tkrzw-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tkrzw-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."tkrzw-v0_1_2".type = "github";
  inputs."tkrzw-v0_1_2".owner = "riinr";
  inputs."tkrzw-v0_1_2".repo = "flake-nimble";
  inputs."tkrzw-v0_1_2".ref = "flake-pinning";
  inputs."tkrzw-v0_1_2".dir = "nimpkgs/t/tkrzw/v0_1_2";
  inputs."tkrzw-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tkrzw-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}