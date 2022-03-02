{
  description = ''A wrapper for the zip library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."zip-master".type = "github";
  inputs."zip-master".owner = "riinr";
  inputs."zip-master".repo = "flake-nimble";
  inputs."zip-master".ref = "flake-pinning";
  inputs."zip-master".dir = "nimpkgs/z/zip/master";
  inputs."zip-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zip-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."zip-0_3_1".type = "github";
  inputs."zip-0_3_1".owner = "riinr";
  inputs."zip-0_3_1".repo = "flake-nimble";
  inputs."zip-0_3_1".ref = "flake-pinning";
  inputs."zip-0_3_1".dir = "nimpkgs/z/zip/0_3_1";
  inputs."zip-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zip-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}