{
  description = ''itch.io API Client for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."itchio-master".type = "github";
  inputs."itchio-master".owner = "riinr";
  inputs."itchio-master".repo = "flake-nimble";
  inputs."itchio-master".ref = "flake-pinning";
  inputs."itchio-master".dir = "nimpkgs/i/itchio/master";
  inputs."itchio-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."itchio-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}