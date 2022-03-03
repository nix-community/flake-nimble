{
  description = ''Nim implementation of linenoise command line editor'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."noise-master".type = "github";
  inputs."noise-master".owner = "riinr";
  inputs."noise-master".repo = "flake-nimble";
  inputs."noise-master".ref = "flake-pinning";
  inputs."noise-master".dir = "nimpkgs/n/noise/master";
  inputs."noise-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."noise-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."noise-v0_1_14".type = "github";
  inputs."noise-v0_1_14".owner = "riinr";
  inputs."noise-v0_1_14".repo = "flake-nimble";
  inputs."noise-v0_1_14".ref = "flake-pinning";
  inputs."noise-v0_1_14".dir = "nimpkgs/n/noise/v0_1_14";
  inputs."noise-v0_1_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."noise-v0_1_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}