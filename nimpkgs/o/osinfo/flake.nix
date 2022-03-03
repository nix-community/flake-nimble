{
  description = ''Modules providing information about the OS.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."osinfo-master".type = "github";
  inputs."osinfo-master".owner = "riinr";
  inputs."osinfo-master".repo = "flake-nimble";
  inputs."osinfo-master".ref = "flake-pinning";
  inputs."osinfo-master".dir = "nimpkgs/o/osinfo/master";
  inputs."osinfo-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."osinfo-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."osinfo-v0_2_0".type = "github";
  inputs."osinfo-v0_2_0".owner = "riinr";
  inputs."osinfo-v0_2_0".repo = "flake-nimble";
  inputs."osinfo-v0_2_0".ref = "flake-pinning";
  inputs."osinfo-v0_2_0".dir = "nimpkgs/o/osinfo/v0_2_0";
  inputs."osinfo-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."osinfo-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."osinfo-v0_3_1".type = "github";
  inputs."osinfo-v0_3_1".owner = "riinr";
  inputs."osinfo-v0_3_1".repo = "flake-nimble";
  inputs."osinfo-v0_3_1".ref = "flake-pinning";
  inputs."osinfo-v0_3_1".dir = "nimpkgs/o/osinfo/v0_3_1";
  inputs."osinfo-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."osinfo-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."osinfo-v0_3_2".type = "github";
  inputs."osinfo-v0_3_2".owner = "riinr";
  inputs."osinfo-v0_3_2".repo = "flake-nimble";
  inputs."osinfo-v0_3_2".ref = "flake-pinning";
  inputs."osinfo-v0_3_2".dir = "nimpkgs/o/osinfo/v0_3_2";
  inputs."osinfo-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."osinfo-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}