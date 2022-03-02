{
  description = ''Use a Structure of Arrays like an Array of Structures'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."aossoa-master".type = "github";
  inputs."aossoa-master".owner = "riinr";
  inputs."aossoa-master".repo = "flake-nimble";
  inputs."aossoa-master".ref = "flake-pinning";
  inputs."aossoa-master".dir = "nimpkgs/a/aossoa/master";
  inputs."aossoa-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aossoa-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."aossoa-v0_1_0".type = "github";
  inputs."aossoa-v0_1_0".owner = "riinr";
  inputs."aossoa-v0_1_0".repo = "flake-nimble";
  inputs."aossoa-v0_1_0".ref = "flake-pinning";
  inputs."aossoa-v0_1_0".dir = "nimpkgs/a/aossoa/v0_1_0";
  inputs."aossoa-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aossoa-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}