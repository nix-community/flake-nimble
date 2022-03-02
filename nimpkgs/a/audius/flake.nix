{
  description = ''Audius is a simple client library for interacting with the Audius free API.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."audius-master".type = "github";
  inputs."audius-master".owner = "riinr";
  inputs."audius-master".repo = "flake-nimble";
  inputs."audius-master".ref = "flake-pinning";
  inputs."audius-master".dir = "nimpkgs/a/audius/master";
  inputs."audius-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."audius-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."audius-v0_1_0".type = "github";
  inputs."audius-v0_1_0".owner = "riinr";
  inputs."audius-v0_1_0".repo = "flake-nimble";
  inputs."audius-v0_1_0".ref = "flake-pinning";
  inputs."audius-v0_1_0".dir = "nimpkgs/a/audius/v0_1_0";
  inputs."audius-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."audius-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."audius-v0_1_1".type = "github";
  inputs."audius-v0_1_1".owner = "riinr";
  inputs."audius-v0_1_1".repo = "flake-nimble";
  inputs."audius-v0_1_1".ref = "flake-pinning";
  inputs."audius-v0_1_1".dir = "nimpkgs/a/audius/v0_1_1";
  inputs."audius-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."audius-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."audius-v0_1_2".type = "github";
  inputs."audius-v0_1_2".owner = "riinr";
  inputs."audius-v0_1_2".repo = "flake-nimble";
  inputs."audius-v0_1_2".ref = "flake-pinning";
  inputs."audius-v0_1_2".dir = "nimpkgs/a/audius/v0_1_2";
  inputs."audius-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."audius-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}