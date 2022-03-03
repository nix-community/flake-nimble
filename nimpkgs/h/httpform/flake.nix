{
  description = ''Http request form parser'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."httpform-master".type = "github";
  inputs."httpform-master".owner = "riinr";
  inputs."httpform-master".repo = "flake-nimble";
  inputs."httpform-master".ref = "flake-pinning";
  inputs."httpform-master".dir = "nimpkgs/h/httpform/master";
  inputs."httpform-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpform-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."httpform-0_1_0".type = "github";
  inputs."httpform-0_1_0".owner = "riinr";
  inputs."httpform-0_1_0".repo = "flake-nimble";
  inputs."httpform-0_1_0".ref = "flake-pinning";
  inputs."httpform-0_1_0".dir = "nimpkgs/h/httpform/0_1_0";
  inputs."httpform-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpform-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."httpform-0_2_0".type = "github";
  inputs."httpform-0_2_0".owner = "riinr";
  inputs."httpform-0_2_0".repo = "flake-nimble";
  inputs."httpform-0_2_0".ref = "flake-pinning";
  inputs."httpform-0_2_0".dir = "nimpkgs/h/httpform/0_2_0";
  inputs."httpform-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpform-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}