{
  description = ''A parser combinator library for easy generation of complex parsers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."combparser-master".type = "github";
  inputs."combparser-master".owner = "riinr";
  inputs."combparser-master".repo = "flake-nimble";
  inputs."combparser-master".ref = "flake-pinning";
  inputs."combparser-master".dir = "nimpkgs/c/combparser/master";
  inputs."combparser-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."combparser-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}