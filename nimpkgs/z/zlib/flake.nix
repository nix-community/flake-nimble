{
  description = ''zlib wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."zlib-master".type = "github";
  inputs."zlib-master".owner = "riinr";
  inputs."zlib-master".repo = "flake-nimble";
  inputs."zlib-master".ref = "flake-pinning";
  inputs."zlib-master".dir = "nimpkgs/z/zlib/master";
  inputs."zlib-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zlib-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}