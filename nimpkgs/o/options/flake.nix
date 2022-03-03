{
  description = ''Temporary package to fix broken code in 0.11.2 stable.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."options-master".type = "github";
  inputs."options-master".owner = "riinr";
  inputs."options-master".repo = "flake-nimble";
  inputs."options-master".ref = "flake-pinning";
  inputs."options-master".dir = "nimpkgs/o/options/master";
  inputs."options-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."options-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}