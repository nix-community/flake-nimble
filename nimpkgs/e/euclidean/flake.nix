{
  description = ''Euclidean Division & Euclidean Modulo'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."euclidean-master".type = "github";
  inputs."euclidean-master".owner = "riinr";
  inputs."euclidean-master".repo = "flake-nimble";
  inputs."euclidean-master".ref = "flake-pinning";
  inputs."euclidean-master".dir = "nimpkgs/e/euclidean/master";
  inputs."euclidean-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."euclidean-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}