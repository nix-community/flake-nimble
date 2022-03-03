{
  description = ''Old Win API library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."oldwinapi-master".type = "github";
  inputs."oldwinapi-master".owner = "riinr";
  inputs."oldwinapi-master".repo = "flake-nimble";
  inputs."oldwinapi-master".ref = "flake-pinning";
  inputs."oldwinapi-master".dir = "nimpkgs/o/oldwinapi/master";
  inputs."oldwinapi-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oldwinapi-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."oldwinapi-v2_1_0".type = "github";
  inputs."oldwinapi-v2_1_0".owner = "riinr";
  inputs."oldwinapi-v2_1_0".repo = "flake-nimble";
  inputs."oldwinapi-v2_1_0".ref = "flake-pinning";
  inputs."oldwinapi-v2_1_0".dir = "nimpkgs/o/oldwinapi/v2_1_0";
  inputs."oldwinapi-v2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oldwinapi-v2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}