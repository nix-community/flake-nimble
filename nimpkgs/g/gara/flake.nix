{
  description = ''A pattern matching library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."gara-master".type = "github";
  inputs."gara-master".owner = "riinr";
  inputs."gara-master".repo = "flake-nimble";
  inputs."gara-master".ref = "flake-pinning";
  inputs."gara-master".dir = "nimpkgs/g/gara/master";
  inputs."gara-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gara-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}