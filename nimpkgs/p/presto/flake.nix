{
  description = ''REST API framework for Nim language'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."presto-master".type = "github";
  inputs."presto-master".owner = "riinr";
  inputs."presto-master".repo = "flake-nimble";
  inputs."presto-master".ref = "flake-pinning";
  inputs."presto-master".dir = "nimpkgs/p/presto/master";
  inputs."presto-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."presto-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}