{
  description = ''A client for the Pwned passwords API.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."pwned-master".type = "github";
  inputs."pwned-master".owner = "riinr";
  inputs."pwned-master".repo = "flake-nimble";
  inputs."pwned-master".ref = "flake-pinning";
  inputs."pwned-master".dir = "nimpkgs/p/pwned/master";
  inputs."pwned-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pwned-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."pwned-v0_1_0".type = "github";
  inputs."pwned-v0_1_0".owner = "riinr";
  inputs."pwned-v0_1_0".repo = "flake-nimble";
  inputs."pwned-v0_1_0".ref = "flake-pinning";
  inputs."pwned-v0_1_0".dir = "nimpkgs/p/pwned/v0_1_0";
  inputs."pwned-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pwned-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."pwned-v1_0_0".type = "github";
  inputs."pwned-v1_0_0".owner = "riinr";
  inputs."pwned-v1_0_0".repo = "flake-nimble";
  inputs."pwned-v1_0_0".ref = "flake-pinning";
  inputs."pwned-v1_0_0".dir = "nimpkgs/p/pwned/v1_0_0";
  inputs."pwned-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pwned-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}