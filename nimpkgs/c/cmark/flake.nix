{
  description = ''libcmark wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."cmark-master".type = "github";
  inputs."cmark-master".owner = "riinr";
  inputs."cmark-master".repo = "flake-nimble";
  inputs."cmark-master".ref = "flake-pinning";
  inputs."cmark-master".dir = "nimpkgs/c/cmark/master";
  inputs."cmark-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cmark-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."cmark-0_1_0".type = "github";
  inputs."cmark-0_1_0".owner = "riinr";
  inputs."cmark-0_1_0".repo = "flake-nimble";
  inputs."cmark-0_1_0".ref = "flake-pinning";
  inputs."cmark-0_1_0".dir = "nimpkgs/c/cmark/0_1_0";
  inputs."cmark-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cmark-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}