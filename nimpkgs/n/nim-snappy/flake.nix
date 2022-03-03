{
  description = ''Nim implementation of Snappy compression algorithm'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nim-snappy-master".type = "github";
  inputs."nim-snappy-master".owner = "riinr";
  inputs."nim-snappy-master".repo = "flake-nimble";
  inputs."nim-snappy-master".ref = "flake-pinning";
  inputs."nim-snappy-master".dir = "nimpkgs/n/nim-snappy/master";
  inputs."nim-snappy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim-snappy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}