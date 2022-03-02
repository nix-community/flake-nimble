{
  description = ''library for generating PDF files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimpdf-master".type = "github";
  inputs."nimpdf-master".owner = "riinr";
  inputs."nimpdf-master".repo = "flake-nimble";
  inputs."nimpdf-master".ref = "flake-pinning";
  inputs."nimpdf-master".dir = "nimpkgs/n/nimpdf/master";
  inputs."nimpdf-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpdf-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}