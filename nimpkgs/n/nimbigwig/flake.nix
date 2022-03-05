{
  description = ''libBigWig wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimbigwig-master".type = "github";
  inputs."nimbigwig-master".owner = "riinr";
  inputs."nimbigwig-master".repo = "flake-nimble";
  inputs."nimbigwig-master".ref = "flake-pinning";
  inputs."nimbigwig-master".dir = "nimpkgs/n/nimbigwig/master";
  inputs."nimbigwig-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbigwig-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimbigwig-v0_1_1".type = "github";
  inputs."nimbigwig-v0_1_1".owner = "riinr";
  inputs."nimbigwig-v0_1_1".repo = "flake-nimble";
  inputs."nimbigwig-v0_1_1".ref = "flake-pinning";
  inputs."nimbigwig-v0_1_1".dir = "nimpkgs/n/nimbigwig/v0_1_1";
  inputs."nimbigwig-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbigwig-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimbigwig-v0_1_2".type = "github";
  inputs."nimbigwig-v0_1_2".owner = "riinr";
  inputs."nimbigwig-v0_1_2".repo = "flake-nimble";
  inputs."nimbigwig-v0_1_2".ref = "flake-pinning";
  inputs."nimbigwig-v0_1_2".dir = "nimpkgs/n/nimbigwig/v0_1_2";
  inputs."nimbigwig-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbigwig-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}