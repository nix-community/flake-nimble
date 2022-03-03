{
  description = ''Helpers for supporting and simplifying import of symbols from C into Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."importc_helpers-master".type = "github";
  inputs."importc_helpers-master".owner = "riinr";
  inputs."importc_helpers-master".repo = "flake-nimble";
  inputs."importc_helpers-master".ref = "flake-pinning";
  inputs."importc_helpers-master".dir = "nimpkgs/i/importc_helpers/master";
  inputs."importc_helpers-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."importc_helpers-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}