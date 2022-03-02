{
  description = ''gyaric is a module to encode/decode text to unreadable gyaru's text.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."gyaric-master".type = "github";
  inputs."gyaric-master".owner = "riinr";
  inputs."gyaric-master".repo = "flake-nimble";
  inputs."gyaric-master".ref = "flake-pinning";
  inputs."gyaric-master".dir = "nimpkgs/g/gyaric/master";
  inputs."gyaric-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gyaric-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."gyaric-v1_0_0".type = "github";
  inputs."gyaric-v1_0_0".owner = "riinr";
  inputs."gyaric-v1_0_0".repo = "flake-nimble";
  inputs."gyaric-v1_0_0".ref = "flake-pinning";
  inputs."gyaric-v1_0_0".dir = "nimpkgs/g/gyaric/v1_0_0";
  inputs."gyaric-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gyaric-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."gyaric-v1_0_1".type = "github";
  inputs."gyaric-v1_0_1".owner = "riinr";
  inputs."gyaric-v1_0_1".repo = "flake-nimble";
  inputs."gyaric-v1_0_1".ref = "flake-pinning";
  inputs."gyaric-v1_0_1".dir = "nimpkgs/g/gyaric/v1_0_1";
  inputs."gyaric-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gyaric-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."gyaric-v1_0_2".type = "github";
  inputs."gyaric-v1_0_2".owner = "riinr";
  inputs."gyaric-v1_0_2".repo = "flake-nimble";
  inputs."gyaric-v1_0_2".ref = "flake-pinning";
  inputs."gyaric-v1_0_2".dir = "nimpkgs/g/gyaric/v1_0_2";
  inputs."gyaric-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gyaric-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}