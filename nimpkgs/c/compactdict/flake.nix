{
  description = ''A compact dictionary implementation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."compactdict-master".type = "github";
  inputs."compactdict-master".owner = "riinr";
  inputs."compactdict-master".repo = "flake-nimble";
  inputs."compactdict-master".ref = "flake-pinning";
  inputs."compactdict-master".dir = "nimpkgs/c/compactdict/master";
  inputs."compactdict-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compactdict-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}