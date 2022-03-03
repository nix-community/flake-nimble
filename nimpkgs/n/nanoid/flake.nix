{
  description = ''The Nim implementation of NanoID'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nanoid-master".type = "github";
  inputs."nanoid-master".owner = "riinr";
  inputs."nanoid-master".repo = "flake-nimble";
  inputs."nanoid-master".ref = "flake-pinning";
  inputs."nanoid-master".dir = "nimpkgs/n/nanoid/master";
  inputs."nanoid-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nanoid-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nanoid-v0_1_0".type = "github";
  inputs."nanoid-v0_1_0".owner = "riinr";
  inputs."nanoid-v0_1_0".repo = "flake-nimble";
  inputs."nanoid-v0_1_0".ref = "flake-pinning";
  inputs."nanoid-v0_1_0".dir = "nimpkgs/n/nanoid/v0_1_0";
  inputs."nanoid-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nanoid-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nanoid-v0_2_0".type = "github";
  inputs."nanoid-v0_2_0".owner = "riinr";
  inputs."nanoid-v0_2_0".repo = "flake-nimble";
  inputs."nanoid-v0_2_0".ref = "flake-pinning";
  inputs."nanoid-v0_2_0".dir = "nimpkgs/n/nanoid/v0_2_0";
  inputs."nanoid-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nanoid-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}