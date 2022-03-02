{
  description = ''Assembler for runtime code generation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."catnip-main".type = "github";
  inputs."catnip-main".owner = "riinr";
  inputs."catnip-main".repo = "flake-nimble";
  inputs."catnip-main".ref = "flake-pinning";
  inputs."catnip-main".dir = "nimpkgs/c/catnip/main";
  inputs."catnip-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."catnip-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."catnip-0_1_0".type = "github";
  inputs."catnip-0_1_0".owner = "riinr";
  inputs."catnip-0_1_0".repo = "flake-nimble";
  inputs."catnip-0_1_0".ref = "flake-pinning";
  inputs."catnip-0_1_0".dir = "nimpkgs/c/catnip/0_1_0";
  inputs."catnip-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."catnip-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}