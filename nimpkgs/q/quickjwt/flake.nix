{
  description = ''JSON Web Tokens for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."quickjwt-master".type = "github";
  inputs."quickjwt-master".owner = "riinr";
  inputs."quickjwt-master".repo = "flake-nimble";
  inputs."quickjwt-master".ref = "flake-pinning";
  inputs."quickjwt-master".dir = "nimpkgs/q/quickjwt/master";
  inputs."quickjwt-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."quickjwt-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."quickjwt-0_0_1".type = "github";
  inputs."quickjwt-0_0_1".owner = "riinr";
  inputs."quickjwt-0_0_1".repo = "flake-nimble";
  inputs."quickjwt-0_0_1".ref = "flake-pinning";
  inputs."quickjwt-0_0_1".dir = "nimpkgs/q/quickjwt/0_0_1";
  inputs."quickjwt-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."quickjwt-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."quickjwt-0_2_1".type = "github";
  inputs."quickjwt-0_2_1".owner = "riinr";
  inputs."quickjwt-0_2_1".repo = "flake-nimble";
  inputs."quickjwt-0_2_1".ref = "flake-pinning";
  inputs."quickjwt-0_2_1".dir = "nimpkgs/q/quickjwt/0_2_1";
  inputs."quickjwt-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."quickjwt-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."quickjwt-v0_2_1".type = "github";
  inputs."quickjwt-v0_2_1".owner = "riinr";
  inputs."quickjwt-v0_2_1".repo = "flake-nimble";
  inputs."quickjwt-v0_2_1".ref = "flake-pinning";
  inputs."quickjwt-v0_2_1".dir = "nimpkgs/q/quickjwt/v0_2_1";
  inputs."quickjwt-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."quickjwt-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}