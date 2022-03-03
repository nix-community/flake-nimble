{
  description = ''A Nim wrapper for the Spotify Web API'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."spotify-master".type = "github";
  inputs."spotify-master".owner = "riinr";
  inputs."spotify-master".repo = "flake-nimble";
  inputs."spotify-master".ref = "flake-pinning";
  inputs."spotify-master".dir = "nimpkgs/s/spotify/master";
  inputs."spotify-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spotify-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."spotify-v0_1".type = "github";
  inputs."spotify-v0_1".owner = "riinr";
  inputs."spotify-v0_1".repo = "flake-nimble";
  inputs."spotify-v0_1".ref = "flake-pinning";
  inputs."spotify-v0_1".dir = "nimpkgs/s/spotify/v0_1";
  inputs."spotify-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spotify-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."spotify-v0_1_1".type = "github";
  inputs."spotify-v0_1_1".owner = "riinr";
  inputs."spotify-v0_1_1".repo = "flake-nimble";
  inputs."spotify-v0_1_1".ref = "flake-pinning";
  inputs."spotify-v0_1_1".dir = "nimpkgs/s/spotify/v0_1_1";
  inputs."spotify-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spotify-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}