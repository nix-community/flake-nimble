{
  description = ''A performant and scalable HTTP server.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."httpbeast-master".type = "github";
  inputs."httpbeast-master".owner = "riinr";
  inputs."httpbeast-master".repo = "flake-nimble";
  inputs."httpbeast-master".ref = "flake-pinning";
  inputs."httpbeast-master".dir = "nimpkgs/h/httpbeast/master";
  inputs."httpbeast-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpbeast-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."httpbeast-v0_1_0".type = "github";
  inputs."httpbeast-v0_1_0".owner = "riinr";
  inputs."httpbeast-v0_1_0".repo = "flake-nimble";
  inputs."httpbeast-v0_1_0".ref = "flake-pinning";
  inputs."httpbeast-v0_1_0".dir = "nimpkgs/h/httpbeast/v0_1_0";
  inputs."httpbeast-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpbeast-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."httpbeast-v0_2_0".type = "github";
  inputs."httpbeast-v0_2_0".owner = "riinr";
  inputs."httpbeast-v0_2_0".repo = "flake-nimble";
  inputs."httpbeast-v0_2_0".ref = "flake-pinning";
  inputs."httpbeast-v0_2_0".dir = "nimpkgs/h/httpbeast/v0_2_0";
  inputs."httpbeast-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpbeast-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."httpbeast-v0_2_1".type = "github";
  inputs."httpbeast-v0_2_1".owner = "riinr";
  inputs."httpbeast-v0_2_1".repo = "flake-nimble";
  inputs."httpbeast-v0_2_1".ref = "flake-pinning";
  inputs."httpbeast-v0_2_1".dir = "nimpkgs/h/httpbeast/v0_2_1";
  inputs."httpbeast-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpbeast-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."httpbeast-v0_2_2".type = "github";
  inputs."httpbeast-v0_2_2".owner = "riinr";
  inputs."httpbeast-v0_2_2".repo = "flake-nimble";
  inputs."httpbeast-v0_2_2".ref = "flake-pinning";
  inputs."httpbeast-v0_2_2".dir = "nimpkgs/h/httpbeast/v0_2_2";
  inputs."httpbeast-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpbeast-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."httpbeast-v0_3_0".type = "github";
  inputs."httpbeast-v0_3_0".owner = "riinr";
  inputs."httpbeast-v0_3_0".repo = "flake-nimble";
  inputs."httpbeast-v0_3_0".ref = "flake-pinning";
  inputs."httpbeast-v0_3_0".dir = "nimpkgs/h/httpbeast/v0_3_0";
  inputs."httpbeast-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpbeast-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."httpbeast-v0_4_0".type = "github";
  inputs."httpbeast-v0_4_0".owner = "riinr";
  inputs."httpbeast-v0_4_0".repo = "flake-nimble";
  inputs."httpbeast-v0_4_0".ref = "flake-pinning";
  inputs."httpbeast-v0_4_0".dir = "nimpkgs/h/httpbeast/v0_4_0";
  inputs."httpbeast-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpbeast-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}