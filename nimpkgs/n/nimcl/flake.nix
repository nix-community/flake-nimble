{
  description = ''High level wrapper over OpenCL'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimcl-master".type = "github";
  inputs."nimcl-master".owner = "riinr";
  inputs."nimcl-master".repo = "flake-nimble";
  inputs."nimcl-master".ref = "flake-pinning";
  inputs."nimcl-master".dir = "nimpkgs/n/nimcl/master";
  inputs."nimcl-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcl-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimcl-0_1_1".type = "github";
  inputs."nimcl-0_1_1".owner = "riinr";
  inputs."nimcl-0_1_1".repo = "flake-nimble";
  inputs."nimcl-0_1_1".ref = "flake-pinning";
  inputs."nimcl-0_1_1".dir = "nimpkgs/n/nimcl/0_1_1";
  inputs."nimcl-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcl-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimcl-0_1_2".type = "github";
  inputs."nimcl-0_1_2".owner = "riinr";
  inputs."nimcl-0_1_2".repo = "flake-nimble";
  inputs."nimcl-0_1_2".ref = "flake-pinning";
  inputs."nimcl-0_1_2".dir = "nimpkgs/n/nimcl/0_1_2";
  inputs."nimcl-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcl-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimcl-0_1_3".type = "github";
  inputs."nimcl-0_1_3".owner = "riinr";
  inputs."nimcl-0_1_3".repo = "flake-nimble";
  inputs."nimcl-0_1_3".ref = "flake-pinning";
  inputs."nimcl-0_1_3".dir = "nimpkgs/n/nimcl/0_1_3";
  inputs."nimcl-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcl-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}