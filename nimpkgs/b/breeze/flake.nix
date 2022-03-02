{
  description = ''A dsl for writing macros in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."breeze-master".type = "github";
  inputs."breeze-master".owner = "riinr";
  inputs."breeze-master".repo = "flake-nimble";
  inputs."breeze-master".ref = "flake-pinning";
  inputs."breeze-master".dir = "nimpkgs/b/breeze/master";
  inputs."breeze-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."breeze-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."breeze-v0_0_4".type = "github";
  inputs."breeze-v0_0_4".owner = "riinr";
  inputs."breeze-v0_0_4".repo = "flake-nimble";
  inputs."breeze-v0_0_4".ref = "flake-pinning";
  inputs."breeze-v0_0_4".dir = "nimpkgs/b/breeze/v0_0_4";
  inputs."breeze-v0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."breeze-v0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}