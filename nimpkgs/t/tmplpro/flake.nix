{
  description = ''Text template processor, basic capabilities'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."tmplpro-master".type = "github";
  inputs."tmplpro-master".owner = "riinr";
  inputs."tmplpro-master".repo = "flake-nimble";
  inputs."tmplpro-master".ref = "flake-pinning";
  inputs."tmplpro-master".dir = "nimpkgs/t/tmplpro/master";
  inputs."tmplpro-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tmplpro-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."tmplpro-unstable".type = "github";
  inputs."tmplpro-unstable".owner = "riinr";
  inputs."tmplpro-unstable".repo = "flake-nimble";
  inputs."tmplpro-unstable".ref = "flake-pinning";
  inputs."tmplpro-unstable".dir = "nimpkgs/t/tmplpro/unstable";
  inputs."tmplpro-unstable".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tmplpro-unstable".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."tmplpro-v0_1_0".type = "github";
  inputs."tmplpro-v0_1_0".owner = "riinr";
  inputs."tmplpro-v0_1_0".repo = "flake-nimble";
  inputs."tmplpro-v0_1_0".ref = "flake-pinning";
  inputs."tmplpro-v0_1_0".dir = "nimpkgs/t/tmplpro/v0_1_0";
  inputs."tmplpro-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tmplpro-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."tmplpro-v0_1_1".type = "github";
  inputs."tmplpro-v0_1_1".owner = "riinr";
  inputs."tmplpro-v0_1_1".repo = "flake-nimble";
  inputs."tmplpro-v0_1_1".ref = "flake-pinning";
  inputs."tmplpro-v0_1_1".dir = "nimpkgs/t/tmplpro/v0_1_1";
  inputs."tmplpro-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tmplpro-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."tmplpro-v0_1_2".type = "github";
  inputs."tmplpro-v0_1_2".owner = "riinr";
  inputs."tmplpro-v0_1_2".repo = "flake-nimble";
  inputs."tmplpro-v0_1_2".ref = "flake-pinning";
  inputs."tmplpro-v0_1_2".dir = "nimpkgs/t/tmplpro/v0_1_2";
  inputs."tmplpro-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tmplpro-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}