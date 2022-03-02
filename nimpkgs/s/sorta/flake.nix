{
  description = ''Sorted Tables for Nim, based on B-Trees'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."sorta-master".type = "github";
  inputs."sorta-master".owner = "riinr";
  inputs."sorta-master".repo = "flake-nimble";
  inputs."sorta-master".ref = "flake-pinning";
  inputs."sorta-master".dir = "nimpkgs/s/sorta/master";
  inputs."sorta-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sorta-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}