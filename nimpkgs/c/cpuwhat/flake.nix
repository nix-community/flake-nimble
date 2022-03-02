{
  description = ''Nim utilities for advanced CPU operations: CPU identification, bindings to assorted intrinsics'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."cpuwhat-master".type = "github";
  inputs."cpuwhat-master".owner = "riinr";
  inputs."cpuwhat-master".repo = "flake-nimble";
  inputs."cpuwhat-master".ref = "flake-pinning";
  inputs."cpuwhat-master".dir = "nimpkgs/c/cpuwhat/master";
  inputs."cpuwhat-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cpuwhat-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}