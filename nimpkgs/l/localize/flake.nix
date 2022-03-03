{
  description = ''Compile time localization for applications'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."localize-master".type = "github";
  inputs."localize-master".owner = "riinr";
  inputs."localize-master".repo = "flake-nimble";
  inputs."localize-master".ref = "flake-pinning";
  inputs."localize-master".dir = "nimpkgs/l/localize/master";
  inputs."localize-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."localize-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."localize-0_1".type = "github";
  inputs."localize-0_1".owner = "riinr";
  inputs."localize-0_1".repo = "flake-nimble";
  inputs."localize-0_1".ref = "flake-pinning";
  inputs."localize-0_1".dir = "nimpkgs/l/localize/0_1";
  inputs."localize-0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."localize-0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."localize-0_2".type = "github";
  inputs."localize-0_2".owner = "riinr";
  inputs."localize-0_2".repo = "flake-nimble";
  inputs."localize-0_2".ref = "flake-pinning";
  inputs."localize-0_2".dir = "nimpkgs/l/localize/0_2";
  inputs."localize-0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."localize-0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}